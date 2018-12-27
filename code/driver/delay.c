#include	"delay.h"

#if		USE_UCOS_ENABLE>0			 //ʹ��UCOSʱ��ʱSYSTICK�����ú���ʱ


void Systick_Init(void)
{

    RCC_ClocksTypeDef rcc_clocks;
    RCC_GetClocksFreq(&rcc_clocks);
	SysTick_Config(rcc_clocks.HCLK_Frequency/OS_TICKS_PER_SEC);
		
}

/*
***************************************************************
*��������	 delay_us
*���ܣ�		 ΢���ʱ
*������		 us:��ʱ����us
*����ֵ��	 ��
*ע�⣺		 ϵͳʱ�ӣ�72M
*�����÷���
***************************************************************
*/
void delay_us(u32 us){
	unsigned long j;
	while(us--){
		j=12;
		while(j--);
	}
}   

/*
***************************************************************
*��������	 delay_ms
*���ܣ�		 ���뼶��ʱ
*������		 us:��ʱ����ms
*����ֵ��	 ��
*ע�⣺		 ϵͳʱ�ӣ�72M
*�����÷���
***************************************************************
*/
void delay_ms(u32 ms){
	while(ms--){
		delay_us(1030);	
	}
} 



#else 

static u8  fac_us=0;//us��ʱ������
static u16 fac_ms=0;//ms��ʱ������



/*
***************************************************************
*��������	delay_init
*���ܣ�		��ʼ���ӳٺ���
*������		sysclk��ϵͳʱ��
*����ֵ��
*ע�⣺		SYSTICK��ʱ�ӹ̶�ΪHCLK/8
*�����÷���	delay_init(72);
***************************************************************
*/
void delay_init(u8 sysclk)
{
	SysTick_CLKSourceConfig(SysTick_CLKSource_HCLK_Div8);	//ѡ���ⲿʱ��  HCLK/8
	fac_us=sysclk/8;		    
	fac_ms=(u16)fac_us*1000;
}

								    


/*
***************************************************************
*��������   delay_ms
*���ܣ�	    ���뼶��ʱ
*������	    ms:��ʱ����ms
*����ֵ��
*ע�⣺		ʹ�ô˺���ǰ�����ʼ����ʱ����
		    SysTick->LOADΪ24λ�Ĵ���,����,�����ʱΪ:
		    nms<=0xffffff*8*1000/SYSCLK
		    SYSCLK��λΪHz,nms��λΪms
		    ��72M������,nms<=1864 
*�����÷���
***************************************************************
*/
void delay_ms(u16 nms)			
{	 		  	  
	u32 temp;		   
	SysTick->LOAD=(u32)nms*fac_ms;//ʱ�����(SysTick->LOADΪ24bit)
	SysTick->VAL =0x00;           //��ռ�����
	SysTick->CTRL=0x01 ;          //��ʼ����  
	do
	{
		temp=SysTick->CTRL;
	}
	while(temp&0x01&&!(temp&(1<<16)));//�ȴ�ʱ�䵽��   
	SysTick->CTRL=0x00;       //�رռ�����
	SysTick->VAL =0X00;       //��ռ�����	  	    
} 
  

/*
***************************************************************
*��������	 delay_us
*���ܣ�		 ���뼶��ʱ
*������		 us:��ʱ����us
*����ֵ��
*ע�⣺		 ʹ�ô˺���ǰ�����ʼ����ʱ����
*�����÷���
***************************************************************
*/	    								   
void delay_us(u32 nus)
{		
	u32 temp;	    	 
	SysTick->LOAD=nus*fac_us; //ʱ�����	  		 
	SysTick->VAL=0x00;        //��ռ�����
	SysTick->CTRL=0x01 ;      //��ʼ���� 	 
	do
	{
		temp=SysTick->CTRL;
	}
	while(temp&0x01&&!(temp&(1<<16)));//�ȴ�ʱ�䵽��   
	SysTick->CTRL=0x00;       //�رռ�����
	SysTick->VAL =0X00;       //��ռ�����	 
}

#endif

































