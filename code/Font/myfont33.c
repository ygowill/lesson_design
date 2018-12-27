/*********************************************************************
*                SEGGER Microcontroller GmbH & Co. KG                *
*        Solutions for real time microcontroller applications        *
*                           www.segger.com                           *
**********************************************************************
*                                                                    *
* C-file generated by                                                *
*                                                                    *
*        emWin Font Converter (NXP) version 5.38                     *
*        Compiled Nov 24 2016, 16:56:53                              *
*                                                                    *
*        (c) 1998 - 2016 Segger Microcontroller GmbH & Co. KG        *
*                                                                    *
**********************************************************************
*                                                                    *
* Source file: myfont33.c                                            *
* Font:        ����                                                  *
* Height:      33                                                    *
*                                                                    *
**********************************************************************
*                                                                    *
* Initial font height:  33                                           *
* Read pattern file: \\Mac\Home\Desktop\Events\lesson_design\UCOS_UCGUI\code\Font\myfont.txt*
* Range disabled:       0000 - FFFF                                  *
* Read pattern file: \\Mac\Home\Desktop\Events\lesson_design\UCOS_UCGUI\code\Font\myfont.txt*
*                                                                    *
**********************************************************************
*/

#include "GUI.h"

#ifndef GUI_CONST_STORAGE
  #define GUI_CONST_STORAGE const
#endif

/* The following line needs to be included in any file selecting the
   font.
*/
extern GUI_CONST_STORAGE GUI_FONT GUI_Fontmyfont33;

#define GUI_FONTTYPE_PROP_EXT       \
  GUIPROP_EXT_DispChar,             \
  GUIPROP_EXT_GetCharDistX,         \
  GUIPROP_EXT_GetFontInfo,          \
  GUIPROP_EXT_IsInFont,             \
  GUIPROP_EXT_GetCharInfo,          \
  &GUI_ENC_APIList_EXT

typedef struct {
  U8 XSize;
  U8 YSize;
  I8 XPos;
  I8 YPos;
  U8 XDist;
  const unsigned char * pData;
} GUI_CHARINFO_EXT;

typedef struct GUI_FONT_PROP_EXT {
  U16P First;                                  /* First character               */
  U16P Last;                                   /* Last character                */
  const GUI_CHARINFO_EXT         * paCharInfo; /* Address of first character    */
  const struct GUI_FONT_PROP_EXT * pNext;      /* Pointer to next               */
} GUI_FONT_PROP_EXT;

/* Start of unicode area <CJK Unified Ideographs> */
GUI_CONST_STORAGE unsigned char acGUI_Fontmyfont33_4E8E[112] = { /* code 4E8E */
  ___XXXXX,XXXXXXXX,XXXXXXXX,XX______,
  ___XXXXX,XXXXXXXX,XXXXXXXX,XX______,
  ___XXXXX,XXXXXXXX,XXXXXXXX,XX______,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  XXXXXXXX,XXXXXXXX,XXXXXXXX,XXXXX___,
  XXXXXXXX,XXXXXXXX,XXXXXXXX,XXXXX___,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_XXXXXXX,________,________,
  ________,__XXXXXX,________,________,
  ________,__XXXXXX,________,________,
  ________,__XX____,________,________};

GUI_CONST_STORAGE unsigned char acGUI_Fontmyfont33_5173[116] = { /* code 5173 */
  ________,X_______,__X_____,________,
  _______X,XX______,__XXX___,________,
  _______X,XX______,__XXX___,________,
  ________,XXX_____,_XXX____,________,
  ________,XXXX____,_XXX____,________,
  ________,_XX_____,XXX_____,________,
  ________,_X______,XXX_____,________,
  __XXXXXX,XXXXXXXX,XXXXXXXX,XX______,
  __XXXXXX,XXXXXXXX,XXXXXXXX,XX______,
  ________,_____XX_,________,________,
  ________,_____XX_,________,________,
  ________,_____XX_,________,________,
  ________,_____XX_,________,________,
  ________,_____XX_,________,________,
  ________,_____XX_,________,________,
  _XXXXXXX,XXXXXXXX,XXXXXXXX,XXX_____,
  _XXXXXXX,XXXXXXXX,XXXXXXXX,XXX_____,
  ________,____XXXX,________,________,
  ________,____XXXX,________,________,
  ________,___XXXXX,X_______,________,
  ________,___XXX_X,XX______,________,
  ________,__XXX___,XXX_____,________,
  ________,_XXX____,XXXX____,________,
  ________,XXX_____,_XXXXX__,________,
  ______XX,XX______,__XXXXXX,________,
  ____XXXX,X_______,____XXXX,XXX_____,
  _XXXXXX_,________,_____XXX,XXX_____,
  _XXXXX__,________,_______X,XXX_____,
  __XX____,________,________,________};

