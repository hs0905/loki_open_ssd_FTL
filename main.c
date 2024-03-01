#include "ariane.h"
#include "nvme_identify.h"
#include "nvme.h"
#include "nvme_main.h"
#include "host_lld.h"
#include <stdint.h>
 
// XScuGic GicInstance;
extern char __bss_start; __bss_end;
extern NVME_CONTEXT g_nvmeTask;

int main()
{
	cpl_print("hs17cpl85465123123123123asdfasfsaf\n");

	if(cpl_In32(0x17FFFFF0) != 85465){
		cpl_memset((void *)0x20fbf8	 , 0, 0x648); 		//bss section (uninitialized global variable) initialization
		cpl_memset((void *)0x17FFFFF0, 0, 0x4);     	// reset flag
		cpl_memset((void *)0x17FFFFF4, 0, 0x4);				// list entry number
		cpl_memset((void *)0x17FDFF00, 0, 0x20000); 	// table entry list 
		cpl_memset((void *)0x17FDFE00, 0, 0x100); 		// HOST_DMA_STATUS,  0x17FFFFF8
		cpl_memset((void *)0x17FBFE00, 0, 0x10000); 	// table meta data table
	}
	cpl_print("\r\n Hello COSMOS+ OpenSSD !!! \r\n");
	
	if(cpl_In32(0x17FFFFF0) != 85465){							// if reset_flag is not 85465
		dev_irq_init(); 															// initialize interrupt
	}
	nvme_main();

	cpl_print("done\r\n");

	return 0;
}
