#include "ucGUI_Practice.h"


void ucGUI_Practice(void)
{
	//int tx,ty;
	int i=0;

	Page_Init();
	Page_Select(i);

	while(GPIO_ReadInputDataBit(GPIOA,GPIO_Pin_0)==1);
	delay_ms(20);
	while(1){
		if(GPIO_ReadInputDataBit(GPIOE,GPIO_Pin_1)==1)
		{
			i++;
			if(i>1)i=0;
			delay_ms(300); 
			Page_Select(i);
		}		
		if(GPIO_ReadInputDataBit(GPIOE,GPIO_Pin_6)==1)
		{
			i--;
			if(i<0)i=1;
			delay_ms(300); 
			Page_Select(i);
		}	
		if(GPIO_ReadInputDataBit(GPIOA,GPIO_Pin_0)==1)
		{
			TIM_Cmd(TIM2, ENABLE);
			switch (i){
				case 0:
					MainTask_WIDGET_CALCULATOR();
					Page_Init();
					Page_Select(i);
					break;
				case 1:
					MainTask_WIDGET_ABOUT();
					Page_Init();
					Page_Select(i);
					break;
				default: break;	
			}
			TIM_Cmd(TIM2, DISABLE);
		}
	}
	
}

void Page_Init(void)
{
	Lcd_ColorBox(0,0,480,320,BLACK);
	LCD_COLORINDEX=WHITE;
	LCD_BKCOLORINDEX=BLACK;
	GUI_SetFont(&GUI_Font32B_ASCII);
	GUI_DispStringAt("MENU",200,70);
	GUI_SetFont(&GUI_Font24_ASCII);
	GUI_DispStringAt("Scientific Calculator",150,150);
	GUI_DispStringAt("About",150,200);
}

void Page_Select(int num){
	//Page_Init();
	LCD_COLORINDEX=WHITE;
	LCD_BKCOLORINDEX=BLACK;
	GUI_SetFont(&GUI_Font24_ASCII);
	switch(num){
		case 0:
			GUI_DispStringAt("    ",120,200);
			GUI_DispStringAt(">>",120,150);
			break;
		case 1:
			GUI_DispStringAt("    ",120,150);
			GUI_DispStringAt(">>",120,200);
			break;
		default:
			break;
	}	
}	
