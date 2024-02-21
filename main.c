//////////////////////////////////////////////////////////////////////////////////
// main.c for Cosmos+ OpenSSD
// Copyright (c) 2016 Hanyang University ENC Lab.
// Contributed by Yong Ho Song <yhsong@enc.hanyang.ac.kr>
//				  Youngjin Jo <yjjo@enc.hanyang.ac.kr>
//				  Sangjin Lee <sjlee@enc.hanyang.ac.kr>
//				  Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
//				  Kibin Park <kbpark@enc.hanyang.ac.kr>
//
// This file is part of Cosmos+ OpenSSD.
//
// Cosmos+ OpenSSD is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 3, or (at your option)
// any later version.
//
// Cosmos+ OpenSSD is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
// See the GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Cosmos+ OpenSSD; see the file COPYING.
// If not, see <http://www.gnu.org/licenses/>.
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Company: ENC Lab. <http://enc.hanyang.ac.kr>
// Engineer: Sangjin Lee <sjlee@enc.hanyang.ac.kr>
//			 Jaewook Kwak <jwkwak@enc.hanyang.ac.kr>
//			 Kibin Park <kbpark@enc.hanyang.ac.kr>
//
// Project Name: Cosmos+ OpenSSD
// Design Name: Cosmos+ Firmware
// Module Name: Main
// File Name: main.c
//
// Version: v1.0.2
//
// Description:
//   - initializes caches, MMU, exception handler
//   - calls nvme_main function
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// Revision History:
//
// * v1.0.2
//   - An address region (0x0020_0000 ~ 0x179F_FFFF) is used to uncached & nonbuffered region
//   - An address region (0x1800_0000 ~ 0x3FFF_FFFF) is used to cached & buffered region
//
// * v1.0.1
//   - Paging table setting is modified for QSPI or SD card boot mode
//     * An address region (0x0010_0000 ~ 0x001F_FFFF) is used to place code, data, heap and stack sections
//     * An address region (0x0010_0000 ~ 0x001F_FFFF) is setted a cached&bufferd region
//
// * v1.0.0
//   - First draft
//////////////////////////////////////////////////////////////////////////////////



// #include "xil_cache.h"
// #include "xil_exception.h"
// #include "xil_mmu.h"
// #include "xparameters_ps.h"
// #include "xscugic_hw.h"
// #include "xscugic.h"
// //#include "cpl_print.h"

#include "ariane.h"
#include "nvme_identify.h"
#include "nvme.h"
#include "nvme_main.h"
#include "host_lld.h"
#include <stdint.h>
 
// XScuGic GicInstance;
extern char __bss_start; __bss_end;
extern NVME_CONTEXT g_nvmeTask;

// unsigned char targetCh=1;
// unsigned char targetWay=1; //data section

int main()
{
	cpl_print("hs06\n");
	// cpl_memset((void *)0x211BC0, 0, 0x630);
	// cpl_memset((void *)(&__bss_start), 0, (((unsigned int)&__bss_end)-((unsigned int)&__bss_start)));
	
	// g_hostDmaStatus.autoDmaRxCnt = 0;
	// g_hostDmaStatus.autoDmaTxCnt = 0;
	// g_hostDmaStatus.directDmaRxCnt = 0;
	// g_hostDmaStatus.directDmaTxCnt = 0;
	// g_hostDmaStatus.fifoHead.dword = 0;
	// g_hostDmaStatus.fifoTail.dword = 0;

 	// targetCh-=1;
	// targetWay-=1;
	// cpl_print("main`s reset_flag : ");
	// cpl_printint(cpl_In32(0x17FFFFF0));

	if(cpl_In32(0x17FFFFF0) != 85465){
		cpl_memset((void *)0x20fbd8/*bss*/, 0, 0x648); //bss section (uninitialized global variable) initialization
		cpl_memset((void *)0x17FFFFF0, 0, 0x4);
		cpl_memset((void *)0x17FFFFF4, 0, 0x4);
		cpl_memset((void *)0x17FDFF00, 0, 0x20000);
		cpl_memset((void *)0x17FDFE00, 0, 0x100); // HOST_DMA_STATUS,  0x17FFFFF8
		cpl_memset((void *)0x17FBFE00, 0, 0x10000); // table meta data table
		// cpl_memset((void *)0x18000010, 0, 0x8); // HOST_DMA_ASSIST_STATUS, 0x18000010
		// cpl_memset((void *)0x18000018, 0, 0xF4240); // reqPoolPtr
	}
	
	// cpl_memset((void *)&g_hostDmaStatus, 0, sizeof(g_hostDmaStatus));
	// cpl_memset((void *)&g_nvmeTask, 0, sizeof(g_nvmeTask));
	// cpl_memset((void *)&g_hostDmaAssistStatus, 0, sizeof(g_hostDmaAssistStatus));

	// uint32_t u;

	// XScuGic_Config *IntcConfig;

	// ICacheDisable();
	// DCacheDisable();
	// DisableMMU();

	// // Paging table set
	// #define MB (1024*1024)
	// for (u = 0; u < 4096; u++)
	// {
	// 	if (u < 0x0020 0000)
	// 		Xil_SetTlbAttributes(u * MB, 0xC1E); // cached & buffered
	// 	else if (u < 0x1800 0000)
	// 		Xil_SetTlbAttributes(u * MB, 0xC12); // uncached & nonbuffered
	// 	else if (u < 0x400)
	// 		Xil_SetTlbAttributes(u * MB, 0xC1E); // cached & buffered
	// 	else
	// 		Xil_SetTlbAttributes(u * MB, 0xC12); // uncached & nonbuffered
	// }

	// EnableMMU();
	// ICacheEnable();
	// DCacheEnable();
	// cpl_print("[!] MMU has been enabled.\r\n");


	cpl_print("\r\n Hello COSMOS+ OpenSSD !!! \r\n");


	// Xil_ExceptionInit();

	// IntcConfig = XScuGic_LookupConfig(XPAR_SCUGIC_SINGLE_DEVICE_ID);
	// XScuGic_CfgInitialize(&GicInstance, IntcConfig, IntcConfig->CpuBaseAddress);
	// Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
	// 							(Xil_ExceptionHandler)XScuGic_InterruptHandler,
	// 							&GicInstance);

	// XScuGic_Connect(&GicInstance, 61,
	// 				(Xil_ExceptionHandler)dev_irq_handler,
	// 				(void *)0);

	// XScuGic_Enable(&GicInstance, 61);

	// // Enable interrupts in the Processor.
	// Xil_ExceptionEnableMask(XIL_EXCEPTION_IRQ);
	// Xil_ExceptionEnable();
	
	if(cpl_In32(0x17FFFFF0) != 85465)
		dev_irq_init();

	nvme_main();

	cpl_print("done\r\n");

	return 0;
}
