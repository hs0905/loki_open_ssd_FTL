#pragma GCC push_options
#pragma GCC optimize ("O0")

//#include "cpl_print.h"
#include "ariane.h"
#include "memory_map.h"
#include <stdint.h>

P_REQ_POOL reqPoolPtr; 					// "request pool" pointer
FREE_REQUEST_QUEUE freeReqQ; 		// "free request queue" pointer
SLICE_REQUEST_QUEUE sliceReqQ; 	// "slice request queue" pointer
BLOCKED_BY_BUFFER_DEPENDENCY_REQUEST_QUEUE blockedByBufDepReqQ;
BLOCKED_BY_ROW_ADDR_DEPENDENCY_REQUEST_QUEUE blockedByRowAddrDepReqQ[USER_CHANNELS][USER_WAYS];
NVME_DMA_REQUEST_QUEUE nvmeDmaReqQ;
NAND_REQUEST_QUEUE nandReqQ[USER_CHANNELS][USER_WAYS];

uint32_t notCompletedNandReqCnt;
uint32_t blockedReqCnt;

void InitReqPool()
{
	int chNo, wayNo, reqSlotTag;

	reqPoolPtr = (P_REQ_POOL) REQ_POOL_ADDR; //revise address
	
	freeReqQ.headReq 	= 0;
	freeReqQ.tailReq 	= AVAILABLE_OUNTSTANDING_REQ_COUNT - 1;

	sliceReqQ.headReq = REQ_SLOT_TAG_NONE;
	sliceReqQ.tailReq = REQ_SLOT_TAG_NONE;
	sliceReqQ.reqCnt 	= 0;

	blockedByBufDepReqQ.headReq = REQ_SLOT_TAG_NONE;
	blockedByBufDepReqQ.tailReq = REQ_SLOT_TAG_NONE;
	blockedByBufDepReqQ.reqCnt 	= 0;

	nvmeDmaReqQ.headReq = REQ_SLOT_TAG_NONE;
	nvmeDmaReqQ.tailReq = REQ_SLOT_TAG_NONE;
	nvmeDmaReqQ.reqCnt 	= 0;
	
	for(chNo = 0; chNo<USER_CHANNELS; chNo++)
		for(wayNo = 0; wayNo<USER_WAYS; wayNo++)
		{
			blockedByRowAddrDepReqQ[chNo][wayNo].headReq = REQ_SLOT_TAG_NONE;
			blockedByRowAddrDepReqQ[chNo][wayNo].tailReq = REQ_SLOT_TAG_NONE;
			blockedByRowAddrDepReqQ[chNo][wayNo].reqCnt = 0;

			nandReqQ[chNo][wayNo].headReq = REQ_SLOT_TAG_NONE;
			nandReqQ[chNo][wayNo].tailReq = REQ_SLOT_TAG_NONE;
			nandReqQ[chNo][wayNo].reqCnt = 0;
		}
				
		for(reqSlotTag = 0; reqSlotTag < AVAILABLE_OUNTSTANDING_REQ_COUNT; reqSlotTag++)
		{
			reqPoolPtr->reqPool[reqSlotTag].reqQueueType 		= REQ_QUEUE_TYPE_FREE;
			reqPoolPtr->reqPool[reqSlotTag].prevBlockingReq = REQ_SLOT_TAG_NONE;
			reqPoolPtr->reqPool[reqSlotTag].nextBlockingReq = REQ_SLOT_TAG_NONE;
			reqPoolPtr->reqPool[reqSlotTag].prevReq 				= reqSlotTag - 1;
			reqPoolPtr->reqPool[reqSlotTag].nextReq 				= reqSlotTag + 1;
		}

		reqPoolPtr->reqPool[0].prevReq = REQ_SLOT_TAG_NONE;
		reqPoolPtr->reqPool[AVAILABLE_OUNTSTANDING_REQ_COUNT - 1].nextReq = REQ_SLOT_TAG_NONE;
		freeReqQ.reqCnt = AVAILABLE_OUNTSTANDING_REQ_COUNT;

		notCompletedNandReqCnt = 0;
		blockedReqCnt = 0;
}

