#include	"app_cfg.h"
#include  "touch.h"
#include  "ucos_ii.h"
#include  "main.h"
/*
***************************************************************
					ȫ�ֱ�����
****************************************************************
*/
/********************ϵͳ��ջ**********************************/
OS_STK UCGUI_Task_Stk[UCGUI_TASK_STK_SIZE];		         //����ջ
OS_STK TOUCH_TEST_Task_Stk[TOUCH_TEST_TASK_STK_SIZE];		         //����ջ
/*
***************************************************************
					����������
****************************************************************
*/
static void Create_Task(void);
void Start_Task(void *p_arg);
static void UCGUI_PRACTICE_Task(void *p_arg);
static void TOUCH_TEST_Task(void *p_arg);


/*
***************************************************************
*��������Create_Task()
*���ܣ�	 ��������
*������	 ��
*����ֵ����
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
	   				OS_TASK_OPT_STK_CHK|OS_TASK_OPT_STK_CLR );	   	//����UCGUI����
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
*��������Start_Task
*���ܣ�	 ��ʼ����
*������	 p_arg
*����ֵ����
****************************************************************
*/
void Start_Task(void *p_arg){
	(void)p_arg;                		// 'p_arg' ��û���õ�����ֹ��������ʾ����
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOC | 
						 RCC_APB2Periph_AFIO  | RCC_APB2Periph_USART1 |RCC_APB2Periph_SPI1, ENABLE);
	InterruptConfig();
	TIM2_Config();
	Touch_GPIO_Config();
	Lcd_Initialize();
	GUI_Init();
	GUI_UC_SetEncodeUTF8();

	Create_Task();						//��������
	while (1){
		OSTimeDlyHMSM(0, 0, 0, 500);	 
	}
}

/*
***************************************************************
*��������GUI_PRACTICE_Task
*���ܣ�	 ����uCGUI��app
*������	 p_arg
*����ֵ����
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
*��������TOUCH_TEST_Task
*���ܣ�	 �����������
*������	 p_arg
*����ֵ����
****************************************************************
*/

static void TOUCH_TEST_Task(void *p_arg)
{
	(void)p_arg;
	
	while(1)
	{
		 GUI_TOUCH_Exec();			 //���Ӻ�ˢ�´�����
		 OSTimeDlyHMSM(0, 0, 0, 10);		  
	}	
}








