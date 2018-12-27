/*
*********************************************************************************************************
*                                                uC/GUI
*                        Universal graphic software for embedded applications
*
*                       (c) Copyright 2002, Micrium Inc., Weston, FL
*                       (c) Copyright 2002, SEGGER Microcontroller Systeme GmbH
*
*              �C/GUI is protected by international copyright laws. Knowledge of the
*              source code may not be used to write a similar product. This file may
*              only be used in accordance with a license and should not be redistributed
*              in any way. We appreciate your understanding and fairness.
*
*/

#include 	"GUI.h"
#include	"GUI_X.h"
#include	"touch.h"

void GUI_TOUCH_X_ActivateX(void) {

}

void GUI_TOUCH_X_ActivateY(void) {
}

int  GUI_TOUCH_X_MeasureX(void) {

  u16 x,y;
  Read_ADS2(&x,&y);
  return x;
}

int  GUI_TOUCH_X_MeasureY(void) {
  u16 x,y;

  Read_ADS2(&x,&y); 
  return y;
}