void PutToFreeReqQ(uint32_t reqSlotTag)
{
	if(freeReqQ.tailReq != REQ_SLOT_TAG_NONE)
	{
		reqPoolPtr->reqPool[reqSlotTag].prevReq = freeReqQ.tailReq;
		reqPoolPtr->reqPool[reqSlotTag].nextReq = REQ_SLOT_TAG_NONE;
		reqPoolPtr->reqPool[freeReqQ.tailReq].nextReq = reqSlotTag;
		freeReqQ.tailReq = reqSlotTag;
	}
	else
	{
		reqPoolPtr->reqPool[reqSlotTag].prevReq = REQ_SLOT_TAG_NONE;
		reqPoolPtr->reqPool[reqSlotTag].nextReq = REQ_SLOT_TAG_NONE;
		freeReqQ.headReq = reqSlotTag;
		freeReqQ.tailReq = reqSlotTag;
	}

	reqPoolPtr->reqPool[reqSlotTag].reqQueueType =  REQ_QUEUE_TYPE_FREE;
	freeReqQ.reqCnt++;
}

uint32_t GetFromFreeReqQ()
{
	uint32_t reqSlotTag;

	reqSlotTag = freeReqQ.headReq;

	if(reqSlotTag == REQ_SLOT_TAG_NONE)
	{
		SyncAvailFreeReq();
		reqSlotTag = freeReqQ.headReq;
	}

	if(reqPoolPtr->reqPool[reqSlotTag].nextReq != REQ_SLOT_TAG_NONE)
	{
		freeReqQ.headReq = reqPoolPtr->reqPool[reqSlotTag].nextReq;
		reqPoolPtr->reqPool[reqPoolPtr->reqPool[reqSlotTag].nextReq].prevReq = REQ_SLOT_TAG_NONE;
	}
	else
	{
		freeReqQ.headReq = REQ_SLOT_TAG_NONE;
		freeReqQ.tailReq = REQ_SLOT_TAG_NONE;
	}

	reqPoolPtr->reqPool[reqSlotTag].reqQueueType =  REQ_QUEUE_TYPE_NONE;
	freeReqQ.reqCnt--;

	return reqSlotTag;
}

void PutToSliceReqQ(uint32_t reqSlotTag)
{
	if(sliceReqQ.tailReq != REQ_SLOT_TAG_NONE)
	{
		reqPoolPtr->reqPool[reqSlotTag].prevReq = sliceReqQ.tailReq;
		reqPoolPtr->reqPool[reqSlotTag].nextReq = REQ_SLOT_TAG_NONE;
		reqPoolPtr->reqPool[sliceReqQ.tailReq].nextReq = reqSlotTag;
		sliceReqQ.tailReq = reqSlotTag;
	}
	else
	{
		reqPoolPtr->reqPool[reqSlotTag].prevReq = REQ_SLOT_TAG_NONE;
		reqPoolPtr->reqPool[reqSlotTag].nextReq = REQ_SLOT_TAG_NONE;
		sliceReqQ.headReq = reqSlotTag;
		sliceReqQ.tailReq = reqSlotTag;
	}

	reqPoolPtr->reqPool[reqSlotTag].reqQueueType =  REQ_QUEUE_TYPE_SLICE;
	sliceReqQ.reqCnt++;
}

uint32_t GetFromSliceReqQ()
{
	uint32_t reqSlotTag;

	reqSlotTag = sliceReqQ.headReq;

	if(reqSlotTag == REQ_SLOT_TAG_NONE)
		return REQ_SLOT_TAG_FAIL;

	if(reqPoolPtr->reqPool[reqSlotTag].nextReq != REQ_SLOT_TAG_NONE)
	{
		sliceReqQ.headReq = reqPoolPtr->reqPool[reqSlotTag].nextReq;
		reqPoolPtr->reqPool[reqPoolPtr->reqPool[reqSlotTag].nextReq].prevReq = REQ_SLOT_TAG_NONE;
	}
	else
	{
		sliceReqQ.headReq = REQ_SLOT_TAG_NONE;
		sliceReqQ.tailReq = REQ_SLOT_TAG_NONE;
	}

	reqPoolPtr->reqPool[reqSlotTag].reqQueueType =  REQ_QUEUE_TYPE_NONE;
	sliceReqQ.reqCnt--;

	return reqSlotTag;
}

