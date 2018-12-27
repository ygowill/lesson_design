
#ifndef __DELAY_H
#define __DELAY_H 	

#include "stm32f10x.h"
#include "os_cfg.h"

#define	    USE_UCOS_ENABLE	   1			//使用UCOS-II系统
 
#if		USE_UCOS_ENABLE>0

//#define		delay_ms(x)    OSTimeDlyHMSM (0, 0, 0,x)  
void delay_us(u32 us);
void delay_ms(u32 ms);
void Systick_Init(void);

#else
void delay_init(u8 SYSCLK);
void delay_ms(u16 nms);
void delay_us(u32 nus);
#endif


#endif





