GUI_CONST_STORAGE unsigned char acGUI_Fontmyfont33_5668[112] = { /* code 5668 */
  ___XXXXX,XXXXX___,XXXXXXXX,XX______,
  ___XXXXX,XXXXX___,XXXXXXXX,XX______,
  ___XXX__,___XX___,XX______,XX______,
  ___XXX__,___XX___,XX______,XX______,
  ___XXX__,___XX___,XX______,XX______,
  ___XXXXX,XXXXX___,XXXXXXXX,XX______,
  ___XXXXX,XXXXX___,XXXXXXXX,XX______,
  ________,_____XX_,____X___,________,
  ________,_____XXX,___XXXX_,________,
  ________,_____XXX,_____X__,________,
  __XXXXXX,XXXXXXXX,XXXXXXXX,XXXX____,
  __XXXXXX,XXXXXXXX,XXXXXXXX,XXXX____,
  ________,___XXX_X,XX______,________,
  ________,__XXX___,XXXX____,________,
  _______X,XXXX____,_XXXXXXX,________,
  XXXXXXXX,XXX_____,___XXXXX,XXXXX___,
  _XXXXXXX,________,______XX,XXXXX___,
  __XX____,________,________,________,
  ___XXXXX,XXXXX___,XXXXXXXX,XX______,
  ___XXXXX,XXXXX___,XXXXXXXX,XX______,
  ___XXX__,___XX___,XX______,XX______,
  ___XXX__,___XX___,XX______,XX______,
  ___XXX__,___XX___,XX______,XX______,
  ___XXX__,___XX___,XX______,XX______,
  ___XXXXX,XXXXX___,XXXXXXXX,XX______,
  ___XXXXX,XXXXX___,XXXXXXXX,XX______,
  ___XXX__,___XX___,XX______,XX______,
  ___XXX__,___XX___,XX______,XX______};

GUI_CONST_STORAGE unsigned char acGUI_Fontmyfont33_5B66[124] = { /* code 5B66 */
  ________,________,________,________,
  ________,____X___,_____XX_,________,
  ___XX___,___XXX__,_____XXX,________,
  __XXXX__,___XXXX_,____XXXX,________,
  ___XXXX_,____XXX_,____XXX_,________,
  ____XXXX,_____XXX,___XXX__,________,
  _____XX_,_____X__,___XX___,________,
  _____X__,________,__XXX___,________,
  _XXXXXXX,XXXXXXXX,XXXXXXXX,XXX_____,
  _XXXXXXX,XXXXXXXX,XXXXXXXX,XXX_____,
  _XX_____,________,________,_XX_____,
  _XX_____,________,________,_XX_____,
  _XX_____,________,________,_XX_____,
  _XX_____,________,________,_XX_____,
  _____XXX,XXXXXXXX,XXXXXX__,________,
  _____XXX,XXXXXXXX,XXXXXX__,________,
  ________,________,XXXXX___,________,
  ________,______XX,XXX_____,________,
  ________,_____XXX,X_______,________,
  ________,_____XXX,________,________,
  XXXXXXXX,XXXXXXXX,XXXXXXXX,XXXX____,
  XXXXXXXX,XXXXXXXX,XXXXXXXX,XXXX____,
  XXXXXXXX,XXXXXXXX,XXXXXXXX,XXXX____,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_____XXX,________,________,
  ________,_XXXXXXX,________,________,
  ________,__XXXXX_,________,________,
  ________,________,________,________};