void PutToBlockedByBufDepReqQ(uint32_t reqSlotTag)
{	
	// cpl_print("PutToBlockedByBufDepReqQ..!\n");
	if(blockedByBufDepReqQ.tailReq != REQ_SLOT_TAG_NONE)
	{	
		reqPoolPtr->reqPool[reqSlotTag].prevReq = blockedByBufDepReqQ.tailReq;
		reqPoolPtr->reqPool[reqSlotTag].nextReq = REQ_SLOT_TAG_NONE;
		reqPoolPtr->reqPool[blockedByBufDepReqQ.tailReq].nextReq = reqSlotTag;
		blockedByBufDepReqQ.tailReq = reqSlotTag;
	}
	else
	{
		reqPoolPtr->reqPool[reqSlotTag].prevReq = REQ_SLOT_TAG_NONE;
		reqPoolPtr->reqPool[reqSlotTag].nextReq = REQ_SLOT_TAG_NONE;
		blockedByBufDepReqQ.headReq = reqSlotTag;
		blockedByBufDepReqQ.tailReq = reqSlotTag;
	}

	reqPoolPtr->reqPool[reqSlotTag].reqQueueType =  REQ_QUEUE_TYPE_BLOCKED_BY_BUF_DEP;
	blockedByBufDepReqQ.reqCnt++;
	blockedReqCnt++;
}
void SelectiveGetFromBlockedByBufDepReqQ(uint32_t reqSlotTag)
{
	uint32_t prevReq, nextReq;

	if(reqSlotTag == REQ_SLOT_TAG_NONE)
		cpl_print("[WARNING] Wrong reqSlotTag [WARNING]");

	prevReq = reqPoolPtr->reqPool[reqSlotTag].prevReq;
	nextReq = reqPoolPtr->reqPool[reqSlotTag].nextReq;

	if((nextReq != REQ_SLOT_TAG_NONE) && (prevReq != REQ_SLOT_TAG_NONE))
	{
		reqPoolPtr->reqPool[prevReq].nextReq = nextReq;
		reqPoolPtr->reqPool[nextReq].prevReq = prevReq;
	}
	else if((nextReq == REQ_SLOT_TAG_NONE) && (prevReq != REQ_SLOT_TAG_NONE))
	{
		reqPoolPtr->reqPool[prevReq].nextReq = REQ_SLOT_TAG_NONE;
		blockedByBufDepReqQ.tailReq = prevReq;
	}
	else if((nextReq != REQ_SLOT_TAG_NONE) && (prevReq == REQ_SLOT_TAG_NONE))
	{
		reqPoolPtr->reqPool[nextReq].prevReq = REQ_SLOT_TAG_NONE;
		blockedByBufDepReqQ.headReq = nextReq;
	}
	else
	{
		blockedByBufDepReqQ.headReq = REQ_SLOT_TAG_NONE;
		blockedByBufDepReqQ.tailReq = REQ_SLOT_TAG_NONE;
	}

	reqPoolPtr->reqPool[reqSlotTag].reqQueueType =  REQ_QUEUE_TYPE_NONE;
	blockedByBufDepReqQ.reqCnt--;
	blockedReqCnt--;
}

