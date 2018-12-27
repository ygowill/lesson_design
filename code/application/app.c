#include	"app_cfg.h"
#include  "touch.h"
#include  "ucos_ii.h"
#include  "main.h"
/*
***************************************************************
					全局变量区
****************************************************************
*/
/********************系统堆栈**********************************/
OS_STK UCGUI_Task_Stk[UCGUI_TASK_STK_SIZE];		         //定义栈
OS_STK TOUCH_TEST_Task_Stk[TOUCH_TEST_TASK_STK_SIZE];		         //定义栈
/*
***************************************************************
					函数声明区
****************************************************************
*/
static void Create_Task(void);
void Start_Task(void *p_arg);
static void UCGUI_PRACTICE_Task(void *p_arg);
static void TOUCH_TEST_Task(void *p_arg);


/*
***************************************************************
*函数名：Create_Task()
*功能：	 创建任务
*参数：	 无
*返回值：无
****************************************************************
*/
static void Create_Task(void)
{	   
	 
	OSTaskCreateExt(UCGUI_PRACTICE_Task,
				   (void *)0,
					&UCGUI_Task_Stk[UCGUI_TASK_STK_SIZE -1],
	 				UCGUI_TASK_PRIO,UCGUI_TASK_PRIO,
	   				& UCGUI_Task_Stk[0],
	   				UCGUI_TASK_STK_SIZE,
	   				(void *)0,
	   				OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR );	   	//创建UCGUI任务
	OSTaskCreateExt(TOUCH_TEST_Task,
				   (void *)0,
					&TOUCH_TEST_Task_Stk[TOUCH_TEST_TASK_STK_SIZE -1],
	 				TOUCH_TEST_TASK_PRIO,TOUCH_TEST_TASK_PRIO,
	   				& TOUCH_TEST_Task_Stk[0],
	   				TOUCH_TEST_TASK_STK_SIZE,
	   				(void *)0,
	   				OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR );																  	
}


/*
***************************************************************
*函数名：Start_Task
*功能：	 开始任务
*参数：	 p_arg
*返回值：无
****************************************************************
*/
void Start_Task(void *p_arg){
	(void)p_arg;                		// 'p_arg' 并没有用到，防止编译器提示警告
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOC | 
						 RCC_APB2Periph_AFIO  | RCC_APB2Periph_USART1 |RCC_APB2Periph_SPI1, ENABLE);
	InterruptConfig();
	TIM2_Config();
	Touch_GPIO_Config();
	Lcd_Initialize();
	GUI_Init();
	GUI_UC_SetEncodeUTF8();

	Create_Task();						//创建任务
	while (1){
		OSTimeDlyHMSM(0, 0, 0, 500);	 
	}
}

/*
***************************************************************
*函数名：GUI_PRACTICE_Task
*功能：	 运行uCGUI的app
*参数：	 p_arg
*返回值：无
****************************************************************
*/
static void UCGUI_PRACTICE_Task(void *p_arg){
	(void)p_arg;
	while(1){
		 ucGUI_Practice();
     OSTimeDlyHMSM(0, 0, 0, 10);	 	 	 
	}	
}


/*
***************************************************************
*函数名：TOUCH_TEST_Task
*功能：	 触摸检测任务
*参数：	 p_arg
*返回值：无
****************************************************************
*/

static void TOUCH_TEST_Task(void *p_arg)
{
	(void)p_arg;
	
	while(1)
	{
		 GUI_TOUCH_Exec();			 //监视和刷新触摸板
		 OSTimeDlyHMSM(0, 0, 0, 10);		  
	}	
}