GUI_CONST_STORAGE unsigned char acGUI_Fontmyfont33_6B22[116] = { /* code 6B22 */
  ________,_______X,X_______,________,
  ________,_______X,XX______,________,
  ________,_______X,X_______,________,
  ________,______XX,X_______,________,
  XXXXXXXX,XXX___XX,X_______,________,
  XXXXXXXX,XXX___XX,X_______,________,
  ________,_XX___XX,XXXXXXXX,XXX_____,
  ________,XXX___XX,XXXXXXXX,XXX_____,
  ________,XX___XXX,________,XXX_____,
  ___X____,XX___XX_,________,XX______,
  _XXX____,XX__XXX_,_______X,XX______,
  __XXX__X,XX__XX__,_XXX___X,XX______,
  ___XXX_X,X__XXX__,_XXX____,________,
  ____XX_X,X_______,_XXX____,________,
  ____XXXX,X_______,_XXX____,________,
  _____XXX,________,_XXX____,________,
  _____XXX,X_______,_XXX____,________,
  _____XXX,X_______,_XXXX___,________,
  ____XXXX,XX______,_XXXX___,________,
  ____XXX_,XXX_____,XXXXX___,________,
  ___XXX__,XXX_____,XX__XX__,________,
  ___XXX__,_XXX___X,XX__XXX_,________,
  __XXX___,__X____X,X____XXX,________,
  _XXX____,______XX,X____XXX,X_______,
  _XXX____,_____XXX,______XX,XX______,
  XXX_____,___XXXX_,_______X,XXXX____,
  __X_____,__XXXX__,________,XXXX____,
  ________,_XXXX___,________,__XX____,
  ________,___X____,________,________};

GUI_CONST_STORAGE unsigned char acGUI_Fontmyfont33_79D1[116] = { /* code 79D1 */
  ________,________,_______X,X_______,
  ________,__XX____,_______X,X_______,
  _____XXX,XXXXX___,_______X,X_______,
  _XXXXXXX,XXX_____,_X_____X,X_______,
  __XXXXXX,X_______,XXX____X,X_______,
  ______XX,X_______,XXXX___X,X_______,
  ______XX,X_______,_XXX___X,X_______,
  ______XX,X_______,__XXX__X,X_______,
  ______XX,X_______,___XX__X,X_______,
  _XXXXXXX,XXXXXX__,_______X,X_______,
  _XXXXXXX,XXXXXX__,_______X,X_______,
  _XXXXXXX,XXXXXX_X,X______X,X_______,
  ______XX,X_____XX,XX_____X,X_______,
  ______XX,X_______,XXX____X,X_______,
  _____XXX,X_XX____,_XXX___X,X_______,
  _____XXX,XXXXX___,__XXX__X,X_______,
  ____XXXX,X__XXX__,___X___X,X_______,
  ____XXXX,X___XX__,_______X,XXXXXX__,
  ___XXXXX,X_______,___XXXXX,XXXXXX__,
  ___XX_XX,X_____XX,XXXXXXXX,XX______,
  __XXX_XX,X____XXX,XXXXX__X,X_______,
  _XXX__XX,X____XXX,_______X,X_______,
  XXX___XX,X_______,_______X,X_______,
  _XX___XX,X_______,_______X,X_______,
  ______XX,X_______,_______X,X_______,
  ______XX,X_______,_______X,X_______,
  ______XX,X_______,_______X,X_______,
  ______XX,X_______,_______X,X_______,
  ______XX,X_______,_______X,X_______};

GUI_CONST_STORAGE unsigned char acGUI_Fontmyfont33_7B97[120] = { /* code 7B97 */
  ________,________,________,________,
  _____XXX,________,__XXXX__,________,
  ____XXX_,________,__XXX___,________,
  ___XXXXX,XXXXXXX_,_XXXXXXX,XXXXX___,
  ___XXXXX,XXXXXXX_,XXXXXXXX,XXXXX___,
  __XXX__X,XX______,XX____XX,________,
  _XXX____,XX_____X,XX____XX,X_______,
  __X_____,XXX_____,X_____X_,________,
  ________,________,________,________,
  _____XXX,XXXXXXXX,XXXXXXXX,X_______,
  _____XXX,XXXXXXXX,XXXXXXXX,X_______,
  _____XXX,________,______XX,X_______,
  _____XXX,XXXXXXXX,XXXXXXXX,X_______,
  _____XXX,XXXXXXXX,XXXXXXXX,X_______,
  _____XXX,________,______XX,X_______,
  _____XXX,XXXXXXXX,XXXXXXXX,X_______,
  _____XXX,XXXXXXXX,XXXXXXXX,X_______,
  _____XXX,________,______XX,X_______,
  _____XXX,________,______XX,X_______,
  _____XXX,XXXXXXXX,XXXXXXXX,X_______,
  ________,__XXX___,___XXX__,________,
  ________,__XXX___,___XXX__,________,
  X_______,__XXX___,___XXX__,________,
  XXXXXXXX,XXXXXXXX,XXXXXXXX,XXXXXX__,
  XXXXXXXX,XXXXXXXX,XXXXXXXX,XXXXXX__,
  ________,_XXX____,___XXX__,________,
  ________,XXX_____,___XXX__,________,
  _____XXX,XX______,___XXX__,________,
  ___XXXXX,X_______,___XXX__,________,
  ____XXX_,________,___XXX__,________};