void PutToBlockedByRowAddrDepReqQ(uint32_t reqSlotTag, uint32_t chNo, uint32_t wayNo)
{
	// cpl_print("PutToBlockedByRowAddrDepReqQ..!\n");
	if(blockedByRowAddrDepReqQ[chNo][wayNo].tailReq != REQ_SLOT_TAG_NONE)
	{	
		reqPoolPtr->reqPool[reqSlotTag].prevReq = blockedByRowAddrDepReqQ[chNo][wayNo].tailReq;
		reqPoolPtr->reqPool[reqSlotTag].nextReq = REQ_SLOT_TAG_NONE;
		reqPoolPtr->reqPool[blockedByRowAddrDepReqQ[chNo][wayNo].tailReq].nextReq = reqSlotTag;
		blockedByRowAddrDepReqQ[chNo][wayNo].tailReq = reqSlotTag;
	}
	else
	{
		reqPoolPtr->reqPool[reqSlotTag].prevReq = REQ_SLOT_TAG_NONE;
		reqPoolPtr->reqPool[reqSlotTag].nextReq = REQ_SLOT_TAG_NONE;
		blockedByRowAddrDepReqQ[chNo][wayNo].headReq = reqSlotTag;
		blockedByRowAddrDepReqQ[chNo][wayNo].tailReq = reqSlotTag;
	}

	reqPoolPtr->reqPool[reqSlotTag].reqQueueType =  REQ_QUEUE_TYPE_BLOCKED_BY_ROW_ADDR_DEP;
	blockedByRowAddrDepReqQ[chNo][wayNo].reqCnt++;
	blockedReqCnt++;
}
void SelectiveGetFromBlockedByRowAddrDepReqQ(uint32_t reqSlotTag, uint32_t chNo, uint32_t wayNo)
{
	uint32_t prevReq, nextReq;

	if(reqSlotTag == REQ_SLOT_TAG_NONE)
		cpl_print("[WARNING] Wrong reqSlotTag [WARNING]");

	prevReq = reqPoolPtr->reqPool[reqSlotTag].prevReq;
	nextReq = reqPoolPtr->reqPool[reqSlotTag].nextReq;

	if((nextReq != REQ_SLOT_TAG_NONE) && (prevReq != REQ_SLOT_TAG_NONE))
	{
		reqPoolPtr->reqPool[prevReq].nextReq = nextReq;
		reqPoolPtr->reqPool[nextReq].prevReq = prevReq;
	}
	else if((nextReq == REQ_SLOT_TAG_NONE) && (prevReq != REQ_SLOT_TAG_NONE))
	{
		reqPoolPtr->reqPool[prevReq].nextReq = REQ_SLOT_TAG_NONE;
		blockedByRowAddrDepReqQ[chNo][wayNo].tailReq = prevReq;
	}
	else if((nextReq != REQ_SLOT_TAG_NONE) && (prevReq == REQ_SLOT_TAG_NONE))
	{
		reqPoolPtr->reqPool[nextReq].prevReq = REQ_SLOT_TAG_NONE;
		blockedByRowAddrDepReqQ[chNo][wayNo].headReq = nextReq;
	}
	else
	{
		blockedByRowAddrDepReqQ[chNo][wayNo].headReq = REQ_SLOT_TAG_NONE;
		blockedByRowAddrDepReqQ[chNo][wayNo].tailReq = REQ_SLOT_TAG_NONE;
	}

	reqPoolPtr->reqPool[reqSlotTag].reqQueueType = REQ_QUEUE_TYPE_NONE;
	blockedByRowAddrDepReqQ[chNo][wayNo].reqCnt--;
	blockedReqCnt--;
}

void PutToNvmeDmaReqQ(uint32_t reqSlotTag)
{
	if(nvmeDmaReqQ.tailReq != REQ_SLOT_TAG_NONE)
	{
		// cpl_print("PutToNvmeDmaReqQ1\n");
		reqPoolPtr->reqPool[reqSlotTag].prevReq = nvmeDmaReqQ.tailReq;
		reqPoolPtr->reqPool[reqSlotTag].nextReq = REQ_SLOT_TAG_NONE;
		reqPoolPtr->reqPool[nvmeDmaReqQ.tailReq].nextReq = reqSlotTag;
		nvmeDmaReqQ.tailReq = reqSlotTag;
	}
	else
	{
		// cpl_print("PutToNvmeDmaReqQ2\n");
		reqPoolPtr->reqPool[reqSlotTag].prevReq = REQ_SLOT_TAG_NONE;
		reqPoolPtr->reqPool[reqSlotTag].nextReq = REQ_SLOT_TAG_NONE;
		nvmeDmaReqQ.headReq = reqSlotTag;
		nvmeDmaReqQ.tailReq = reqSlotTag;
	}

	reqPoolPtr->reqPool[reqSlotTag].reqQueueType = REQ_QUEUE_TYPE_NVME_DMA;
	nvmeDmaReqQ.reqCnt++;
}

