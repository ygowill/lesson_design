#include "main.h"

OS_STK Start_Task_Stk[START_TASK_STK_SIZE];

int main(void){	
	SystemInit(); 			                            //系统时钟初始化为72M	  SYSCLK_FREQ_72MHz	  
  NVIC_PriorityGroupConfig(NVIC_PriorityGroup_2);	//设置NVIC中断分组2:2位抢占优先级，2位响应优先级

  while(1){		 
		OSInit();				 //初始化操作系统
		OSTaskCreate(Start_Task,
								(void *)0,
								&Start_Task_Stk[START_TASK_STK_SIZE-1],
								START_TASK_PRIO);  //创建开始任务

		SysTick_Configuration();
		OSStart();
    return 0;			
  }	
}