GUI_CONST_STORAGE unsigned char acGUI_Fontmyfont33_8BA1[116] = { /* code 8BA1 */
  ________,________,___XX___,________,
  ____X___,________,___XX___,________,
  ___XXX__,________,___XX___,________,
  ____XXX_,________,___XX___,________,
  _____XXX,________,___XX___,________,
  ______XX,X_______,___XX___,________,
  _______X,X_______,___XX___,________,
  _______X,________,___XX___,________,
  ________,________,___XX___,________,
  ________,________,___XX___,________,
  XXXXXXXX,__XXXXXX,XXXXXXXX,XXXXX___,
  XXXXXXXX,__XXXXXX,XXXXXXXX,XXXXX___,
  _____XXX,__XXXXXX,XXXXXXXX,XXXXX___,
  _____XXX,________,___XX___,________,
  _____XXX,________,___XX___,________,
  _____XXX,________,___XX___,________,
  _____XXX,________,___XX___,________,
  _____XXX,________,___XX___,________,
  _____XXX,________,___XX___,________,
  _____XXX,___X____,___XX___,________,
  _____XXX,__XX____,___XX___,________,
  _____XXX,_XXX____,___XX___,________,
  _____XXX,XXX_____,___XX___,________,
  _____XXX,XX______,___XX___,________,
  _____XXX,X_______,___XX___,________,
  _____XXX,________,___XX___,________,
  _____XX_,________,___XX___,________,
  ________,________,___XX___,________,
  ________,________,___XX___,________};

GUI_CONST_STORAGE unsigned char acGUI_Fontmyfont33_8FCE[116] = { /* code 8FCE */
  ___X____,_______X,________,________,
  __XXX___,_____XXX,X_______,________,
  __XXX___,__XXXXXX,XXXXXXXX,XXXX____,
  ___XX___,__XXX___,__XXXXXX,XXXX____,
  ___XXX__,__XX____,__XXX___,_XXX____,
  ___XXX__,__XX____,__XXX___,_XXX____,
  ____XX__,__XX____,__XXX___,_XXX____,
  ________,__XX____,__XXX___,_XXX____,
  ________,__XX____,__XXX___,_XXX____,
  ________,__XX____,__XXX___,_XXX____,
  XXXXXXX_,__XX____,__XXX___,_XXX____,
  XXXXXXX_,__XX____,__XXX___,_XXX____,
  XXXXXXX_,__XX____,__XXX___,_XXX____,
  ____XXX_,__XX____,__XXX___,_XXX____,
  ____XXX_,__XX____,__XXX___,_XXX____,
  ____XXX_,__XX____,__XXX___,_XXX____,
  ____XXX_,__XX____,__XXX___,_XXX____,
  ____XXX_,__XX__XX,__XXX___,_XXX____,
  ____XXX_,__XXXXXX,X_XXX__X,XXX_____,
  ____XXX_,_XXXXXX_,__XXX__X,XXX_____,
  ____XXX_,_XXXX___,__XXX__X,X_______,
  ____XXX_,__X_____,__XXX___,________,
  ____XXX_,________,__XXX___,________,
  ____XXX_,________,__XXX___,________,
  ___XXXXX,X_______,________,________,
  __XXX_XX,XXXX____,________,________,
  _XXX____,XXXXXXXX,XXXXXXXX,XXXXXX__,
  XXX_____,___XXXXX,XXXXXXXX,XXXXX___,
  _XX_____,________,_XXXXXXX,XXXXX___};

GUI_CONST_STORAGE GUI_CHARINFO_EXT GUI_Fontmyfont33_CharInfo[9] = {
   {  29,  28,   1,   3,  32, acGUI_Fontmyfont33_4E8E } /* code 4E8E */
  ,{  28,  29,   2,   2,  32, acGUI_Fontmyfont33_5173 } /* code 5173 */
  ,{  30,  28,   1,   3,  32, acGUI_Fontmyfont33_5668 } /* code 5668 */
  ,{  28,  31,   2,   1,  32, acGUI_Fontmyfont33_5B66 } /* code 5B66 */
  ,{  29,  29,   2,   2,  32, acGUI_Fontmyfont33_6B22 } /* code 6B22 */
  ,{  30,  29,   1,   2,  32, acGUI_Fontmyfont33_79D1 } /* code 79D1 */
  ,{  30,  30,   1,   1,  32, acGUI_Fontmyfont33_7B97 } /* code 7B97 */
  ,{  29,  29,   1,   2,  32, acGUI_Fontmyfont33_8BA1 } /* code 8BA1 */
  ,{  30,  29,   1,   2,  32, acGUI_Fontmyfont33_8FCE } /* code 8FCE */
};