void SelectiveGetFromNvmeDmaReqQ(uint32_t reqSlotTag)
{
	//cpl_print(" --- SelectiveGetFromNvmeDmaReqQ --- \n");
	uint32_t prevReq, nextReq;

	prevReq = reqPoolPtr->reqPool[reqSlotTag].prevReq;
	nextReq = reqPoolPtr->reqPool[reqSlotTag].nextReq;

	if((nextReq != REQ_SLOT_TAG_NONE) && (prevReq != REQ_SLOT_TAG_NONE))
	{
		reqPoolPtr->reqPool[prevReq].nextReq = nextReq;
		reqPoolPtr->reqPool[nextReq].prevReq = prevReq;
	}
	else if((nextReq == REQ_SLOT_TAG_NONE) && (prevReq != REQ_SLOT_TAG_NONE))
	{
		reqPoolPtr->reqPool[prevReq].nextReq = REQ_SLOT_TAG_NONE;
		nvmeDmaReqQ.tailReq = prevReq;
	}
	else if((nextReq != REQ_SLOT_TAG_NONE) && (prevReq == REQ_SLOT_TAG_NONE))
	{
		reqPoolPtr->reqPool[nextReq].prevReq = REQ_SLOT_TAG_NONE;
		nvmeDmaReqQ.headReq = nextReq;
	}
	else //(nextReq == REQ_SLOT_TAG_NONE) && (prevReq == REQ_SLOT_TAG_NONE) 
	{
		// cpl_print("SelectiveGetFromNvmeDmaReqQ 4!\n");
		nvmeDmaReqQ.headReq = REQ_SLOT_TAG_NONE;
		nvmeDmaReqQ.tailReq = REQ_SLOT_TAG_NONE;
	}

	reqPoolPtr->reqPool[reqSlotTag].reqQueueType = REQ_QUEUE_TYPE_NONE;
	nvmeDmaReqQ.reqCnt--;

	PutToFreeReqQ(reqSlotTag);
	ReleaseBlockedByBufDepReq(reqSlotTag);
}

void PutToNandReqQ(uint32_t reqSlotTag, unsigned chNo, unsigned wayNo)
{
	if(nandReqQ[chNo][wayNo].tailReq != REQ_SLOT_TAG_NONE)
	{
		reqPoolPtr->reqPool[reqSlotTag].prevReq = nandReqQ[chNo][wayNo].tailReq;
		reqPoolPtr->reqPool[reqSlotTag].nextReq = REQ_SLOT_TAG_NONE;
		reqPoolPtr->reqPool[nandReqQ[chNo][wayNo].tailReq].nextReq = reqSlotTag;
		nandReqQ[chNo][wayNo].tailReq = reqSlotTag;
	}
	else
	{
		reqPoolPtr->reqPool[reqSlotTag].prevReq = REQ_SLOT_TAG_NONE;
		reqPoolPtr->reqPool[reqSlotTag].nextReq = REQ_SLOT_TAG_NONE;
		nandReqQ[chNo][wayNo].headReq = reqSlotTag;
		nandReqQ[chNo][wayNo].tailReq = reqSlotTag;
	}

	reqPoolPtr->reqPool[reqSlotTag].reqQueueType = REQ_QUEUE_TYPE_NAND;
	nandReqQ[chNo][wayNo].reqCnt++;
	notCompletedNandReqCnt++;
}

void GetFromNandReqQ(uint32_t chNo, uint32_t wayNo, uint32_t reqStatus, uint32_t reqCode)
{
	uint32_t reqSlotTag;

	reqSlotTag = nandReqQ[chNo][wayNo].headReq;
	if(reqSlotTag == REQ_SLOT_TAG_NONE)
		cpl_print("[WARNING] there is no request in Nand-req-queue[WARNING]");

	if(reqPoolPtr->reqPool[reqSlotTag].nextReq != REQ_SLOT_TAG_NONE)
	{
		nandReqQ[chNo][wayNo].headReq = reqPoolPtr->reqPool[reqSlotTag].nextReq;
		reqPoolPtr->reqPool[reqPoolPtr->reqPool[reqSlotTag].nextReq].prevReq = REQ_SLOT_TAG_NONE;
	}
	else
	{
		nandReqQ[chNo][wayNo].headReq = REQ_SLOT_TAG_NONE;
		nandReqQ[chNo][wayNo].tailReq = REQ_SLOT_TAG_NONE;
	}

	reqPoolPtr->reqPool[reqSlotTag].reqQueueType = REQ_QUEUE_TYPE_NONE;
	nandReqQ[chNo][wayNo].reqCnt--;
	notCompletedNandReqCnt--;

	PutToFreeReqQ(reqSlotTag);
	ReleaseBlockedByBufDepReq(reqSlotTag);
}

#pragma GCC pop_options