GUI_CONST_STORAGE GUI_FONT_PROP_EXT GUI_Fontmyfont33_Prop9 = {
   0x8FCE /* first character */
  ,0x8FCE /* last character  */
  ,&GUI_Fontmyfont33_CharInfo[  8] /* address of first character */
  ,(GUI_CONST_STORAGE GUI_FONT_PROP_EXT *)0 /* pointer to next GUI_FONT_PROP_EXT */
};

GUI_CONST_STORAGE GUI_FONT_PROP_EXT GUI_Fontmyfont33_Prop8 = {
   0x8BA1 /* first character */
  ,0x8BA1 /* last character  */
  ,&GUI_Fontmyfont33_CharInfo[  7] /* address of first character */
  ,&GUI_Fontmyfont33_Prop9 /* pointer to next GUI_FONT_PROP_EXT */
};

GUI_CONST_STORAGE GUI_FONT_PROP_EXT GUI_Fontmyfont33_Prop7 = {
   0x7B97 /* first character */
  ,0x7B97 /* last character  */
  ,&GUI_Fontmyfont33_CharInfo[  6] /* address of first character */
  ,&GUI_Fontmyfont33_Prop8 /* pointer to next GUI_FONT_PROP_EXT */
};

GUI_CONST_STORAGE GUI_FONT_PROP_EXT GUI_Fontmyfont33_Prop6 = {
   0x79D1 /* first character */
  ,0x79D1 /* last character  */
  ,&GUI_Fontmyfont33_CharInfo[  5] /* address of first character */
  ,&GUI_Fontmyfont33_Prop7 /* pointer to next GUI_FONT_PROP_EXT */
};

GUI_CONST_STORAGE GUI_FONT_PROP_EXT GUI_Fontmyfont33_Prop5 = {
   0x6B22 /* first character */
  ,0x6B22 /* last character  */
  ,&GUI_Fontmyfont33_CharInfo[  4] /* address of first character */
  ,&GUI_Fontmyfont33_Prop6 /* pointer to next GUI_FONT_PROP_EXT */
};

GUI_CONST_STORAGE GUI_FONT_PROP_EXT GUI_Fontmyfont33_Prop4 = {
   0x5B66 /* first character */
  ,0x5B66 /* last character  */
  ,&GUI_Fontmyfont33_CharInfo[  3] /* address of first character */
  ,&GUI_Fontmyfont33_Prop5 /* pointer to next GUI_FONT_PROP_EXT */
};

GUI_CONST_STORAGE GUI_FONT_PROP_EXT GUI_Fontmyfont33_Prop3 = {
   0x5668 /* first character */
  ,0x5668 /* last character  */
  ,&GUI_Fontmyfont33_CharInfo[  2] /* address of first character */
  ,&GUI_Fontmyfont33_Prop4 /* pointer to next GUI_FONT_PROP_EXT */
};

GUI_CONST_STORAGE GUI_FONT_PROP_EXT GUI_Fontmyfont33_Prop2 = {
   0x5173 /* first character */
  ,0x5173 /* last character  */
  ,&GUI_Fontmyfont33_CharInfo[  1] /* address of first character */
  ,&GUI_Fontmyfont33_Prop3 /* pointer to next GUI_FONT_PROP_EXT */
};

GUI_CONST_STORAGE GUI_FONT_PROP_EXT GUI_Fontmyfont33_Prop1 = {
   0x4E8E /* first character */
  ,0x4E8E /* last character  */
  ,&GUI_Fontmyfont33_CharInfo[  0] /* address of first character */
  ,&GUI_Fontmyfont33_Prop2 /* pointer to next GUI_FONT_PROP_EXT */
};

GUI_CONST_STORAGE GUI_FONT GUI_Fontmyfont33 = {
   GUI_FONTTYPE_PROP_EXT /* type of font    */
  ,33 /* height of font  */
  ,33 /* space of font y */
  ,1 /* magnification x */
  ,1 /* magnification y */
  ,{&GUI_Fontmyfont33_Prop1}
  ,28 /* Baseline */
  ,15 /* Height of lowercase characters */
  ,21 /* Height of capital characters */
};
