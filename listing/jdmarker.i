#line 1 "..\\code\\uCGUI\\JPEG\\jdmarker.c"












 

#line 1 "..\\code\\uCGUI\\JPEG\\jinclude.h"














 


 

#line 1 "..\\code\\uCGUI\\JPEG\\jconfig.h"












 


#line 1 "..\\code\\GUI\\GUI_inc\\GUI.h"





















 






#line 1 "..\\code\\GUI\\GUI_inc\\GUI_ConfDefaults.h"





















 




#line 1 "..\\code\\GUI\\Config\\GUIConf.h"

















 








#line 34 "..\\code\\GUI\\Config\\GUIConf.h"




 









#line 28 "..\\code\\GUI\\GUI_inc\\GUI_ConfDefaults.h"






 




 
#line 46 "..\\code\\GUI\\GUI_inc\\GUI_ConfDefaults.h"




 




























#line 86 "..\\code\\GUI\\GUI_inc\\GUI_ConfDefaults.h"













#line 106 "..\\code\\GUI\\GUI_inc\\GUI_ConfDefaults.h"


 
#line 116 "..\\code\\GUI\\GUI_inc\\GUI_ConfDefaults.h"

#line 124 "..\\code\\GUI\\GUI_inc\\GUI_ConfDefaults.h"

 
#line 133 "..\\code\\GUI\\GUI_inc\\GUI_ConfDefaults.h"

 





 
#line 148 "..\\code\\GUI\\GUI_inc\\GUI_ConfDefaults.h"







 
#line 30 "..\\code\\GUI\\GUI_inc\\GUI.h"
#line 1 "..\\code\\GUI\\GUI_inc\\GUIType.h"





















 




#line 1 "..\\code\\GUI\\GUI_inc\\LCD.h"

















 




#line 24 "..\\code\\GUI\\GUI_inc\\LCD.h"


















 
 
#line 52 "..\\code\\GUI\\GUI_inc\\LCD.h"













 












 










 







 





 

typedef int LCD_DRAWMODE;
typedef unsigned long LCD_COLOR;

 





 

typedef struct { signed short x,y; } GUI_POINT;
typedef struct { signed short x0,y0,x1,y1; } LCD_RECT;
 

typedef struct {
  int              NumEntries; 
  char             HasTrans;         
  const LCD_COLOR  * pPalEntries; 
} LCD_LOGPALETTE; 

 
typedef struct {
  int x,y;
  unsigned char KeyStat;
} LCD_tMouseState;








 

typedef LCD_COLOR      tLCDDEV_Index2Color  (int Index);
typedef unsigned int   tLCDDEV_Color2Index  (LCD_COLOR Color);
typedef unsigned int   tLCDDEV_GetIndexMask (void);
LCD_COLOR      LCD_L0_Index2Color  (int Index);
LCD_COLOR      LCD_L0_1_Index2Color(int Index);
LCD_COLOR      LCD_L0_2_Index2Color(int Index);
LCD_COLOR      LCD_L0_3_Index2Color(int Index);
LCD_COLOR      LCD_L0_4_Index2Color(int Index);
unsigned int   LCD_L0_Color2Index  (LCD_COLOR Color);
unsigned int   LCD_L0_1_Color2Index(LCD_COLOR Color);
unsigned int   LCD_L0_2_Color2Index(LCD_COLOR Color);
unsigned int   LCD_L0_3_Color2Index(LCD_COLOR Color);
unsigned int   LCD_L0_4_Color2Index(LCD_COLOR Color);
unsigned int   LCD_L0_GetIndexMask  (void);
unsigned int   LCD_L0_1_GetIndexMask(void);
unsigned int   LCD_L0_2_GetIndexMask(void);
unsigned int   LCD_L0_3_GetIndexMask(void);
unsigned int   LCD_L0_4_GetIndexMask(void);





 

typedef struct {
  tLCDDEV_Color2Index*  pfColor2Index;
  tLCDDEV_Index2Color*  pfIndex2Color;
  tLCDDEV_GetIndexMask* pfGetIndexMask;
} LCD_API_COLOR_CONV;

extern const LCD_API_COLOR_CONV LCD_API_ColorConv_1;
extern const LCD_API_COLOR_CONV LCD_API_ColorConv_2;
extern const LCD_API_COLOR_CONV LCD_API_ColorConv_4;
extern const LCD_API_COLOR_CONV LCD_API_ColorConv_8666;



















 
typedef void         tLCDDEV_DrawHLine    (int x0, int y0,  int x1);
typedef void         tLCDDEV_DrawVLine    (int x , int y0,  int y1);
typedef void         tLCDDEV_FillRect     (int x0, int y0, int x1, int y1);
typedef unsigned int tLCDDEV_GetPixelIndex(int x, int y);
typedef void         tLCDDEV_SetPixelIndex(int x, int y, int ColorIndex);
typedef void         tLCDDEV_XorPixel     (int x, int y);
typedef void         tLCDDEV_FillPolygon  (const GUI_POINT* pPoints, int NumPoints, int x0, int y0);
typedef void         tLCDDEV_FillPolygonAA(const GUI_POINT* pPoints, int NumPoints, int x0, int y0);
typedef void         tLCDDEV_GetRect      (LCD_RECT*pRect);
typedef int          tLCDDEV_Init         (void);
typedef void         tLCDDEV_On           (void);
typedef void         tLCDDEV_Off          (void);
typedef void         tLCDDEV_SetLUTEntry  (unsigned char Pos, LCD_COLOR color);




 

  typedef struct tLCDDEV_APIList_struct tLCDDEV_APIList;


typedef void tLCDDEV_DrawBitmap   (int x0, int y0, int xsize, int ysize,
                       int BitsPerPixel, int BytesPerLine,
                       const unsigned char  * pData, int Diff,
                       const void* pTrans);    

struct tLCDDEV_APIList_struct {
  tLCDDEV_Color2Index*        pfColor2Index;
  tLCDDEV_Index2Color*        pfIndex2Color;
  tLCDDEV_GetIndexMask*       pfGetIndexMask;
  tLCDDEV_DrawBitmap*         pfDrawBitmap;
  tLCDDEV_DrawHLine*          pfDrawHLine;
  tLCDDEV_DrawVLine*          pfDrawVLine;
  tLCDDEV_FillRect*           pfFillRect;
  tLCDDEV_GetPixelIndex*      pfGetPixelIndex;
  tLCDDEV_GetRect*            pfGetRect;
  tLCDDEV_SetPixelIndex*      pfSetPixelIndex;
  tLCDDEV_XorPixel*           pfXorPixel;
  tLCDDEV_SetLUTEntry*        pfSetLUTEntry;
#line 242 "..\\code\\GUI\\GUI_inc\\LCD.h"
};

  extern const struct tLCDDEV_APIList_struct GUI_MEMDEV__APIList1;
  extern const struct tLCDDEV_APIList_struct GUI_MEMDEV__APIList8;
  extern const struct tLCDDEV_APIList_struct GUI_MEMDEV__APIList16;























 

#line 283 "..\\code\\GUI\\GUI_inc\\LCD.h"





 
 

int LCD_GetXSize(void);
int LCD_GetXSize_1(void);
int LCD_GetXSizeEx(int Index);

int LCD_GetYSize(void);
int LCD_GetYSize_1(void);
int LCD_GetYSizeEx(int Index);

int LCD_GetVXSize(void);
int LCD_GetVXSize_1(void);
int LCD_GetVXSizeEx(int Index);

int LCD_GetVYSize(void);
int LCD_GetVYSize_1(void);
int LCD_GetVYSizeEx(int Index);

unsigned long LCD_GetNumColors(void);
unsigned long LCD_GetNumColors_1(void);
unsigned long LCD_GetNumColorsEx(int Index);

int LCD_GetBitsPerPixel(void);
int LCD_GetBitsPerPixel_1(void);
int LCD_GetBitsPerPixelEx(int Index);

int LCD_GetFixedPalette(void);
int LCD_GetFixedPalette_1(void);
signed long LCD_GetFixedPaletteEx(int Index);

int LCD_GetXMag(void);
int LCD_GetXMag_1(void);
int LCD_GetXMagEx(int Index);

int LCD_GetYMag(void);
int LCD_GetYMag_1(void);
int LCD_GetYMagEx(int Index);

int LCD_GetMirrorXEx(int LayerIndex);
int LCD_GetMirrorYEx(int LayerIndex);
int LCD_GetSwapXYEx(int LayerIndex);

int LCD_GetSwapRBEx(int LayerIndex);
int LCD_GetDeltaModeEx(int LayerIndex);
int LCD_GetBitsPerPixel_L0Ex(int LayerIndex);

int LCD_GetNumLayers(void);



#line 345 "..\\code\\GUI\\GUI_inc\\LCD.h"







 
typedef void         tLCD_HL_DrawHLine    (int x0, int y0,  int x1);
typedef void         tLCD_HL_DrawPixel    (int x0, int y0);

typedef struct {
  tLCD_HL_DrawHLine*          pfDrawHLine;
  tLCD_HL_DrawPixel*          pfDrawPixel;
} tLCD_HL_APIList;

void LCD_DrawHLine(int x0, int y0,  int x1);
void LCD_DrawPixel(int x0, int y0);
void LCD_DrawVLine  (int x, int y0,  int y1);








 

void LCD_SetClipRectEx(const LCD_RECT* pRect);
void LCD_SetClipRectMax(void);

 
signed long  LCD_GetDevCap(int Index);

 
int LCD_Init(void);

void LCD_SetBkColor   (LCD_COLOR Color);  
void LCD_SetColor     (LCD_COLOR Color);  
void LCD_SetPixelIndex(int x, int y, int ColorIndex);

 
void LCD_InitLUT(void);

 

void         LCD_DrawBitmap_RLE8(int x0,int y0,int xsize, int ysize, const unsigned char  *pPixel, const LCD_LOGPALETTE  * pLogPal, int xMag, int yMag);
void         LCD_DrawBitmap_RLE4(int x0,int y0,int xsize, int ysize, const unsigned char  *pPixel, const LCD_LOGPALETTE  * pLogPal, int xMag, int yMag);
void         LCD_DrawBitmap_565 (int x0,int y0,int xsize, int ysize, const unsigned char  *pPixel, const LCD_LOGPALETTE  * pLogPal, int xMag, int yMag);
void         LCD_DrawBitmap_M565(int x0,int y0,int xsize, int ysize, const unsigned char  *pPixel, const LCD_LOGPALETTE  * pLogPal, int xMag, int yMag);

LCD_DRAWMODE LCD_SetDrawMode  (LCD_DRAWMODE dm);
void LCD_SetColorIndex(int Index);
void LCD_SetBkColorIndex(int Index);
void LCD_FillRect(int x0, int y0, int x1, int y1);
typedef void tLCD_SetPixelAA(int x, int y, unsigned char Intens);

void LCD_SetPixelAA(int x, int y, unsigned char Intens);
void LCD_SetPixelAA_NoTrans(int x, int y, unsigned char Intens);

LCD_COLOR    LCD_AA_MixColors(LCD_COLOR Color, LCD_COLOR BkColor, unsigned char Intens);
LCD_COLOR    LCD_MixColors256(LCD_COLOR Color, LCD_COLOR BkColor, unsigned Intens);
LCD_COLOR    LCD_GetPixelColor(int x, int y);      
unsigned int LCD_GetPixelIndex(int x, int y);
int          LCD_GetBkColorIndex (void);
int          LCD_GetColorIndex (void);






 



typedef void tLCD_DrawBitmap(int x0, int y0, int xsize, int ysize,
                             int xMul, int yMul, int BitsPerPixel, int BytesPerLine,
                             const unsigned char  * pPixel, const void * pTrans);
typedef void tRect2TextRect (LCD_RECT * pRect);

struct tLCD_APIList_struct {
  tLCD_DrawBitmap   * pfDrawBitmap;
  tRect2TextRect    * pfRect2TextRect;
};

typedef struct tLCD_APIList_struct tLCD_APIList;

extern tLCD_APIList LCD_APIListCCW;
extern tLCD_APIList LCD_APIListCW;
extern tLCD_APIList LCD_APIList180;

#line 444 "..\\code\\GUI\\GUI_inc\\LCD.h"












 












unsigned char LCD_L0_ControlCache(unsigned char mode);
unsigned char LCD_L0_1_ControlCache(unsigned char mode);
unsigned char LCD_L0_2_ControlCache(unsigned char mode);
unsigned char LCD_L0_3_ControlCache(unsigned char mode);
unsigned char LCD_L0_4_ControlCache(unsigned char mode);
void LCD_L0_Refresh(void);
void LCD_L0_1_Refresh(void);
void LCD_L0_2_Refresh(void);
void LCD_L0_3_Refresh(void);
void LCD_L0_4_Refresh(void);
 
int  LCD_L0_CheckInit(void);        



 









 

int LCD_SelPage  (int NewPage);     
int LCD_ShowPage (int NewPage);     
int LCD_GetSelPage (void);          
int LCD_GetVisPage (void);          








 
  

int              LCD_Color2Index     (LCD_COLOR Color);
LCD_COLOR        LCD_Index2Color     (int Index);
LCD_COLOR        LCD_Index2ColorEx   (int i, unsigned int LayerIndex);






 

void LCD_X_Init(void);
void LCD_X_On  (void);
void LCD_X_Off (void);

char LCD_X_Read00(void);
char LCD_X_Read01(void);
void LCD_X_Write00(char c);
void LCD_X_Write01(char c);
void LCD_X_WriteM01(char * pData, int NumBytes);







 
#line 28 "..\\code\\GUI\\GUI_inc\\GUIType.h"
#line 29 "..\\code\\GUI\\GUI_inc\\GUIType.h"






 

typedef const char *  GUI_ConstString;







 

typedef LCD_COLOR       GUI_COLOR;
typedef LCD_LOGPALETTE  GUI_LOGPALETTE;
typedef LCD_DRAWMODE    GUI_DRAWMODE;
typedef LCD_RECT        GUI_RECT;

typedef struct {
  void      (* pfDraw)(int x0,int y0,int xsize, int ysize, const unsigned char  * pPixel, const LCD_LOGPALETTE  * pLogPal, int xMag, int yMag);
  GUI_COLOR (* pfIndex2Color)(int Index);
} GUI_BITMAP_METHODS;

typedef struct {
  unsigned short XSize;
  unsigned short YSize;
  unsigned short BytesPerLine;
  unsigned short BitsPerPixel;
  const unsigned char  * pData;
  const GUI_LOGPALETTE  * pPal;
  const GUI_BITMAP_METHODS * pMethods;
} GUI_BITMAP;





 
typedef struct {
  unsigned short ID;            
  unsigned short Version;
  unsigned short XSize;
  unsigned short YSize;
  unsigned short BytesPerLine;
  unsigned short BitsPerPixel;
  unsigned short NumColors;
  unsigned short HasTrans;
} GUI_BITMAP_STREAM;

typedef struct {
  int x,y;
  unsigned char Pressed;
} GUI_PID_STATE;







 



 
typedef struct {
  signed short c0;
  signed short c1;
} GUI_FONT_TRANSLIST;

typedef struct {
  unsigned short FirstChar;
  unsigned short LastChar;
  const GUI_FONT_TRANSLIST  * pList;
} GUI_FONT_TRANSINFO;

typedef struct {
  unsigned char XSize;
  unsigned char XDist;
  unsigned char BytesPerLine;
  const unsigned char  * pData;
} GUI_CHARINFO;

typedef struct GUI_FONT_PROP {
  unsigned short First;                                 
  unsigned short Last;                                  
  const GUI_CHARINFO  * paCharInfo;             
  const struct GUI_FONT_PROP  * pNext;         
} GUI_FONT_PROP;

typedef struct {
  const unsigned char  * pData;
  const unsigned char  * pTransData;
  const GUI_FONT_TRANSINFO  * pTrans;
  unsigned short FirstChar;
  unsigned short LastChar;
  unsigned char XSize;
  unsigned char XDist;
  unsigned char BytesPerLine;
} GUI_FONT_MONO;


typedef struct GUI_FONT_INFO {
  unsigned short First;                         
  unsigned short Last;                          
  const GUI_CHARINFO* paCharInfo;     
  const struct GUI_FONT_INFO* pNext;  
} GUI_FONT_INFO;










 
typedef struct {
  unsigned short Flags;
  unsigned char Baseline;
  unsigned char LHeight;      
  unsigned char CHeight;      
} GUI_FONTINFO;













 
typedef unsigned short  tGUI_GetCharCode(const char  *s);
typedef int  tGUI_GetCharSize(const char  *s);
typedef int  tGUI_CalcSizeOfChar(unsigned short Char);
typedef int  tGUI_Encode(char *s, unsigned short Char);

typedef struct {
  tGUI_GetCharCode*            pfGetCharCode;
  tGUI_GetCharSize*            pfGetCharSize;
  tGUI_CalcSizeOfChar*         pfCalcSizeOfChar;
  tGUI_Encode*                 pfEncode;
} GUI_UC_ENC_APILIST;






 

typedef int  tGUI_GetLineDistX(const char  *s, int Len);
typedef int  tGUI_GetLineLen(const char  *s, int MaxLen);
typedef void tGL_DispLine(const char  *s, int Len);

typedef struct {
  tGUI_GetLineDistX*          pfGetLineDistX;
  tGUI_GetLineLen*            pfGetLineLen;
  tGL_DispLine*               pfDispLine;
} tGUI_ENC_APIList;

extern const tGUI_ENC_APIList GUI_ENC_APIList_SJIS;













 

typedef struct GUI_FONT GUI_FONT;

typedef void GUI_DISPCHAR(unsigned short c);
typedef int  GUI_GETCHARDISTX(unsigned short c);
typedef void GUI_GETFONTINFO(const GUI_FONT  * pFont, GUI_FONTINFO * pfi);
typedef char GUI_ISINFONT   (const GUI_FONT  * pFont, unsigned short c);











 
void GUIMONO_DispChar (unsigned short c); int GUIMONO_GetCharDistX(unsigned short c); void GUIMONO_GetFontInfo (const GUI_FONT  * pFont, GUI_FONTINFO * pfi); char GUIMONO_IsInFont (const GUI_FONT  * pFont, unsigned short c);
#line 243 "..\\code\\GUI\\GUI_inc\\GUIType.h"

 
void GUIPROP_DispChar (unsigned short c); int GUIPROP_GetCharDistX(unsigned short c); void GUIPROP_GetFontInfo (const GUI_FONT  * pFont, GUI_FONTINFO * pfi); char GUIPROP_IsInFont (const GUI_FONT  * pFont, unsigned short c);
#line 252 "..\\code\\GUI\\GUI_inc\\GUIType.h"

 
void GUIPROP_DispChar (unsigned short c); int GUIPROP_GetCharDistX(unsigned short c); void GUIPROP_GetFontInfo (const GUI_FONT  * pFont, GUI_FONTINFO * pfi); char GUIPROP_IsInFont (const GUI_FONT  * pFont, unsigned short c);
#line 261 "..\\code\\GUI\\GUI_inc\\GUIType.h"

 
void GUIPROPAA_DispChar (unsigned short c); int GUIPROPAA_GetCharDistX(unsigned short c); void GUIPROPAA_GetFontInfo (const GUI_FONT  * pFont, GUI_FONTINFO * pfi); char GUIPROPAA_IsInFont (const GUI_FONT  * pFont, unsigned short c);
#line 270 "..\\code\\GUI\\GUI_inc\\GUIType.h"

 
void GUIPROP_AA2_DispChar (unsigned short c); int GUIPROP_AA2_GetCharDistX(unsigned short c); void GUIPROP_AA2_GetFontInfo (const GUI_FONT  * pFont, GUI_FONTINFO * pfi); char GUIPROP_AA2_IsInFont (const GUI_FONT  * pFont, unsigned short c);
#line 279 "..\\code\\GUI\\GUI_inc\\GUIType.h"

 
void GUIPROP_AA2_DispChar (unsigned short c); int GUIPROP_AA2_GetCharDistX(unsigned short c); void GUIPROP_AA2_GetFontInfo (const GUI_FONT  * pFont, GUI_FONTINFO * pfi); char GUIPROP_AA2_IsInFont (const GUI_FONT  * pFont, unsigned short c);
#line 288 "..\\code\\GUI\\GUI_inc\\GUIType.h"

 
void GUIPROP_AA4_DispChar (unsigned short c); int GUIPROP_AA4_GetCharDistX(unsigned short c); void GUIPROP_AA4_GetFontInfo (const GUI_FONT  * pFont, GUI_FONTINFO * pfi); char GUIPROP_AA4_IsInFont (const GUI_FONT  * pFont, unsigned short c);
#line 297 "..\\code\\GUI\\GUI_inc\\GUIType.h"

 
void GUIPROP_AA4_DispChar (unsigned short c); int GUIPROP_AA4_GetCharDistX(unsigned short c); void GUIPROP_AA4_GetFontInfo (const GUI_FONT  * pFont, GUI_FONTINFO * pfi); char GUIPROP_AA4_IsInFont (const GUI_FONT  * pFont, unsigned short c);
#line 306 "..\\code\\GUI\\GUI_inc\\GUIType.h"





struct GUI_FONT {
  GUI_DISPCHAR*     pfDispChar; 
  GUI_GETCHARDISTX* pfGetCharDistX; 
  GUI_GETFONTINFO*  pfGetFontInfo; 
  GUI_ISINFONT*     pfIsInFont;
  const tGUI_ENC_APIList* pafEncode;
  unsigned char YSize;
  unsigned char YDist;
  unsigned char XMag;
  unsigned char YMag;
  union {
    const void           * pFontData;
    const GUI_FONT_MONO  * pMono;
    const GUI_FONT_PROP  * pProp;
  } p;
  unsigned char Baseline;
  unsigned char LHeight;      
  unsigned char CHeight;      
};




 
typedef struct {
  unsigned long ID;            
  unsigned short YSize;         
  unsigned short YDist;         
  unsigned short Baseline;      
  unsigned short LHeight;       
  unsigned short CHeight;       
  unsigned short NumAreas;      
} GUI_SI_FONT;

typedef struct {
  unsigned short First;         
  unsigned short Last;          
} GUI_SIF_CHAR_AREA;

typedef struct {
  unsigned short XSize;         
  unsigned short XDist;         
  unsigned short BytesPerLine;  
  unsigned short Dummy;
  unsigned long OffData;       
} GUI_SIF_CHARINFO;

typedef struct tGUI_SIF_APIList_struct {
  GUI_DISPCHAR     * pDispChar;
  GUI_GETCHARDISTX * pGetCharDistX;
  GUI_GETFONTINFO  * pGetFontInfo;
  GUI_ISINFONT     * pIsInFont;
} tGUI_SIF_APIList;




extern const tGUI_SIF_APIList GUI_SIF_APIList_Prop;







 





typedef     signed short      GUI_HWIN;


 
#line 31 "..\\code\\GUI\\GUI_inc\\GUI.h"
#line 1 "..\\code\\GUI\\GUI_inc\\GUIVersion.h"

















 








 
#line 32 "..\\code\\GUI\\GUI_inc\\GUI.h"





extern const GUI_FONT GUI_FontHZ_chinese_19;    
extern const GUI_FONT GUI_FontHZ_SimSun_16;





 









 











 

#line 83 "..\\code\\GUI\\GUI_inc\\GUI.h"













 

#line 106 "..\\code\\GUI\\GUI_inc\\GUI.h"




#line 120 "..\\code\\GUI\\GUI_inc\\GUI.h"

#line 131 "..\\code\\GUI\\GUI_inc\\GUI.h"

#line 141 "..\\code\\GUI\\GUI_inc\\GUI.h"

#line 152 "..\\code\\GUI\\GUI_inc\\GUI.h"






#line 166 "..\\code\\GUI\\GUI_inc\\GUI.h"

#line 177 "..\\code\\GUI\\GUI_inc\\GUI.h"

#line 188 "..\\code\\GUI\\GUI_inc\\GUI.h"




























 






 











 













 












 

#line 287 "..\\code\\GUI\\GUI_inc\\GUI.h"










 











 


 
extern const GUI_FONT GUI_Font8_ASCII,        GUI_Font8_1;
extern const GUI_FONT GUI_Font10S_ASCII,      GUI_Font10S_1;
extern const GUI_FONT GUI_Font10_ASCII,       GUI_Font10_1;
extern const GUI_FONT GUI_Font13_ASCII,       GUI_Font13_1;
extern const GUI_FONT GUI_Font13B_ASCII,      GUI_Font13B_1;
extern const GUI_FONT GUI_Font13H_ASCII,      GUI_Font13H_1;
extern const GUI_FONT GUI_Font13HB_ASCII,     GUI_Font13HB_1;
extern const GUI_FONT GUI_Font16_ASCII,       GUI_Font16_1,       GUI_Font16_HK,    GUI_Font16_1HK;
extern const GUI_FONT GUI_Font16B_ASCII,      GUI_Font16B_1;
extern const GUI_FONT GUI_Font24_ASCII,       GUI_Font24_1;
extern const GUI_FONT GUI_Font24B_ASCII,      GUI_Font24B_1;
extern const GUI_FONT GUI_Font32_ASCII,       GUI_Font32_1;
extern const GUI_FONT GUI_Font32B_ASCII,      GUI_Font32B_1;

 
extern const GUI_FONT GUI_Font4x6;
extern const GUI_FONT GUI_Font6x8,            GUI_Font6x9;
extern const GUI_FONT GUI_Font8x8,            GUI_Font8x9;
extern const GUI_FONT GUI_Font8x10_ASCII;
extern const GUI_FONT GUI_Font8x12_ASCII;
extern const GUI_FONT GUI_Font8x13_ASCII,     GUI_Font8x13_1;
extern const GUI_FONT GUI_Font8x15B_ASCII,    GUI_Font8x15B_1;
extern const GUI_FONT GUI_Font8x16,           GUI_Font8x17,       GUI_Font8x18;
extern const GUI_FONT GUI_Font8x16x1x2,       GUI_Font8x16x2x2,   GUI_Font8x16x3x3;

 
extern const GUI_FONT GUI_FontD24x32;
extern const GUI_FONT GUI_FontD32;
extern const GUI_FONT GUI_FontD36x48;
extern const GUI_FONT GUI_FontD48;
extern const GUI_FONT GUI_FontD48x64;
extern const GUI_FONT GUI_FontD64;
extern const GUI_FONT GUI_FontD60x80;
extern const GUI_FONT GUI_FontD80;

 
extern const GUI_FONT GUI_FontComic18B_ASCII, GUI_FontComic18B_1;
extern const GUI_FONT GUI_FontComic24B_ASCII, GUI_FontComic24B_1;













 

#line 374 "..\\code\\GUI\\GUI_inc\\GUI.h"

#line 383 "..\\code\\GUI\\GUI_inc\\GUI.h"

 






 











 
 










 


#line 433 "..\\code\\GUI\\GUI_inc\\GUI.h"









 

typedef union {
  unsigned char  aColorIndex8[2];
  unsigned short aColorIndex16[2];
} LCD_COLORINDEX_UNION;

typedef struct {
 
  LCD_COLORINDEX_UNION LCD;
  LCD_RECT       ClipRect;
  unsigned char             DrawMode;
  unsigned char             SelLayer;
  unsigned char             TextStyle;
 
  GUI_RECT* pClipRect_HL;                 
  unsigned char        PenSize;
  unsigned char        PenShape;
  unsigned char        LineStyle;
  unsigned char        FillStyle;
 
  const GUI_FONT            * pAFont;
  const GUI_UC_ENC_APILIST * pUC_API;     
  signed short LBorder;
  signed short DispPosX, DispPosY;
  signed short DrawPosX, DrawPosY;
  signed short TextMode, TextAlign;
  GUI_COLOR Color, BkColor;            
 

    const GUI_RECT* WM__pUserClipRect;
    GUI_HWIN hAWin;
    int xOff, yOff;

 





 

    const tLCD_HL_APIList* pLCD_HL;      
    unsigned char AA_Factor;
    unsigned char AA_HiResEnable;

} GUI_CONTEXT;

 
#line 500 "..\\code\\GUI\\GUI_inc\\GUI.h"






 
int          GUI_Init(void);
void         GUI_SetDefault(void);
GUI_DRAWMODE GUI_SetDrawMode(GUI_DRAWMODE dm);
const char * GUI_GetVersionString(void);
void         GUI_SaveContext_W   (      GUI_CONTEXT* pContext);
void         GUI_RestoreContext(const GUI_CONTEXT* pContext);







 

int  GUI_RectsIntersect(const GUI_RECT* pr0, const GUI_RECT* pr1);
void GUI_MoveRect       (GUI_RECT *pRect, int x, int y);
void GUI_MergeRect      (GUI_RECT* pDest, const GUI_RECT* pr0, const GUI_RECT* pr1);
int  GUI__IntersectRects(GUI_RECT* pDest, const GUI_RECT* pr0, const GUI_RECT* pr1);
void GUI__IntersectRect (GUI_RECT* pDest, const GUI_RECT* pr0);
void GUI__ReduceRect    (GUI_RECT* pDest, const GUI_RECT *pRect, int Dist);






 

int  GUI__DivideRound     (int a, int b);
signed long  GUI__DivideRound32   (signed long a, signed long b);
int  GUI__SetText(signed short* phText, const char* s);








 
 
GUI_COLOR GUI_GetBkColor     (void);
GUI_COLOR GUI_GetColor       (void);
int       GUI_GetBkColorIndex(void);
int       GUI_GetColorIndex  (void);
unsigned char        GUI_GetPenSize     (void);
unsigned char        GUI_GetPenShape    (void);
unsigned char        GUI_GetLineStyle   (void);
unsigned char        GUI_GetFillStyle   (void);

void      GUI_SetBkColor   (GUI_COLOR);
void      GUI_SetColor     (GUI_COLOR);
void      GUI_SetBkColorIndex(int Index);
void      GUI_SetColorIndex(int Index);

unsigned char        GUI_SetPenSize   (unsigned char Size);
unsigned char        GUI_SetPenShape  (unsigned char Shape);
unsigned char        GUI_SetLineStyle (unsigned char Style);
unsigned char        GUI_SetFillStyle (unsigned char Style);

 
char      GUI_GetDecChar(void);
char      GUI_SetDecChar(char c);







 

int       GUI_Color2Index(GUI_COLOR color);
GUI_COLOR GUI_Color2VisColor(GUI_COLOR color);
char      GUI_ColorIsAvailable(GUI_COLOR color);
GUI_COLOR GUI_Index2Color(int Index);
void      GUI_InitLUT(void);
void      GUI_SetLUTEntry (unsigned char Pos, GUI_COLOR Color);
void      GUI_SetLUTColor (unsigned char Pos, GUI_COLOR Color);
void      GUI_SetLUTColorEx(unsigned char Pos, LCD_COLOR Color, unsigned int LayerIndex);
unsigned long       GUI_CalcColorDist (GUI_COLOR Color0, GUI_COLOR  Color1);
unsigned long       GUI_CalcVisColorError(GUI_COLOR color);






 
void GUI_Log      (const char *s);
void GUI_Log1     (const char *s, int p0);
void GUI_Log2     (const char *s, int p0, int p1);
void GUI_Log3     (const char *s, int p0, int p1, int p2);
void GUI_Log4     (const char *s, int p0, int p1, int p2,int p3);
void GUI_Warn     (const char *s);
void GUI_Warn1    (const char *s, int p0);
void GUI_Warn2    (const char *s, int p0, int p1);
void GUI_Warn3    (const char *s, int p0, int p1, int p2);
void GUI_Warn4    (const char *s, int p0, int p1, int p2, int p3);
void GUI_ErrorOut (const char *s);
void GUI_ErrorOut1(const char *s, int p0);
void GUI_ErrorOut2(const char *s, int p0, int p1);
void GUI_ErrorOut3(const char *s, int p0, int p1, int p2);
void GUI_ErrorOut4(const char *s, int p0, int p1, int p2, int p3);






 

int  GUI_BMP_Draw         (const void * pFileData, int x0, int y0);
int  GUI_BMP_GetXSize     (const void * pFileData);
int  GUI_BMP_GetYSize     (const void * pFileData);
void GUI_Clear            (void);
void GUI_ClearRect        (int x0, int y0, int x1, int y1);
void GUI_ClearRectEx      (const GUI_RECT* pRect);
void GUI_DrawArc          (int x0, int y0, int rx, int ry, int a0, int a1);
void GUI_DrawBitmap       (const GUI_BITMAP  * pBM, int x0, int y0);
void GUI_DrawBitmapMag    (const GUI_BITMAP  * pBM, int x0, int y0, int XMul, int YMul);
void GUI_DrawBitmapEx     (const GUI_BITMAP  * pBitmap, int x0, int y0, int xCenter, int yCenter, int xMag, int yMag);
void GUI_DrawBitmapExp    (int x0, int y0, int XSize, int YSize, int XMul,  int YMul, int BitsPerPixel, int BytesPerLine, const unsigned char  * pData, const GUI_LOGPALETTE  * pPal);
void GUI_DrawCircle       (int x0, int y0, int r);
void GUI_DrawEllipse      (int x0, int y0, int rx, int ry);
void GUI_DrawGraph        (signed short *pay, int NumPoints, int x0, int y0);
void GUI_DrawHLine        (int y0, int x0, int x1);
void GUI_DrawLine         (int x0, int y0, int x1, int y1);
void GUI_DrawLineRel      (int dx, int dy);
void GUI_DrawLineTo       (int x, int y);
void GUI_DrawPie          (int x0, int y0, int r, int a0, int a1, int Type);
void GUI_DrawPixel        (int x, int y);
void GUI_DrawPoint        (int x, int y);
void GUI_DrawPolygon      (const GUI_POINT* pPoints, int NumPoints, int x0, int y0);
void GUI_DrawPolyLine     (const GUI_POINT* pPoints, int NumPoints, int x0, int y0);
void GUI_DrawFocusRect    (const GUI_RECT *pRect, int Dist);
void GUI_DrawRect         (int x0, int y0, int x1, int y1);
void GUI_DrawRectEx       (const GUI_RECT *pRect);
void GUI_DrawVLine        (int x0, int y0, int y1);
void GUI_FillCircle       (int x0, int y0, int r);
void GUI_FillEllipse      (int x0, int y0, int rx, int ry);
void GUI_FillPolygon      (const GUI_POINT* pPoints, int NumPoints, int x0, int y0);
void GUI_FillRect         (int x0, int y0, int x1, int y1);
void GUI_FillRectEx       (const GUI_RECT* pRect);
void GUI_GetClientRect    (GUI_RECT* pRect);
void GUI_InvertRect       (int x0, int y0, int x1, int y1);
void GUI_MoveRel          (int dx, int dy);
void GUI_MoveTo           (int x, int y);






 
typedef struct {
  int XSize;
  int YSize;
} GUI_JPEG_INFO;

int  GUI_JPEG_Draw        (const void * pFileData, int DataSize, int x0, int y0);
int  GUI_JPEG_GetInfo     (const void * pFileData, int DataSize, GUI_JPEG_INFO* pInfo);






 

typedef struct {
  const  GUI_BITMAP * pBitmap;
  int xHot, yHot;
} GUI_CURSOR;


  void               GUI_CURSOR_Activate   (void);
  void               GUI_CURSOR_Deactivate (void);
  void               GUI_CURSOR_Hide       (void);
  void               GUI_CURSOR_SetXor     (const GUI_BITMAP * pBM, int x, int y);
  void               GUI_CURSOR_SetPosition(int x, int y);
  const GUI_CURSOR  * GUI_CURSOR_Select     (const GUI_CURSOR  * pCursor);
  void               GUI_CURSOR_Show       (void);










 
extern const GUI_CURSOR GUI_CursorArrowS,  GUI_CursorArrowSI;
extern const GUI_CURSOR GUI_CursorArrowM,  GUI_CursorArrowMI;
extern const GUI_CURSOR GUI_CursorArrowL,  GUI_CursorArrowLI;
extern const GUI_CURSOR GUI_CursorCrossS,  GUI_CursorCrossSI;
extern const GUI_CURSOR GUI_CursorCrossM,  GUI_CursorCrossMI;
extern const GUI_CURSOR GUI_CursorCrossL,  GUI_CursorCrossLI;
extern const GUI_CURSOR GUI_CursorHeaderM, GUI_CursorHeaderMI;

extern const GUI_BITMAP GUI_BitmapArrowS, GUI_BitmapArrowSI;
extern const GUI_BITMAP GUI_BitmapArrowM, GUI_BitmapArrowMI;
extern const GUI_BITMAP GUI_BitmapArrowL, GUI_BitmapArrowLI;
extern const GUI_BITMAP GUI_BitmapCrossS, GUI_BitmapCrossSI;
extern const GUI_BITMAP GUI_BitmapCrossM, GUI_BitmapCrossMI;
extern const GUI_BITMAP GUI_BitmapCrossL, GUI_BitmapCrossLI;






 

void  GUI_DispCEOL (void);
void  GUI_DispChar  (unsigned short c);
void  GUI_DispChars (unsigned short c, int Cnt);
void  GUI_DispCharAt(unsigned short c, signed short x, signed short y);
void  GUI_DispString         (const char  *s);
void  GUI_DispStringAt       (const char  *s, int x, int y);
void  GUI_DispStringAtCEOL   (const char  *s, int x, int y);
void  GUI_DispStringHCenterAt(const char  *s, int x, int y);
void  GUI__DispStringInRect  (const char  *s, GUI_RECT* pRect, int TextAlign, int MaxNumChars);
void  GUI_DispStringInRect   (const char  *s, GUI_RECT* pRect, int Flags);

  void  GUI_DispStringInRectEx (const char  *s, GUI_RECT* pRect, int TextAlign, int MaxLen, const tLCD_APIList * pLCD_Api);

void  GUI_DispStringInRectMax(const char  *s, GUI_RECT* pRect, int TextAlign, int MaxLen);  
void  GUI_DispStringLen      (const char  *s, int Len);
void  GUI_GetTextExtend(GUI_RECT* pRect, const char  * s, int Len);
int   GUI_GetYAdjust(void);
int   GUI_GetDispPosX(void);
int   GUI_GetDispPosY(void);
const GUI_FONT  * GUI_GetFont(void);
int   GUI_GetCharDistX(unsigned short c);
int   GUI_GetStringDistX(const char  *s);
int   GUI_GetFontDistY(void);
int   GUI_GetFontSizeY(void);
void  GUI_GetFontInfo   (const GUI_FONT  * pFont, GUI_FONTINFO* pfi);
int   GUI_GetYSizeOfFont(const GUI_FONT  * pFont);
int   GUI_GetYDistOfFont(const GUI_FONT  * pFont);
int   GUI_GetTextAlign(void);
int   GUI_GetTextMode(void);
char  GUI_IsInFont(const GUI_FONT  * pFont, unsigned short c);
int   GUI_SetTextAlign(int Align);
int   GUI_SetTextMode(int Mode);
char  GUI_SetTextStyle(char Style);
int   GUI_SetLBorder(int x);
void  GUI_SetOrg(int x, int y);
const GUI_FONT  * GUI_SetFont(const GUI_FONT  * pNewFont);
char  GUI_GotoXY(int x, int y);
char  GUI_GotoX(int x);
char  GUI_GotoY(int y);
void  GUI_DispNextLine(void);






 
void GUI_SIF_CreateFont(void * pFontData, GUI_FONT * pFont, const tGUI_SIF_APIList * pFontType);
void GUI_SIF_DeleteFont(GUI_FONT * pFont);






 

int   GUI_UC_Encode           (char* s, unsigned short Char);
int   GUI_UC_GetCharSize      (const char  * s);
unsigned short   GUI_UC_GetCharCode      (const char  * s);
void  GUI_UC_SetEncodeNone    (void);
void  GUI_UC_SetEncodeUTF8    (void);

void GUI_UC_DispString(const unsigned short  *s);
void GUI_UC2DB (unsigned short Code, unsigned char* pOut);
unsigned short  GUI_DB2UC (unsigned char Byte0, unsigned char Byte1);






 

void GUI_DispBin  (unsigned long  v, unsigned char Len);
void GUI_DispBinAt(unsigned long  v, signed short x, signed short y, unsigned char Len);
void GUI_DispDec  (signed long v, unsigned char Len);
void GUI_DispDecAt (signed long v, signed short x, signed short y, unsigned char Len);
void GUI_DispDecMin(signed long v);
void GUI_DispDecShift(signed long v, unsigned char Len, unsigned char Shift);
void GUI_DispDecSpace(signed long v, unsigned char MaxDigits);
void GUI_DispHex  (unsigned long v, unsigned char Len);
void GUI_DispHexAt(unsigned long v, signed short x, signed short y, unsigned char Len);
void GUI_DispSDec(signed long v, unsigned char Len);
void GUI_DispSDecShift(signed long v, unsigned char Len, unsigned char Shift);










 

void GUI_DispFloat    (float v, char Len);
void GUI_DispFloatFix (float v, char Len, char Fract);
void GUI_DispFloatMin (float v, char Fract);
void GUI_DispSFloatFix(float v, char Len, char Fract);
void GUI_DispSFloatMin(float v, char Fract);







 


   
  signed short  GUI_ALLOC_GetUsed        (void);
  signed short  GUI_ALLOC_GetNumFreeBytes(void);


signed short           GUI_ALLOC_AllocInit  (const void *pInitData, signed short Size);
signed short           GUI_ALLOC_AllocNoInit(signed short size);
signed short           GUI_ALLOC_AllocZero  (signed short size);
void               GUI_ALLOC_Free       (signed short  hMem);
void               GUI_ALLOC_FreePtr    (signed short *phMem);
signed short GUI_ALLOC_GetSize    (signed short  hMem);
signed short GUI_ALLOC_GetMaxSize (void);
void*              GUI_ALLOC_h2p        (signed short  hMem);
void               GUI_ALLOC_Init       (void);
signed short           GUI_ALLOC_Realloc    (signed short hOld, int NewSize);






 




#line 908 "..\\code\\GUI\\GUI_inc\\GUI.h"

void GUI_SelectLCD(void);
unsigned int GUI_SelectLayer(unsigned int Index);






 

typedef signed short GUI_MEASDEV_Handle;

GUI_MEASDEV_Handle GUI_MEASDEV_Create (void);
void               GUI_MEASDEV_Delete (GUI_MEASDEV_Handle hMemDev);
void               GUI_MEASDEV_Select (GUI_MEASDEV_Handle hMem);
void               GUI_MEASDEV_GetRect(GUI_MEASDEV_Handle hMem, GUI_RECT *pRect);
void               GUI_MEASDEV_ClearRect(GUI_MEASDEV_Handle hMem);






 
void GUI_RotatePolygon(GUI_POINT* pDest, const GUI_POINT* pSrc, int NumPoints, float Angle);
void GUI_MagnifyPolygon(GUI_POINT* pDest, const GUI_POINT* pSrc, int NumPoints, int Mag);
void GUI_EnlargePolygon(GUI_POINT* pDest, const GUI_POINT* pSrc, int NumPoints, int Len);






 
void GUI_DrawStreamedBitmap(const GUI_BITMAP_STREAM *pBitmapStream, int x, int y);






 
typedef void GUI_CALLBACK_VOID_U8_P(unsigned char Data, void * p);

void GUI_BMP_SerializeEx(GUI_CALLBACK_VOID_U8_P * pfSerialize, int x0, int y0, int xSize, int ySize, void * p);
void GUI_BMP_Serialize  (GUI_CALLBACK_VOID_U8_P * pfSerialize, void * p);






 
void GUI_Delay  (int Period);
int  GUI_GetTime(void);
int  GUI_Exec(void);          
int  GUI_Exec1(void);         








 
int     GUI_MessageBox   (const char * sMessage, const char * sCaption, int Flags);










 

typedef struct {
  int Time;
  unsigned long            Context;
} GUI_TIMER_MESSAGE;

typedef signed short GUI_TIMER_HANDLE;
typedef void GUI_TIMER_CALLBACK(  GUI_TIMER_MESSAGE* pTM);

GUI_TIMER_HANDLE GUI_TIMER_Create   (GUI_TIMER_CALLBACK* cb, int Time,  unsigned long Context, int Flags);
void             GUI_TIMER_Delete   (GUI_TIMER_HANDLE hObj);

 
void GUI_TIMER_SetPeriod (GUI_TIMER_HANDLE hObj, int Period);
void GUI_TIMER_SetTime   (GUI_TIMER_HANDLE hObj, int Period);
void GUI_TIMER_SetDelay  (GUI_TIMER_HANDLE hObj, int Delay);
void GUI_TIMER_Restart   (GUI_TIMER_HANDLE hObj);
int  GUI_TIMER_Exec(void);







 

void GUI_AA_DisableHiRes   (void);
void GUI_AA_EnableHiRes    (void);
int  GUI_AA_GetFactor      (void);
void GUI_AA_SetFactor      (int Factor);
void GUI_AA_DrawArc        (int x0, int y0, int rx, int ry, int a0, int a1);
void GUI_AA_DrawLine       (int x0, int y0, int x1, int y1);
void GUI_AA_DrawPolyOutline(const GUI_POINT* pSrc, int NumPoints, int Thickness, int x, int y);
void GUI_AA_FillCircle     (int x0, int y0, int r);
void GUI_AA_FillPolygon    (GUI_POINT* pPoints, int NumPoints, int x0, int y0);






 

 
void GUI_StoreKeyMsg(int Key, int Pressed);
void GUI_SendKeyMsg (int Key, int Pressed);
int  GUI_PollKeyMsg(void);

 
typedef int GUI_KEY_MSG_HOOK(int Key, int Pressed);
extern  GUI_KEY_MSG_HOOK* GUI_pfKeyMsgHook;
GUI_KEY_MSG_HOOK* GUI_SetKeyMsgHook(GUI_KEY_MSG_HOOK* pHook);

 
int  GUI_GetKey(void);
int  GUI_WaitKey(void);
void GUI_StoreKey(int c);
void GUI_ClearKeyBuffer(void);




 
void GUI_WaitEvent(void);




 

void GUI_PID_StoreState(const GUI_PID_STATE *pState);
int  GUI_PID_GetState  (      GUI_PID_STATE *pState);




 
int  GUI_MOUSE_GetState  (      GUI_PID_STATE *pState);
void GUI_MOUSE_StoreState(const GUI_PID_STATE *pState);




 

int  GUI_TOUCH_GetState     (GUI_PID_STATE *pState);
void GUI_TOUCH_GetUnstable  (int* px, int* py);   
void GUI_TOUCH_StoreState   (int x, int y);
void GUI_TOUCH_StoreStateEx (const GUI_PID_STATE *pState);
void GUI_TOUCH_StoreUnstable(int x, int y);





 
void GUI_MOUSE_DRIVER_PS2_Init(void);                
void GUI_MOUSE_DRIVER_PS2_OnRx(unsigned char Data);





 
void GUI_TOUCH_Exec(void);
int  GUI_TOUCH_Calibrate(int Coord, int Log0, int Log1, int Phys0, int Phys1);
void GUI_TOUCH_SetDefaultCalibration(void);
int  GUI_TOUCH_GetxPhys(void);     
int  GUI_TOUCH_GetyPhys(void);     
void GUI_TOUCH_GetCalData(int Coord, int* pMin,int* pMax);













 

void GUI_TOUCH_X_ActivateX(void);
void GUI_TOUCH_X_ActivateY(void);
void GUI_TOUCH_X_Disable(void);
int  GUI_TOUCH_X_MeasureX(void);
int  GUI_TOUCH_X_MeasureY(void);






 

extern const GUI_BITMAP_METHODS GUI_BitmapMethodsRLE4;
extern const GUI_BITMAP_METHODS GUI_BitmapMethodsRLE8;
extern const GUI_BITMAP_METHODS GUI_BitmapMethods565;
extern const GUI_BITMAP_METHODS GUI_BitmapMethodsM565;














 

#line 1402 "..\\code\\GUI\\GUI_inc\\GUI.h"






 

#line 1420 "..\\code\\GUI\\GUI_inc\\GUI.h"



 
#line 17 "..\\code\\uCGUI\\JPEG\\jconfig.h"




 




 






 
#line 42 "..\\code\\uCGUI\\JPEG\\jconfig.h"




 









 











 










 






 














#line 21 "..\\code\\uCGUI\\JPEG\\jinclude.h"











 

#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"
 






 

 
 
 





 





#line 34 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"




  typedef signed int ptrdiff_t;



  



    typedef unsigned int size_t;    
#line 57 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



   



      typedef unsigned short wchar_t;  
#line 82 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



    




   




  typedef long double max_align_t;









#line 114 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



 

#line 36 "..\\code\\uCGUI\\JPEG\\jinclude.h"


#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
 
 
 




 
 



 






   














  


 








#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


  



    typedef unsigned int size_t;    
#line 70 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"






    



    typedef unsigned short wchar_t;  
#line 91 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { long long quot, rem; } lldiv_t;
    


#line 112 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   



 

   




 
#line 131 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   


 
extern __declspec(__nothrow) int __aeabi_MB_CUR_MAX(void);

   




 

   




 




extern __declspec(__nothrow) double atof(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int atoi(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) long int atol(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) long long atoll(const char *  ) __attribute__((__nonnull__(1)));
   



 


extern __declspec(__nothrow) double strtod(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

















 

extern __declspec(__nothrow) float strtof(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) long double strtold(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

 

extern __declspec(__nothrow) long int strtol(const char * __restrict  ,
                        char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



























 
extern __declspec(__nothrow) unsigned long int strtoul(const char * __restrict  ,
                                       char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   


























 

 
extern __declspec(__nothrow) long long strtoll(const char * __restrict  ,
                                  char ** __restrict  , int  )
                          __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) unsigned long long strtoull(const char * __restrict  ,
                                            char ** __restrict  , int  )
                                   __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) int rand(void);
   







 
extern __declspec(__nothrow) void srand(unsigned int  );
   






 

struct _rand_state { int __x[57]; };
extern __declspec(__nothrow) int _rand_r(struct _rand_state *);
extern __declspec(__nothrow) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __declspec(__nothrow) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __declspec(__nothrow) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);
   


 

extern __declspec(__nothrow) void *calloc(size_t  , size_t  );
   



 
extern __declspec(__nothrow) void free(void *  );
   





 
extern __declspec(__nothrow) void *malloc(size_t  );
   



 
extern __declspec(__nothrow) void *realloc(void *  , size_t  );
   













 

extern __declspec(__nothrow) int posix_memalign(void **  , size_t  , size_t  );
   









 

typedef int (*__heapprt)(void *, char const *, ...);
extern __declspec(__nothrow) void __heapstats(int (*  )(void *  ,
                                           char const *  , ...),
                        void *  ) __attribute__((__nonnull__(1)));
   










 
extern __declspec(__nothrow) int __heapvalid(int (*  )(void *  ,
                                           char const *  , ...),
                       void *  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
   







 

extern __declspec(__nothrow) int atexit(void (*  )(void)) __attribute__((__nonnull__(1)));
   




 
#line 436 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 
#line 524 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 

#line 553 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

extern __declspec(__nothrow) __attribute__((const)) int abs(int  );
   



 

extern __declspec(__nothrow) __attribute__((const)) div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __attribute__((const)) long int labs(long int  );
   



 




extern __declspec(__nothrow) __attribute__((const)) ldiv_t ldiv(long int  , long int  );
   











 







extern __declspec(__nothrow) __attribute__((const)) long long llabs(long long  );
   



 




extern __declspec(__nothrow) __attribute__((const)) lldiv_t lldiv(long long  , long long  );
   











 
#line 634 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"




 
typedef struct __sdiv32by16 { int quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned int quot, rem; } __udiv32by16;
    
typedef struct __sdiv64by32 { int rem, quot; } __sdiv64by32;

__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv32by16 __rt_sdiv32by16(
     int  ,
     short int  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __udiv32by16 __rt_udiv32by16(
     unsigned int  ,
     unsigned short  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv64by32 __rt_sdiv64by32(
     int  , unsigned int  ,
     int  );
   

 




 
extern __declspec(__nothrow) unsigned int __fp_status(unsigned int  , unsigned int  );
   







 























 
extern __declspec(__nothrow) int mblen(const char *  , size_t  );
   












 
extern __declspec(__nothrow) int mbtowc(wchar_t * __restrict  ,
                   const char * __restrict  , size_t  );
   















 
extern __declspec(__nothrow) int wctomb(char *  , wchar_t  );
   













 





 
extern __declspec(__nothrow) size_t mbstowcs(wchar_t * __restrict  ,
                      const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 
extern __declspec(__nothrow) size_t wcstombs(char * __restrict  ,
                      const wchar_t * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 

extern __declspec(__nothrow) void __use_realtime_heap(void);
extern __declspec(__nothrow) void __use_realtime_division(void);
extern __declspec(__nothrow) void __use_two_region_memory(void);
extern __declspec(__nothrow) void __use_no_heap(void);
extern __declspec(__nothrow) void __use_no_heap_region(void);

extern __declspec(__nothrow) char const *__C_library_version_string(void);
extern __declspec(__nothrow) int __C_library_version_number(void);











#line 892 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"





 
#line 39 "..\\code\\uCGUI\\JPEG\\jinclude.h"





#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
 
 
 





 






 







 




  
 








#line 47 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


  



    typedef unsigned int size_t;    









 
 

 



    typedef struct __va_list __va_list;






   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

#line 136 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 166 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int __ARM_vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int __ARM_vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int __ARM_vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));
   








 

extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 1021 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"



 

#line 45 "..\\code\\uCGUI\\JPEG\\jinclude.h"









 

#line 63 "..\\code\\uCGUI\\JPEG\\jinclude.h"

#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 65 "..\\code\\uCGUI\\JPEG\\jinclude.h"











 







 

#line 17 "..\\code\\uCGUI\\JPEG\\jdmarker.c"
#line 1 "..\\code\\uCGUI\\JPEG\\jpeglib.h"










 









 

#line 1 "..\\code\\uCGUI\\JPEG\\jmorecfg.h"










 









 











 










 





 


  

 
  typedef unsigned char JSAMPLE;
#line 69 "..\\code\\uCGUI\\JPEG\\jmorecfg.h"






 

typedef short JCOEF;






 

typedef unsigned char JOCTET;








 

 
typedef unsigned char UINT8;

 
typedef unsigned short UINT16;
 
typedef short INT16;
 
typedef long INT32;






 

typedef unsigned int JDIMENSION;









 

 

 

 

 







 








 













 


typedef int boolean;
#line 174 "..\\code\\uCGUI\\JPEG\\jmorecfg.h"







 














 

 

 







 

#line 216 "..\\code\\uCGUI\\JPEG\\jmorecfg.h"







 


 

#line 248 "..\\code\\uCGUI\\JPEG\\jmorecfg.h"

 















 







 




 

#line 288 "..\\code\\uCGUI\\JPEG\\jmorecfg.h"





 












 





#line 27 "..\\code\\uCGUI\\JPEG\\jpeglib.h"




 







 

#line 48 "..\\code\\uCGUI\\JPEG\\jpeglib.h"






 









 

typedef JSAMPLE  *JSAMPROW;	 
typedef JSAMPROW *JSAMPARRAY;	 
typedef JSAMPARRAY *JSAMPIMAGE;	 

typedef JCOEF JBLOCK[64];	 
typedef JBLOCK  *JBLOCKROW;	 
typedef JBLOCKROW *JBLOCKARRAY;		 
typedef JBLOCKARRAY *JBLOCKIMAGE;	 

typedef JCOEF  *JCOEFPTR;	 


 


 

typedef struct {
  


 
  UINT16 quantval[64];	 
  



 
  boolean sent_table;		 
} JQUANT_TBL;


 

typedef struct {
   
  UINT8 bits[17];		 
				 
  UINT8 huffval[256];		 
  



 
  boolean sent_table;		 
} JHUFF_TBL;


 

typedef struct {
   
   
   
  int component_id;		 
  int component_index;		 
  int h_samp_factor;		 
  int v_samp_factor;		 
  int quant_tbl_no;		 
   
   
   
   
  int dc_tbl_no;		 
  int ac_tbl_no;		 
  
   
  
   
  


 
  JDIMENSION width_in_blocks;
  JDIMENSION height_in_blocks;
  




 
  int DCT_scaled_size;
  




 
  JDIMENSION downsampled_width;	  
  JDIMENSION downsampled_height;  
  


 
  boolean component_needed;	 

   
   
  int MCU_width;		 
  int MCU_height;		 
  int MCU_blocks;		 
  int MCU_sample_width;		 
  int last_col_width;		 
  int last_row_height;		 

  


 
  JQUANT_TBL * quant_table;

   
  void * dct_table;
} jpeg_component_info;


 

typedef struct {
  int comps_in_scan;		 
  int component_index[4];  
  int Ss, Se;			 
  int Ah, Al;			 
} jpeg_scan_info;

 

typedef struct jpeg_marker_struct  * jpeg_saved_marker_ptr;

struct jpeg_marker_struct {
  jpeg_saved_marker_ptr next;	 
  UINT8 marker;			 
  unsigned int original_length;	 
  unsigned int data_length;	 
  JOCTET  * data;		 
   
};

 

typedef enum {
	JCS_UNKNOWN,		 
	JCS_GRAYSCALE,		 
	JCS_RGB,		 
	JCS_YCbCr,		 
	JCS_CMYK,		 
	JCS_YCCK		 
} J_COLOR_SPACE;

 

typedef enum {
	JDCT_ISLOW,		 
	JDCT_IFAST,		 
	JDCT_FLOAT		 
} J_DCT_METHOD;

#line 229 "..\\code\\uCGUI\\JPEG\\jpeglib.h"

 

typedef enum {
	JDITHER_NONE,		 
	JDITHER_ORDERED,	 
	JDITHER_FS		 
} J_DITHER_MODE;


 

#line 248 "..\\code\\uCGUI\\JPEG\\jpeglib.h"




 
struct jpeg_common_struct {
  struct jpeg_error_mgr * err; struct jpeg_memory_mgr * mem; struct jpeg_progress_mgr * progress; void * client_data; boolean is_decompressor; int global_state;		 
  


 
};

typedef struct jpeg_common_struct * j_common_ptr;
typedef struct jpeg_compress_struct * j_compress_ptr;
typedef struct jpeg_decompress_struct * j_decompress_ptr;


 

struct jpeg_compress_struct {
  struct jpeg_error_mgr * err; struct jpeg_memory_mgr * mem; struct jpeg_progress_mgr * progress; void * client_data; boolean is_decompressor; int global_state;		 

   
  struct jpeg_destination_mgr * dest;

  


 

  JDIMENSION image_width;	 
  JDIMENSION image_height;	 
  int input_components;		 
  J_COLOR_SPACE in_color_space;	 

  double input_gamma;		 

  





 

  int data_precision;		 

  int num_components;		 
  J_COLOR_SPACE jpeg_color_space;  

  jpeg_component_info * comp_info;
   
  
  JQUANT_TBL * quant_tbl_ptrs[4];
   
  
  JHUFF_TBL * dc_huff_tbl_ptrs[4];
  JHUFF_TBL * ac_huff_tbl_ptrs[4];
   
  
  UINT8 arith_dc_L[16];  
  UINT8 arith_dc_U[16];  
  UINT8 arith_ac_K[16];  

  int num_scans;		 
  const jpeg_scan_info * scan_info;  
  


 

  boolean raw_data_in;		 
  boolean arith_code;		 
  boolean optimize_coding;	 
  boolean CCIR601_sampling;	 
  int smoothing_factor;		 
  J_DCT_METHOD dct_method;	 

  



 
  unsigned int restart_interval;  
  int restart_in_rows;		 

   

  boolean write_JFIF_header;	 
  UINT8 JFIF_major_version;	 
  UINT8 JFIF_minor_version;
   
   
   
   
  UINT8 density_unit;		 
  UINT16 X_density;		 
  UINT16 Y_density;		 
  boolean write_Adobe_marker;	 
  
  


 

  JDIMENSION next_scanline;	 

  

 

  

 
  boolean progressive_mode;	 
  int max_h_samp_factor;	 
  int max_v_samp_factor;	 

  JDIMENSION total_iMCU_rows;	 
  



 
  
  


 
  int comps_in_scan;		 
  jpeg_component_info * cur_comp_info[4];
   
  
  JDIMENSION MCUs_per_row;	 
  JDIMENSION MCU_rows_in_scan;	 
  
  int blocks_in_MCU;		 
  int MCU_membership[10];
   
   

  int Ss, Se, Ah, Al;		 

  

 
  struct jpeg_comp_master * master;
  struct jpeg_c_main_controller * main;
  struct jpeg_c_prep_controller * prep;
  struct jpeg_c_coef_controller * coef;
  struct jpeg_marker_writer * marker;
  struct jpeg_color_converter * cconvert;
  struct jpeg_downsampler * downsample;
  struct jpeg_forward_dct * fdct;
  struct jpeg_entropy_encoder * entropy;
  jpeg_scan_info * script_space;  
  int script_space_size;
};


 

struct jpeg_decompress_struct {
  struct jpeg_error_mgr * err; struct jpeg_memory_mgr * mem; struct jpeg_progress_mgr * progress; void * client_data; boolean is_decompressor; int global_state;		 

   
  struct jpeg_source_mgr * src;

   
   

  JDIMENSION image_width;	 
  JDIMENSION image_height;	 
  int num_components;		 
  J_COLOR_SPACE jpeg_color_space;  

  


 

  J_COLOR_SPACE out_color_space;  

  unsigned int scale_num, scale_denom;  

  double output_gamma;		 

  boolean buffered_image;	 
  boolean raw_data_out;		 

  J_DCT_METHOD dct_method;	 
  boolean do_fancy_upsampling;	 
  boolean do_block_smoothing;	 

  boolean quantize_colors;	 
   
  J_DITHER_MODE dither_mode;	 
  boolean two_pass_quantize;	 
  int desired_number_of_colors;	 
   
  boolean enable_1pass_quant;	 
  boolean enable_external_quant; 
  boolean enable_2pass_quant;	 

  



 

  JDIMENSION output_width;	 
  JDIMENSION output_height;	 
  int out_color_components;	 
  int output_components;	 
  

 
  int rec_outbuf_height;	 
  


 

  




 
  int actual_number_of_colors;	 
  JSAMPARRAY colormap;		 

  

 

  


 
  JDIMENSION output_scanline;	 

  

 
  int input_scan_number;	 
  JDIMENSION input_iMCU_row;	 

  


 
  int output_scan_number;	 
  JDIMENSION output_iMCU_row;	 

  





 
  int (*coef_bits)[64];	 

  


 

  

 

  JQUANT_TBL * quant_tbl_ptrs[4];
   

  JHUFF_TBL * dc_huff_tbl_ptrs[4];
  JHUFF_TBL * ac_huff_tbl_ptrs[4];
   

  

 

  int data_precision;		 

  jpeg_component_info * comp_info;
   

  boolean progressive_mode;	 
  boolean arith_code;		 

  UINT8 arith_dc_L[16];  
  UINT8 arith_dc_U[16];  
  UINT8 arith_ac_K[16];  

  unsigned int restart_interval;  

  

 
  boolean saw_JFIF_marker;	 
   
  UINT8 JFIF_major_version;	 
  UINT8 JFIF_minor_version;
  UINT8 density_unit;		 
  UINT16 X_density;		 
  UINT16 Y_density;		 
  boolean saw_Adobe_marker;	 
  UINT8 Adobe_transform;	 

  boolean CCIR601_sampling;	 

  


 
  jpeg_saved_marker_ptr marker_list;  

  

 

  

 
  int max_h_samp_factor;	 
  int max_v_samp_factor;	 

  int min_DCT_scaled_size;	 

  JDIMENSION total_iMCU_rows;	 
  





 

  JSAMPLE * sample_range_limit;  

  



 
  int comps_in_scan;		 
  jpeg_component_info * cur_comp_info[4];
   

  JDIMENSION MCUs_per_row;	 
  JDIMENSION MCU_rows_in_scan;	 

  int blocks_in_MCU;		 
  int MCU_membership[10];
   
   

  int Ss, Se, Ah, Al;		 

  


 
  int unread_marker;

  

 
  struct jpeg_decomp_master * master;
  struct jpeg_d_main_controller * main;
  struct jpeg_d_coef_controller * coef;
  struct jpeg_d_post_controller * post;
  struct jpeg_input_controller * inputctl;
  struct jpeg_marker_reader * marker;
  struct jpeg_entropy_decoder * entropy;
  struct jpeg_inverse_dct * idct;
  struct jpeg_upsampler * upsample;
  struct jpeg_color_deconverter * cconvert;
  struct jpeg_color_quantizer * cquantize;
};







 


 

struct jpeg_error_mgr {
   
  void (*error_exit) (j_common_ptr cinfo);
   
  void (*emit_message) (j_common_ptr cinfo, int msg_level);
   
  void (*output_message) (j_common_ptr cinfo);
   
  void (*format_message) (j_common_ptr cinfo, char * buffer);

   
  void (*reset_error_mgr) (j_common_ptr cinfo);
  
  

 
  int msg_code;

  union {
    int i[8];
    char s[80];
  } msg_parm;
  
   
  
  int trace_level;		 
  
  




 
  long num_warnings;		 

  








 
  const char * const * jpeg_message_table;  
  int last_jpeg_message;     
  

 
  const char * const * addon_message_table;  
  int first_addon_message;	 
  int last_addon_message;	 
};


 

struct jpeg_progress_mgr {
  void (*progress_monitor) (j_common_ptr cinfo);

  long pass_counter;		 
  long pass_limit;		 
  int completed_passes;		 
  int total_passes;		 
};


 

struct jpeg_destination_mgr {
  JOCTET * next_output_byte;	 
  size_t free_in_buffer;	 

  void (*init_destination) (j_compress_ptr cinfo);
  boolean (*empty_output_buffer) (j_compress_ptr cinfo);
  void (*term_destination) (j_compress_ptr cinfo);
};


 

typedef struct jpeg_source_mgr {
  const JOCTET * next_input_byte;  
  size_t bytes_in_buffer;	 

  void (*init_source) (j_decompress_ptr cinfo);
  boolean (*fill_input_buffer) (j_decompress_ptr cinfo);
  void (*skip_input_data) (j_decompress_ptr cinfo, long num_bytes);
  boolean (*resync_to_restart) (j_decompress_ptr cinfo, int desired);
  void (*term_source) (j_decompress_ptr cinfo);
} jpeg_source_mgr;











 





typedef struct jvirt_sarray_control * jvirt_sarray_ptr;
typedef struct jvirt_barray_control * jvirt_barray_ptr;


struct jpeg_memory_mgr {
   
  void * (*alloc_small) (j_common_ptr cinfo, int pool_id, size_t sizeofobject);

  void * (*alloc_large) (j_common_ptr cinfo, int pool_id, size_t sizeofobject);

  JSAMPARRAY (*alloc_sarray) (j_common_ptr cinfo, int pool_id, JDIMENSION samplesperrow, JDIMENSION numrows);


  JBLOCKARRAY (*alloc_barray) (j_common_ptr cinfo, int pool_id, JDIMENSION blocksperrow, JDIMENSION numrows);


  jvirt_sarray_ptr (*request_virt_sarray) (j_common_ptr cinfo, int pool_id, boolean pre_zero, JDIMENSION samplesperrow, JDIMENSION numrows, JDIMENSION maxaccess);





  jvirt_barray_ptr (*request_virt_barray) (j_common_ptr cinfo, int pool_id, boolean pre_zero, JDIMENSION blocksperrow, JDIMENSION numrows, JDIMENSION maxaccess);





  void (*realize_virt_arrays) (j_common_ptr cinfo);
  JSAMPARRAY (*access_virt_sarray) (j_common_ptr cinfo, jvirt_sarray_ptr ptr, JDIMENSION start_row, JDIMENSION num_rows, boolean writable);




  JBLOCKARRAY (*access_virt_barray) (j_common_ptr cinfo, jvirt_barray_ptr ptr, JDIMENSION start_row, JDIMENSION num_rows, boolean writable);




  void (*free_pool) (j_common_ptr cinfo, int pool_id);
  void (*self_destruct) (j_common_ptr cinfo);

  



 
  long max_memory_to_use;

   
  long max_alloc_chunk;
};




 
typedef boolean (*jpeg_marker_parser_method) (j_decompress_ptr cinfo);





 





 
extern struct jpeg_error_mgr * jpeg_std_error
	(struct jpeg_error_mgr * err);







 
#line 838 "..\\code\\uCGUI\\JPEG\\jpeglib.h"
extern void jpeg_CreateCompress (j_compress_ptr cinfo, int version, size_t structsize);

extern void jpeg_CreateDecompress (j_decompress_ptr cinfo, int version, size_t structsize);

 
extern void jpeg_destroy_compress (j_compress_ptr cinfo);
extern void jpeg_destroy_decompress (j_decompress_ptr cinfo);

 
 
 
 

 
extern void jpeg_set_defaults (j_compress_ptr cinfo);
 
extern void jpeg_set_colorspace (j_compress_ptr cinfo, J_COLOR_SPACE colorspace);

extern void jpeg_default_colorspace (j_compress_ptr cinfo);
extern void jpeg_set_quality (j_compress_ptr cinfo, int quality, boolean force_baseline);

extern void jpeg_set_linear_quality (j_compress_ptr cinfo, int scale_factor, boolean force_baseline);


extern void jpeg_add_quant_table (j_compress_ptr cinfo, int which_tbl, const unsigned int *basic_table, int scale_factor, boolean force_baseline);



extern int jpeg_quality_scaling (int quality);
extern void jpeg_simple_progression (j_compress_ptr cinfo);
extern void jpeg_suppress_tables (j_compress_ptr cinfo, boolean suppress);

extern JQUANT_TBL * jpeg_alloc_quant_table (j_common_ptr cinfo);
extern JHUFF_TBL * jpeg_alloc_huff_table (j_common_ptr cinfo);

 
extern void jpeg_start_compress (j_compress_ptr cinfo, boolean write_all_tables);

extern JDIMENSION jpeg_write_scanlines (j_compress_ptr cinfo, JSAMPARRAY scanlines, JDIMENSION num_lines);


extern void jpeg_finish_compress (j_compress_ptr cinfo);

 
extern JDIMENSION jpeg_write_raw_data (j_compress_ptr cinfo, JSAMPIMAGE data, JDIMENSION num_lines);



 
extern void jpeg_write_marker
	(j_compress_ptr cinfo, int marker, const JOCTET * dataptr, unsigned int datalen);

 
extern void jpeg_write_m_header
	(j_compress_ptr cinfo, int marker, unsigned int datalen);
extern void jpeg_write_m_byte
	(j_compress_ptr cinfo, int val);

 
extern void jpeg_write_tables (j_compress_ptr cinfo);

 
extern int jpeg_read_header (j_decompress_ptr cinfo, boolean require_image);

 







 

 
extern boolean jpeg_start_decompress (j_decompress_ptr cinfo);
extern JDIMENSION jpeg_read_scanlines (j_decompress_ptr cinfo, JSAMPARRAY scanlines, JDIMENSION max_lines);


extern boolean jpeg_finish_decompress (j_decompress_ptr cinfo);

 
extern JDIMENSION jpeg_read_raw_data (j_decompress_ptr cinfo, JSAMPIMAGE data, JDIMENSION max_lines);



 
extern boolean jpeg_has_multiple_scans (j_decompress_ptr cinfo);
extern boolean jpeg_start_output (j_decompress_ptr cinfo, int scan_number);

extern boolean jpeg_finish_output (j_decompress_ptr cinfo);
extern boolean jpeg_input_complete (j_decompress_ptr cinfo);
extern void jpeg_new_colormap (j_decompress_ptr cinfo);
extern int jpeg_consume_input (j_decompress_ptr cinfo);
 
 





 
extern void jpeg_calc_output_dimensions (j_decompress_ptr cinfo);

 
extern void jpeg_save_markers
	(j_decompress_ptr cinfo, int marker_code, unsigned int length_limit);


 
extern void jpeg_set_marker_processor
	(j_decompress_ptr cinfo, int marker_code, jpeg_marker_parser_method routine);


 
extern jvirt_barray_ptr * jpeg_read_coefficients (j_decompress_ptr cinfo);
extern void jpeg_write_coefficients (j_compress_ptr cinfo, jvirt_barray_ptr * coef_arrays);

extern void jpeg_copy_critical_parameters (j_decompress_ptr srcinfo, j_compress_ptr dstinfo);







 
extern void jpeg_abort_compress (j_compress_ptr cinfo);
extern void jpeg_abort_decompress (j_decompress_ptr cinfo);



 
extern void jpeg_abort (j_common_ptr cinfo);
extern void jpeg_destroy (j_common_ptr cinfo);

 
extern boolean jpeg_resync_to_restart (j_decompress_ptr cinfo, int desired);





 










 

#line 1020 "..\\code\\uCGUI\\JPEG\\jpeglib.h"







 

#line 1 "..\\code\\uCGUI\\JPEG\\jpegint.h"










 


 

typedef enum {			 
	JBUF_PASS_THRU,		 
	 
	JBUF_SAVE_SOURCE,	 
	JBUF_CRANK_DEST,	 
	JBUF_SAVE_AND_PASS	 
} J_BUF_MODE;

 
#line 40 "..\\code\\uCGUI\\JPEG\\jpegint.h"


 

 
struct jpeg_comp_master {
  void (*prepare_for_pass) (j_compress_ptr cinfo);
  void (*pass_startup) (j_compress_ptr cinfo);
  void (*finish_pass) (j_compress_ptr cinfo);

   
  boolean call_pass_startup;	 
  boolean is_last_pass;		 
};

 
struct jpeg_c_main_controller {
  void (*start_pass) (j_compress_ptr cinfo, J_BUF_MODE pass_mode);
  void (*process_data) (j_compress_ptr cinfo, JSAMPARRAY input_buf, JDIMENSION *in_row_ctr, JDIMENSION in_rows_avail);


};

 
struct jpeg_c_prep_controller {
  void (*start_pass) (j_compress_ptr cinfo, J_BUF_MODE pass_mode);
  void (*pre_process_data) (j_compress_ptr cinfo, JSAMPARRAY input_buf, JDIMENSION *in_row_ctr, JDIMENSION in_rows_avail, JSAMPIMAGE output_buf, JDIMENSION *out_row_group_ctr, JDIMENSION out_row_groups_avail);
#line 73 "..\\code\\uCGUI\\JPEG\\jpegint.h"
};

 
struct jpeg_c_coef_controller {
  void (*start_pass) (j_compress_ptr cinfo, J_BUF_MODE pass_mode);
  boolean (*compress_data) (j_compress_ptr cinfo, JSAMPIMAGE input_buf);

};

 
struct jpeg_color_converter {
  void (*start_pass) (j_compress_ptr cinfo);
  void (*color_convert) (j_compress_ptr cinfo, JSAMPARRAY input_buf, JSAMPIMAGE output_buf, JDIMENSION output_row, int num_rows);


};

 
struct jpeg_downsampler {
  void (*start_pass) (j_compress_ptr cinfo);
  void (*downsample) (j_compress_ptr cinfo, JSAMPIMAGE input_buf, JDIMENSION in_row_index, JSAMPIMAGE output_buf, JDIMENSION out_row_group_index);




  boolean need_context_rows;	 
};

 
struct jpeg_forward_dct {
  void (*start_pass) (j_compress_ptr cinfo);
   
  void (*forward_DCT) (j_compress_ptr cinfo, jpeg_component_info * compptr, JSAMPARRAY sample_data, JBLOCKROW coef_blocks, JDIMENSION start_row, JDIMENSION start_col, JDIMENSION num_blocks);




};

 
struct jpeg_entropy_encoder {
  void (*start_pass) (j_compress_ptr cinfo, boolean gather_statistics);
  boolean (*encode_mcu) (j_compress_ptr cinfo, JBLOCKROW *MCU_data);
  void (*finish_pass) (j_compress_ptr cinfo);
};

 
struct jpeg_marker_writer {
  void (*write_file_header) (j_compress_ptr cinfo);
  void (*write_frame_header) (j_compress_ptr cinfo);
  void (*write_scan_header) (j_compress_ptr cinfo);
  void (*write_file_trailer) (j_compress_ptr cinfo);
  void (*write_tables_only) (j_compress_ptr cinfo);
   
   
  void (*write_marker_header) (j_compress_ptr cinfo, int marker, unsigned int datalen);

  void (*write_marker_byte) (j_compress_ptr cinfo, int val);
};


 

 
struct jpeg_decomp_master {
  void (*prepare_for_output_pass) (j_decompress_ptr cinfo);
  void (*finish_output_pass) (j_decompress_ptr cinfo);

   
  boolean is_dummy_pass;	 
};

 
struct jpeg_input_controller {
  int (*consume_input) (j_decompress_ptr cinfo);
  void (*reset_input_controller) (j_decompress_ptr cinfo);
  void (*start_input_pass) (j_decompress_ptr cinfo);
  void (*finish_input_pass) (j_decompress_ptr cinfo);

   
  boolean has_multiple_scans;	 
  boolean eoi_reached;		 
};

 
struct jpeg_d_main_controller {
  void (*start_pass) (j_decompress_ptr cinfo, J_BUF_MODE pass_mode);
  void (*process_data) (j_decompress_ptr cinfo, JSAMPARRAY output_buf, JDIMENSION *out_row_ctr, JDIMENSION out_rows_avail);


};

 
struct jpeg_d_coef_controller {
  void (*start_input_pass) (j_decompress_ptr cinfo);
  int (*consume_data) (j_decompress_ptr cinfo);
  void (*start_output_pass) (j_decompress_ptr cinfo);
  int (*decompress_data) (j_decompress_ptr cinfo, JSAMPIMAGE output_buf);

   
  jvirt_barray_ptr *coef_arrays;
};

 
struct jpeg_d_post_controller {
  void (*start_pass) (j_decompress_ptr cinfo, J_BUF_MODE pass_mode);
  void (*post_process_data) (j_decompress_ptr cinfo, JSAMPIMAGE input_buf, JDIMENSION *in_row_group_ctr, JDIMENSION in_row_groups_avail, JSAMPARRAY output_buf, JDIMENSION *out_row_ctr, JDIMENSION out_rows_avail);
#line 186 "..\\code\\uCGUI\\JPEG\\jpegint.h"
};

 
struct jpeg_marker_reader {
  void (*reset_marker_reader) (j_decompress_ptr cinfo);
  


 
  int (*read_markers) (j_decompress_ptr cinfo);
   
  jpeg_marker_parser_method read_restart_marker;

  

 
  boolean saw_SOI;		 
  boolean saw_SOF;		 
  int next_restart_num;		 
  unsigned int discarded_bytes;	 
};

 
struct jpeg_entropy_decoder {
  void (*start_pass) (j_decompress_ptr cinfo);
  boolean (*decode_mcu) (j_decompress_ptr cinfo, JBLOCKROW *MCU_data);


   
   
  boolean insufficient_data;	 
};

 
typedef void (*inverse_DCT_method_ptr) (j_decompress_ptr cinfo, jpeg_component_info * compptr, JCOEFPTR coef_block, JSAMPARRAY output_buf, JDIMENSION output_col);




struct jpeg_inverse_dct {
  void (*start_pass) (j_decompress_ptr cinfo);
   
  inverse_DCT_method_ptr inverse_DCT[4];
};

 
struct jpeg_upsampler {
  void (*start_pass) (j_decompress_ptr cinfo);
  void (*upsample) (j_decompress_ptr cinfo, JSAMPIMAGE input_buf, JDIMENSION *in_row_group_ctr, JDIMENSION in_row_groups_avail, JSAMPARRAY output_buf, JDIMENSION *out_row_ctr, JDIMENSION out_rows_avail);
#line 241 "..\\code\\uCGUI\\JPEG\\jpegint.h"

  boolean need_context_rows;	 
};

 
struct jpeg_color_deconverter {
  void (*start_pass) (j_decompress_ptr cinfo);
  void (*color_convert) (j_decompress_ptr cinfo, JSAMPIMAGE input_buf, JDIMENSION input_row, JSAMPARRAY output_buf, int num_rows);


};

 
struct jpeg_color_quantizer {
  void (*start_pass) (j_decompress_ptr cinfo, boolean is_pre_scan);
  void (*color_quantize) (j_decompress_ptr cinfo, JSAMPARRAY input_buf, JSAMPARRAY output_buf, int num_rows);


  void (*finish_pass) (j_decompress_ptr cinfo);
  void (*new_color_map) (j_decompress_ptr cinfo);
};


 

#line 274 "..\\code\\uCGUI\\JPEG\\jpegint.h"










 

#line 296 "..\\code\\uCGUI\\JPEG\\jpegint.h"


 
extern void jinit_compress_master (j_compress_ptr cinfo);
extern void jinit_c_master_control (j_compress_ptr cinfo, boolean transcode_only);

extern void jinit_c_main_controller (j_compress_ptr cinfo, boolean need_full_buffer);

extern void jinit_c_prep_controller (j_compress_ptr cinfo, boolean need_full_buffer);

extern void jinit_c_coef_controller (j_compress_ptr cinfo, boolean need_full_buffer);

extern void jinit_color_converter (j_compress_ptr cinfo);
extern void jinit_downsampler (j_compress_ptr cinfo);
extern void jinit_forward_dct (j_compress_ptr cinfo);
extern void jinit_huff_encoder (j_compress_ptr cinfo);
extern void jinit_phuff_encoder (j_compress_ptr cinfo);
extern void jinit_marker_writer (j_compress_ptr cinfo);
 
extern void jinit_master_decompress (j_decompress_ptr cinfo);
extern void jinit_d_main_controller (j_decompress_ptr cinfo, boolean need_full_buffer);

extern void jinit_d_coef_controller (j_decompress_ptr cinfo, boolean need_full_buffer);

extern void jinit_d_post_controller (j_decompress_ptr cinfo, boolean need_full_buffer);

extern void jinit_input_controller (j_decompress_ptr cinfo);
extern void jinit_marker_reader (j_decompress_ptr cinfo);
extern void jinit_huff_decoder (j_decompress_ptr cinfo);
extern void jinit_phuff_decoder (j_decompress_ptr cinfo);
extern void jinit_inverse_dct (j_decompress_ptr cinfo);
extern void jinit_upsampler (j_decompress_ptr cinfo);
extern void jinit_color_deconverter (j_decompress_ptr cinfo);
extern void jinit_1pass_quantizer (j_decompress_ptr cinfo);
extern void jinit_2pass_quantizer (j_decompress_ptr cinfo);
extern void jinit_merged_upsampler (j_decompress_ptr cinfo);
 
extern void jinit_memory_mgr (j_common_ptr cinfo);

 
extern long jdiv_round_up (long a, long b);
extern long jround_up (long a, long b);
extern void jcopy_sample_rows (JSAMPARRAY input_array, int source_row, JSAMPARRAY output_array, int dest_row, int num_rows, JDIMENSION num_cols);


extern void jcopy_block_row (JBLOCKROW input_row, JBLOCKROW output_row, JDIMENSION num_blocks);

extern void jzero_far (void * target, size_t bytestozero);
 



extern const int jpeg_natural_order[64+16];  

 

#line 1031 "..\\code\\uCGUI\\JPEG\\jpeglib.h"
#line 1 "..\\code\\uCGUI\\JPEG\\jerror.h"













 





 


 
#line 30 "..\\code\\uCGUI\\JPEG\\jerror.h"



typedef enum {





JMSG_NOMESSAGE ,  

 

JERR_ARITH_NOTIMPL ,
JERR_BAD_ALIGN_TYPE ,
JERR_BAD_ALLOC_CHUNK ,
JERR_BAD_BUFFER_MODE ,
JERR_BAD_COMPONENT_ID ,
JERR_BAD_DCT_COEF ,
JERR_BAD_DCTSIZE ,
JERR_BAD_HUFF_TABLE ,
JERR_BAD_IN_COLORSPACE ,
JERR_BAD_J_COLORSPACE ,
JERR_BAD_LENGTH ,

JERR_BAD_LIB_VERSION ,
JERR_BAD_MCU_SIZE ,
JERR_BAD_POOL_ID ,
JERR_BAD_PRECISION ,

JERR_BAD_PROGRESSION ,

JERR_BAD_PROG_SCRIPT ,
JERR_BAD_SAMPLING ,
JERR_BAD_SCAN_SCRIPT ,
JERR_BAD_STATE ,

JERR_BAD_STRUCT_SIZE ,
JERR_BAD_VIRTUAL_ACCESS ,
JERR_BUFFER_SIZE ,
JERR_CANT_SUSPEND ,
JERR_CCIR601_NOTIMPL ,
JERR_COMPONENT_COUNT ,
JERR_CONVERSION_NOTIMPL ,
JERR_DAC_INDEX ,
JERR_DAC_VALUE ,
JERR_DHT_INDEX ,
JERR_DQT_INDEX ,
JERR_EMPTY_IMAGE ,
JERR_EMS_READ ,
JERR_EMS_WRITE ,
JERR_EOI_EXPECTED ,
JERR_FILE_READ ,
JERR_FILE_WRITE ,
JERR_FRACT_SAMPLE_NOTIMPL ,
JERR_HUFF_CLEN_OVERFLOW ,
JERR_HUFF_MISSING_CODE ,
JERR_IMAGE_TOO_BIG ,
JERR_INPUT_EMPTY ,
JERR_INPUT_EOF ,

JERR_MISMATCHED_QUANT_TABLE ,
JERR_MISSING_DATA ,
JERR_MODE_CHANGE ,
JERR_NOTIMPL ,
JERR_NOT_COMPILED ,
JERR_NO_BACKING_STORE ,
JERR_NO_HUFF_TABLE ,
JERR_NO_IMAGE ,
JERR_NO_QUANT_TABLE ,
JERR_NO_SOI ,
JERR_OUT_OF_MEMORY ,

JERR_QUANT_COMPONENTS ,
JERR_QUANT_FEW_COLORS ,
JERR_QUANT_MANY_COLORS ,
JERR_SOF_DUPLICATE ,
JERR_SOF_NO_SOS ,
JERR_SOF_UNSUPPORTED ,
JERR_SOI_DUPLICATE ,
JERR_SOS_NO_SOF ,
JERR_TFILE_CREATE ,
JERR_TFILE_READ ,
JERR_TFILE_SEEK ,

JERR_TFILE_WRITE ,
JERR_TOO_LITTLE_DATA ,
JERR_UNKNOWN_MARKER ,
JERR_VIRTUAL_BUG ,
JERR_WIDTH_OVERFLOW ,
JERR_XMS_READ ,
JERR_XMS_WRITE ,
JMSG_COPYRIGHT ,
JMSG_VERSION ,

JTRC_16BIT_TABLES ,

JTRC_ADOBE ,
JTRC_APP0 ,
JTRC_APP14 ,
JTRC_DAC ,
JTRC_DHT ,
JTRC_DQT ,
JTRC_DRI ,
JTRC_EMS_CLOSE ,
JTRC_EMS_OPEN ,
JTRC_EOI ,
JTRC_HUFFBITS ,
JTRC_JFIF ,

JTRC_JFIF_BADTHUMBNAILSIZE ,

JTRC_JFIF_EXTENSION ,
JTRC_JFIF_THUMBNAIL ,
JTRC_MISC_MARKER ,
JTRC_PARMLESS_MARKER ,
JTRC_QUANTVALS ,
JTRC_QUANT_3_NCOLORS ,
JTRC_QUANT_NCOLORS ,
JTRC_QUANT_SELECTED ,
JTRC_RECOVERY_ACTION ,
JTRC_RST ,

JTRC_SMOOTH_NOTIMPL ,
JTRC_SOF ,
JTRC_SOF_COMPONENT ,
JTRC_SOI ,
JTRC_SOS ,
JTRC_SOS_COMPONENT ,
JTRC_SOS_PARAMS ,
JTRC_TFILE_CLOSE ,
JTRC_TFILE_OPEN ,

JTRC_THUMB_JPEG ,

JTRC_THUMB_PALETTE ,

JTRC_THUMB_RGB ,

JTRC_UNKNOWN_IDS ,
JTRC_XMS_CLOSE ,
JTRC_XMS_OPEN ,
JWRN_ADOBE_XFORM ,

JWRN_BOGUS_PROGRESSION ,

JWRN_EXTRANEOUS_DATA ,
JWRN_HIT_MARKER ,
JWRN_HUFF_BAD_CODE ,
JWRN_JFIF_MAJOR ,
JWRN_JPEG_EOF ,

JWRN_MUST_RESYNC ,
JWRN_NOT_SEQUENTIAL ,
JWRN_TOO_MUCH_DATA ,



  JMSG_LASTMSGCODE
} J_MESSAGE_CODE;




 






 
 

 
#line 234 "..\\code\\uCGUI\\JPEG\\jerror.h"



 
#line 250 "..\\code\\uCGUI\\JPEG\\jerror.h"

 
#line 290 "..\\code\\uCGUI\\JPEG\\jerror.h"

#line 1032 "..\\code\\uCGUI\\JPEG\\jpeglib.h"


#line 18 "..\\code\\uCGUI\\JPEG\\jdmarker.c"


typedef enum {			 
  M_SOF0  = 0xc0,
  M_SOF1  = 0xc1,
  M_SOF2  = 0xc2,
  M_SOF3  = 0xc3,
  
  M_SOF5  = 0xc5,
  M_SOF6  = 0xc6,
  M_SOF7  = 0xc7,
  
  M_JPG   = 0xc8,
  M_SOF9  = 0xc9,
  M_SOF10 = 0xca,
  M_SOF11 = 0xcb,
  
  M_SOF13 = 0xcd,
  M_SOF14 = 0xce,
  M_SOF15 = 0xcf,
  
  M_DHT   = 0xc4,
  
  M_DAC   = 0xcc,
  
  M_RST0  = 0xd0,
  M_RST1  = 0xd1,
  M_RST2  = 0xd2,
  M_RST3  = 0xd3,
  M_RST4  = 0xd4,
  M_RST5  = 0xd5,
  M_RST6  = 0xd6,
  M_RST7  = 0xd7,
  
  M_SOI   = 0xd8,
  M_EOI   = 0xd9,
  M_SOS   = 0xda,
  M_DQT   = 0xdb,
  M_DNL   = 0xdc,
  M_DRI   = 0xdd,
  M_DHP   = 0xde,
  M_EXP   = 0xdf,
  
  M_APP0  = 0xe0,
  M_APP1  = 0xe1,
  M_APP2  = 0xe2,
  M_APP3  = 0xe3,
  M_APP4  = 0xe4,
  M_APP5  = 0xe5,
  M_APP6  = 0xe6,
  M_APP7  = 0xe7,
  M_APP8  = 0xe8,
  M_APP9  = 0xe9,
  M_APP10 = 0xea,
  M_APP11 = 0xeb,
  M_APP12 = 0xec,
  M_APP13 = 0xed,
  M_APP14 = 0xee,
  M_APP15 = 0xef,
  
  M_JPG0  = 0xf0,
  M_JPG13 = 0xfd,
  M_COM   = 0xfe,
  
  M_TEM   = 0x01,
  
  M_ERROR = 0x100
} JPEG_MARKER;


 

typedef struct {
  struct jpeg_marker_reader pub;  

   
  jpeg_marker_parser_method process_COM;
  jpeg_marker_parser_method process_APPn[16];

   
  unsigned int length_limit_COM;
  unsigned int length_limit_APPn[16];

   
  jpeg_saved_marker_ptr cur_marker;	 
  unsigned int bytes_read;		 
   
} my_marker_reader;

typedef my_marker_reader * my_marker_ptr;








 

 





 




 







 
#line 144 "..\\code\\uCGUI\\JPEG\\jdmarker.c"



 







 
#line 163 "..\\code\\uCGUI\\JPEG\\jdmarker.c"






























 


static boolean
get_soi (j_decompress_ptr cinfo)
 
{
  int i;
  
  ((cinfo)->err->msg_code = (JTRC_SOI), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));

  if (cinfo->marker->saw_SOI)
    ((cinfo)->err->msg_code = (JERR_SOI_DUPLICATE), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

   

  for (i = 0; i < 16; i++) {
    cinfo->arith_dc_L[i] = 0;
    cinfo->arith_dc_U[i] = 1;
    cinfo->arith_ac_K[i] = 5;
  }
  cinfo->restart_interval = 0;

   

  cinfo->jpeg_color_space = JCS_UNKNOWN;
  cinfo->CCIR601_sampling = 0;  

  cinfo->saw_JFIF_marker = 0;
  cinfo->JFIF_major_version = 1;  
  cinfo->JFIF_minor_version = 1;
  cinfo->density_unit = 0;
  cinfo->X_density = 1;
  cinfo->Y_density = 1;
  cinfo->saw_Adobe_marker = 0;
  cinfo->Adobe_transform = 0;

  cinfo->marker->saw_SOI = 1;

  return 1;
}


static boolean
get_sof (j_decompress_ptr cinfo, boolean is_prog, boolean is_arith)
 
{
  INT32 length;
  int c, ci;
  jpeg_component_info * compptr;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  cinfo->progressive_mode = is_prog;
  cinfo->arith_code = is_arith;

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length = ((unsigned int) (*next_input_byte ++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length += (*next_input_byte ++); } while (0);

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; cinfo->data_precision = (*next_input_byte ++); } while (0);
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; cinfo->image_height = ((unsigned int) (*next_input_byte ++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; cinfo->image_height += (*next_input_byte ++); } while (0);
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; cinfo->image_width = ((unsigned int) (*next_input_byte ++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; cinfo->image_width += (*next_input_byte ++); } while (0);
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; cinfo->num_components = (*next_input_byte ++); } while (0);

  length -= 8;

  do { int * _mp = (cinfo)->err->msg_parm . i; _mp[0] = (cinfo->unread_marker); _mp[1] = ((int) cinfo->image_width); _mp[2] = ((int) cinfo->image_height); _mp[3] = (cinfo->num_components); (cinfo)->err->msg_code = (JTRC_SOF); (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)); } while (0);



  if (cinfo->marker->saw_SOF)
    ((cinfo)->err->msg_code = (JERR_SOF_DUPLICATE), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

   
   
   
  if (cinfo->image_height <= 0 || cinfo->image_width <= 0
      || cinfo->num_components <= 0)
    ((cinfo)->err->msg_code = (JERR_EMPTY_IMAGE), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  if (length != (cinfo->num_components * 3))
    ((cinfo)->err->msg_code = (JERR_BAD_LENGTH), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  if (cinfo->comp_info == 0)	 
    cinfo->comp_info = (jpeg_component_info *) (*cinfo->mem->alloc_small)
			((j_common_ptr) cinfo, 1,
			 cinfo->num_components * ((size_t) sizeof(jpeg_component_info)));
  
  for (ci = 0, compptr = cinfo->comp_info; ci < cinfo->num_components;
       ci++, compptr++) {
    compptr->component_index = ci;
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; compptr->component_id = (*next_input_byte ++); } while (0);
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte ++); } while (0);
    compptr->h_samp_factor = (c >> 4) & 15;
    compptr->v_samp_factor = (c     ) & 15;
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; compptr->quant_tbl_no = (*next_input_byte ++); } while (0);

    do { int * _mp = (cinfo)->err->msg_parm . i; _mp[0] = (compptr->component_id); _mp[1] = (compptr->h_samp_factor); _mp[2] = (compptr->v_samp_factor); _mp[3] = (compptr->quant_tbl_no); (cinfo)->err->msg_code = (JTRC_SOF_COMPONENT); (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)); } while (0);


  }

  cinfo->marker->saw_SOF = 1;

  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  return 1;
}


static boolean
get_sos (j_decompress_ptr cinfo)
 
{
  INT32 length;
  int i, ci, n, c, cc;
  jpeg_component_info * compptr;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  if (! cinfo->marker->saw_SOF)
    ((cinfo)->err->msg_code = (JERR_SOS_NO_SOF), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length = ((unsigned int) (*next_input_byte ++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length += (*next_input_byte ++); } while (0);

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; n = (*next_input_byte ++); } while (0);  

  ((cinfo)->err->msg_code = (JTRC_SOS), (cinfo)->err->msg_parm . i[0] = (n), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));

  if (length != (n * 2 + 6) || n < 1 || n > 4)
    ((cinfo)->err->msg_code = (JERR_BAD_LENGTH), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  cinfo->comps_in_scan = n;

   

  for (i = 0; i < n; i++) {
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; cc = (*next_input_byte ++); } while (0);
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte ++); } while (0);
    
    for (ci = 0, compptr = cinfo->comp_info; ci < cinfo->num_components;
	 ci++, compptr++) {
      if (cc == compptr->component_id)
	goto id_found;
    }

    ((cinfo)->err->msg_code = (JERR_BAD_COMPONENT_ID), (cinfo)->err->msg_parm . i[0] = (cc), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  id_found:

    cinfo->cur_comp_info[i] = compptr;
    compptr->dc_tbl_no = (c >> 4) & 15;
    compptr->ac_tbl_no = (c     ) & 15;
    
    do { int * _mp = (cinfo)->err->msg_parm . i; _mp[0] = (cc); _mp[1] = (compptr->dc_tbl_no); _mp[2] = (compptr->ac_tbl_no); (cinfo)->err->msg_code = (JTRC_SOS_COMPONENT); (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)); } while (0);

  }

   
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte ++); } while (0);
  cinfo->Ss = c;
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte ++); } while (0);
  cinfo->Se = c;
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte ++); } while (0);
  cinfo->Ah = (c >> 4) & 15;
  cinfo->Al = (c     ) & 15;

  do { int * _mp = (cinfo)->err->msg_parm . i; _mp[0] = (cinfo->Ss); _mp[1] = (cinfo->Se); _mp[2] = (cinfo->Ah); _mp[3] = (cinfo->Al); (cinfo)->err->msg_code = (JTRC_SOS_PARAMS); (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)); } while (0);


   
  cinfo->marker->next_restart_num = 0;

   
  cinfo->input_scan_number++;

  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  return 1;
}


#line 412 "..\\code\\uCGUI\\JPEG\\jdmarker.c"






static boolean
get_dht (j_decompress_ptr cinfo)
 
{
  INT32 length;
  UINT8 bits[17];
  UINT8 huffval[256];
  int i, index, count;
  JHUFF_TBL **htblptr;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length = ((unsigned int) (*next_input_byte ++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length += (*next_input_byte ++); } while (0);
  length -= 2;
  
  while (length > 16) {
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; index = (*next_input_byte ++); } while (0);

    ((cinfo)->err->msg_code = (JTRC_DHT), (cinfo)->err->msg_parm . i[0] = (index), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));
      
    bits[0] = 0;
    count = 0;
    for (i = 1; i <= 16; i++) {
      do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; bits[i] = (*next_input_byte ++); } while (0);
      count += bits[i];
    }

    length -= 1 + 16;

    do { int * _mp = (cinfo)->err->msg_parm . i; _mp[0] = (bits[1]); _mp[1] = (bits[2]); _mp[2] = (bits[3]); _mp[3] = (bits[4]); _mp[4] = (bits[5]); _mp[5] = (bits[6]); _mp[6] = (bits[7]); _mp[7] = (bits[8]); (cinfo)->err->msg_code = (JTRC_HUFFBITS); (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (2)); } while (0);


    do { int * _mp = (cinfo)->err->msg_parm . i; _mp[0] = (bits[9]); _mp[1] = (bits[10]); _mp[2] = (bits[11]); _mp[3] = (bits[12]); _mp[4] = (bits[13]); _mp[5] = (bits[14]); _mp[6] = (bits[15]); _mp[7] = (bits[16]); (cinfo)->err->msg_code = (JTRC_HUFFBITS); (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (2)); } while (0);



    

 
    if (count > 256 || ((INT32) count) > length)
      ((cinfo)->err->msg_code = (JERR_BAD_HUFF_TABLE), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

    for (i = 0; i < count; i++)
      do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; huffval[i] = (*next_input_byte ++); } while (0);

    length -= count;

    if (index & 0x10) {		 
      index -= 0x10;
      htblptr = &cinfo->ac_huff_tbl_ptrs[index];
    } else {			 
      htblptr = &cinfo->dc_huff_tbl_ptrs[index];
    }

    if (index < 0 || index >= 4)
      ((cinfo)->err->msg_code = (JERR_DHT_INDEX), (cinfo)->err->msg_parm . i[0] = (index), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

    if (*htblptr == 0)
      *htblptr = jpeg_alloc_huff_table((j_common_ptr) cinfo);
  
    memcpy((void *)((*htblptr)->bits), (const void *)(bits), (size_t)(((size_t) sizeof((*htblptr)->bits))));
    memcpy((void *)((*htblptr)->huffval), (const void *)(huffval), (size_t)(((size_t) sizeof((*htblptr)->huffval))));
  }

  if (length != 0)
    ((cinfo)->err->msg_code = (JERR_BAD_LENGTH), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  return 1;
}


static boolean
get_dqt (j_decompress_ptr cinfo)
 
{
  INT32 length;
  int n, i, prec;
  unsigned int tmp;
  JQUANT_TBL *quant_ptr;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length = ((unsigned int) (*next_input_byte ++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length += (*next_input_byte ++); } while (0);
  length -= 2;

  while (length > 0) {
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; n = (*next_input_byte ++); } while (0);
    prec = n >> 4;
    n &= 0x0F;

    ((cinfo)->err->msg_code = (JTRC_DQT), (cinfo)->err->msg_parm . i[0] = (n), (cinfo)->err->msg_parm . i[1] = (prec), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));

    if (n >= 4)
      ((cinfo)->err->msg_code = (JERR_DQT_INDEX), (cinfo)->err->msg_parm . i[0] = (n), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));
      
    if (cinfo->quant_tbl_ptrs[n] == 0)
      cinfo->quant_tbl_ptrs[n] = jpeg_alloc_quant_table((j_common_ptr) cinfo);
    quant_ptr = cinfo->quant_tbl_ptrs[n];

    for (i = 0; i < 64; i++) {
      if (prec)
	do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp = ((unsigned int) (*next_input_byte ++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp += (*next_input_byte ++); } while (0);
      else
	do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp = (*next_input_byte ++); } while (0);
       
      quant_ptr->quantval[jpeg_natural_order[i]] = (UINT16) tmp;
    }

    if (cinfo->err->trace_level >= 2) {
      for (i = 0; i < 64; i += 8) {
	do { int * _mp = (cinfo)->err->msg_parm . i; _mp[0] = (quant_ptr->quantval[i]); _mp[1] = (quant_ptr->quantval[i+1]); _mp[2] = (quant_ptr->quantval[i+2]); _mp[3] = (quant_ptr->quantval[i+3]); _mp[4] = (quant_ptr->quantval[i+4]); _mp[5] = (quant_ptr->quantval[i+5]); _mp[6] = (quant_ptr->quantval[i+6]); _mp[7] = (quant_ptr->quantval[i+7]); (cinfo)->err->msg_code = (JTRC_QUANTVALS); (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (2)); } while (0);




      }
    }

    length -= 64+1;
    if (prec) length -= 64;
  }

  if (length != 0)
    ((cinfo)->err->msg_code = (JERR_BAD_LENGTH), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  return 1;
}


static boolean
get_dri (j_decompress_ptr cinfo)
 
{
  INT32 length;
  unsigned int tmp;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length = ((unsigned int) (*next_input_byte ++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length += (*next_input_byte ++); } while (0);
  
  if (length != 4)
    ((cinfo)->err->msg_code = (JERR_BAD_LENGTH), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp = ((unsigned int) (*next_input_byte ++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; tmp += (*next_input_byte ++); } while (0);

  ((cinfo)->err->msg_code = (JTRC_DRI), (cinfo)->err->msg_parm . i[0] = (tmp), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));

  cinfo->restart_interval = tmp;

  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  return 1;
}







 






static void
examine_app0 (j_decompress_ptr cinfo, JOCTET  * data,
	      unsigned int datalen, INT32 remaining)



 
{
  INT32 totallen = (INT32) datalen + remaining;

  if (datalen >= 14 &&
      (data[0]) == 0x4A &&
      (data[1]) == 0x46 &&
      (data[2]) == 0x49 &&
      (data[3]) == 0x46 &&
      (data[4]) == 0) {
     
    cinfo->saw_JFIF_marker = 1;
    cinfo->JFIF_major_version = (data[5]);
    cinfo->JFIF_minor_version = (data[6]);
    cinfo->density_unit = (data[7]);
    cinfo->X_density = ((data[8]) << 8) + (data[9]);
    cinfo->Y_density = ((data[10]) << 8) + (data[11]);
    




 
    if (cinfo->JFIF_major_version != 1)
      ((cinfo)->err->msg_code = (JWRN_JFIF_MAJOR), (cinfo)->err->msg_parm . i[0] = (cinfo->JFIF_major_version), (cinfo)->err->msg_parm . i[1] = (cinfo->JFIF_minor_version), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), -1));

     
    do { int * _mp = (cinfo)->err->msg_parm . i; _mp[0] = (cinfo->JFIF_major_version); _mp[1] = (cinfo->JFIF_minor_version); _mp[2] = (cinfo->X_density); _mp[3] = (cinfo->Y_density); _mp[4] = (cinfo->density_unit); (cinfo)->err->msg_code = (JTRC_JFIF); (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)); } while (0);


     
    if ((data[12]) | (data[13]))
      ((cinfo)->err->msg_code = (JTRC_JFIF_THUMBNAIL), (cinfo)->err->msg_parm . i[0] = ((data[12])), (cinfo)->err->msg_parm . i[1] = ((data[13])), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));

    totallen -= 14;
    if (totallen !=
	((INT32)(data[12]) * (INT32)(data[13]) * (INT32) 3))
      ((cinfo)->err->msg_code = (JTRC_JFIF_BADTHUMBNAILSIZE), (cinfo)->err->msg_parm . i[0] = ((int) totallen), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));
  } else if (datalen >= 6 &&
      (data[0]) == 0x4A &&
      (data[1]) == 0x46 &&
      (data[2]) == 0x58 &&
      (data[3]) == 0x58 &&
      (data[4]) == 0) {
     
    

 
    switch ((data[5])) {
    case 0x10:
      ((cinfo)->err->msg_code = (JTRC_THUMB_JPEG), (cinfo)->err->msg_parm . i[0] = ((int) totallen), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));
      break;
    case 0x11:
      ((cinfo)->err->msg_code = (JTRC_THUMB_PALETTE), (cinfo)->err->msg_parm . i[0] = ((int) totallen), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));
      break;
    case 0x13:
      ((cinfo)->err->msg_code = (JTRC_THUMB_RGB), (cinfo)->err->msg_parm . i[0] = ((int) totallen), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));
      break;
    default:
      ((cinfo)->err->msg_code = (JTRC_JFIF_EXTENSION), (cinfo)->err->msg_parm . i[0] = ((data[5])), (cinfo)->err->msg_parm . i[1] = ((int) totallen), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));

      break;
    }
  } else {
     
    ((cinfo)->err->msg_code = (JTRC_APP0), (cinfo)->err->msg_parm . i[0] = ((int) totallen), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));
  }
}


static void
examine_app14 (j_decompress_ptr cinfo, JOCTET  * data,
	       unsigned int datalen, INT32 remaining)



 
{
  unsigned int version, flags0, flags1, transform;

  if (datalen >= 12 &&
      (data[0]) == 0x41 &&
      (data[1]) == 0x64 &&
      (data[2]) == 0x6F &&
      (data[3]) == 0x62 &&
      (data[4]) == 0x65) {
     
    version = ((data[5]) << 8) + (data[6]);
    flags0 = ((data[7]) << 8) + (data[8]);
    flags1 = ((data[9]) << 8) + (data[10]);
    transform = (data[11]);
    do { int * _mp = (cinfo)->err->msg_parm . i; _mp[0] = (version); _mp[1] = (flags0); _mp[2] = (flags1); _mp[3] = (transform); (cinfo)->err->msg_code = (JTRC_ADOBE); (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)); } while (0);
    cinfo->saw_Adobe_marker = 1;
    cinfo->Adobe_transform = (UINT8) transform;
  } else {
     
    ((cinfo)->err->msg_code = (JTRC_APP14), (cinfo)->err->msg_parm . i[0] = ((int) (datalen + remaining)), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));
  }
}


static boolean
get_interesting_appn (j_decompress_ptr cinfo)
 
{
  INT32 length;
  JOCTET b[14];
  unsigned int i, numtoread;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length = ((unsigned int) (*next_input_byte ++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length += (*next_input_byte ++); } while (0);
  length -= 2;

   
  if (length >= 14)
    numtoread = 14;
  else if (length > 0)
    numtoread = (unsigned int) length;
  else
    numtoread = 0;
  for (i = 0; i < numtoread; i++)
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; b[i] = (*next_input_byte ++); } while (0);
  length -= numtoread;

   
  switch (cinfo->unread_marker) {
  case M_APP0:
    examine_app0(cinfo, (JOCTET  *) b, numtoread, length);
    break;
  case M_APP14:
    examine_app14(cinfo, (JOCTET  *) b, numtoread, length);
    break;
  default:
     
    ((cinfo)->err->msg_code = (JERR_UNKNOWN_MARKER), (cinfo)->err->msg_parm . i[0] = (cinfo->unread_marker), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));
    break;
  }

   
  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  if (length > 0)
    (*cinfo->src->skip_input_data) (cinfo, (long) length);

  return 1;
}


#line 842 "..\\code\\uCGUI\\JPEG\\jdmarker.c"


static boolean
skip_variable (j_decompress_ptr cinfo)
 
{
  INT32 length;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length = ((unsigned int) (*next_input_byte ++)) << 8; if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; length += (*next_input_byte ++); } while (0);
  length -= 2;
  
  ((cinfo)->err->msg_code = (JTRC_MISC_MARKER), (cinfo)->err->msg_parm . i[0] = (cinfo->unread_marker), (cinfo)->err->msg_parm . i[1] = ((int) length), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));

  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );		 
  if (length > 0)
    (*cinfo->src->skip_input_data) (cinfo, (long) length);

  return 1;
}









 

static boolean
next_marker (j_decompress_ptr cinfo)
{
  int c;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  while(1) {
    do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte ++); } while (0);
    



 
    while (c != 0xFF) {
      cinfo->marker->discarded_bytes++;
      ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
      do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte ++); } while (0);
    }
    



 
    do {
      do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte ++); } while (0);
    } while (c == 0xFF);
    if (c != 0)
      break;			 
    

 
    cinfo->marker->discarded_bytes += 2;
    ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  }

  if (cinfo->marker->discarded_bytes != 0) {
    ((cinfo)->err->msg_code = (JWRN_EXTRANEOUS_DATA), (cinfo)->err->msg_parm . i[0] = (cinfo->marker->discarded_bytes), (cinfo)->err->msg_parm . i[1] = (c), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), -1));
    cinfo->marker->discarded_bytes = 0;
  }

  cinfo->unread_marker = c;

  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  return 1;
}


static boolean
first_marker (j_decompress_ptr cinfo)
 




 
{
  int c, c2;
  struct jpeg_source_mgr * datasrc = (cinfo)->src; const JOCTET * next_input_byte = datasrc->next_input_byte; size_t bytes_in_buffer = datasrc->bytes_in_buffer;

  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c = (*next_input_byte ++); } while (0);
  do { if (bytes_in_buffer == 0) { if (! (*datasrc->fill_input_buffer) (cinfo)) { return 0; } ( next_input_byte = datasrc->next_input_byte, bytes_in_buffer = datasrc->bytes_in_buffer ); }; bytes_in_buffer--; c2 = (*next_input_byte ++); } while (0);
  if (c != 0xFF || c2 != (int) M_SOI)
    ((cinfo)->err->msg_code = (JERR_NO_SOI), (cinfo)->err->msg_parm . i[0] = (c), (cinfo)->err->msg_parm . i[1] = (c2), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));

  cinfo->unread_marker = c2;

  ( datasrc->next_input_byte = next_input_byte, datasrc->bytes_in_buffer = bytes_in_buffer );
  return 1;
}







 

static int
read_markers (j_decompress_ptr cinfo)
{
   
  while(1) {
     
     
    if (cinfo->unread_marker == 0) {
      if (! cinfo->marker->saw_SOI) {
	if (! first_marker(cinfo))
	  return 0;
      } else {
	if (! next_marker(cinfo))
	  return 0;
      }
    }
    


 
    switch (cinfo->unread_marker) {
    case M_SOI:
      if (! get_soi(cinfo))
	return 0;
      break;

    case M_SOF0:		 
    case M_SOF1:		 
      if (! get_sof(cinfo, 0, 0))
	return 0;
      break;

    case M_SOF2:		 
      if (! get_sof(cinfo, 1, 0))
	return 0;
      break;

    case M_SOF9:		 
      if (! get_sof(cinfo, 0, 1))
	return 0;
      break;

    case M_SOF10:		 
      if (! get_sof(cinfo, 1, 1))
	return 0;
      break;

     
    case M_SOF3:		 
    case M_SOF5:		 
    case M_SOF6:		 
    case M_SOF7:		 
    case M_JPG:			 
    case M_SOF11:		 
    case M_SOF13:		 
    case M_SOF14:		 
    case M_SOF15:		 
      ((cinfo)->err->msg_code = (JERR_SOF_UNSUPPORTED), (cinfo)->err->msg_parm . i[0] = (cinfo->unread_marker), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));
      break;

    case M_SOS:
      if (! get_sos(cinfo))
	return 0;
      cinfo->unread_marker = 0;	 
      return 1;
    
    case M_EOI:
      ((cinfo)->err->msg_code = (JTRC_EOI), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));
      cinfo->unread_marker = 0;	 
      return 2;
      
    case M_DAC:
      if (! skip_variable(cinfo))
	return 0;
      break;
      
    case M_DHT:
      if (! get_dht(cinfo))
	return 0;
      break;
      
    case M_DQT:
      if (! get_dqt(cinfo))
	return 0;
      break;
      
    case M_DRI:
      if (! get_dri(cinfo))
	return 0;
      break;
      
    case M_APP0:
    case M_APP1:
    case M_APP2:
    case M_APP3:
    case M_APP4:
    case M_APP5:
    case M_APP6:
    case M_APP7:
    case M_APP8:
    case M_APP9:
    case M_APP10:
    case M_APP11:
    case M_APP12:
    case M_APP13:
    case M_APP14:
    case M_APP15:
      if (! (*((my_marker_ptr) cinfo->marker)->process_APPn[
		cinfo->unread_marker - (int) M_APP0]) (cinfo))
	return 0;
      break;
      
    case M_COM:
      if (! (*((my_marker_ptr) cinfo->marker)->process_COM) (cinfo))
	return 0;
      break;

    case M_RST0:		 
    case M_RST1:
    case M_RST2:
    case M_RST3:
    case M_RST4:
    case M_RST5:
    case M_RST6:
    case M_RST7:
    case M_TEM:
      ((cinfo)->err->msg_code = (JTRC_PARMLESS_MARKER), (cinfo)->err->msg_parm . i[0] = (cinfo->unread_marker), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (1)));
      break;

    case M_DNL:			 
      if (! skip_variable(cinfo))
	return 0;
      break;

    default:			 
      



 
      ((cinfo)->err->msg_code = (JERR_UNKNOWN_MARKER), (cinfo)->err->msg_parm . i[0] = (cinfo->unread_marker), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));
      break;
    }
     
    cinfo->unread_marker = 0;
  }  
}












 

static boolean
read_restart_marker (j_decompress_ptr cinfo)
{
   
   
  if (cinfo->unread_marker == 0) {
    if (! next_marker(cinfo))
      return 0;
  }

  if (cinfo->unread_marker ==
      ((int) M_RST0 + cinfo->marker->next_restart_num)) {
     
    ((cinfo)->err->msg_code = (JTRC_RST), (cinfo)->err->msg_parm . i[0] = (cinfo->marker->next_restart_num), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (3)));
    cinfo->unread_marker = 0;
  } else {
     
     
    if (! (*cinfo->src->resync_to_restart) (cinfo,
					    cinfo->marker->next_restart_num))
      return 0;
  }

   
  cinfo->marker->next_restart_num = (cinfo->marker->next_restart_num + 1) & 7;

  return 1;
}

















































 

boolean
jpeg_resync_to_restart (j_decompress_ptr cinfo, int desired)
{
  int marker = cinfo->unread_marker;
  int action;
  
   
  ((cinfo)->err->msg_code = (JWRN_MUST_RESYNC), (cinfo)->err->msg_parm . i[0] = (marker), (cinfo)->err->msg_parm . i[1] = (desired), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), -1));
  
   
  while(1) {
    if (marker < (int) M_SOF0)
      action = 2;		 
    else if (marker < (int) M_RST0 || marker > (int) M_RST7)
      action = 3;		 
    else {
      if (marker == ((int) M_RST0 + ((desired+1) & 7)) ||
	  marker == ((int) M_RST0 + ((desired+2) & 7)))
	action = 3;		 
      else if (marker == ((int) M_RST0 + ((desired-1) & 7)) ||
	       marker == ((int) M_RST0 + ((desired-2) & 7)))
	action = 2;		 
      else
	action = 1;		 
    }
    ((cinfo)->err->msg_code = (JTRC_RECOVERY_ACTION), (cinfo)->err->msg_parm . i[0] = (marker), (cinfo)->err->msg_parm . i[1] = (action), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), (4)));
    switch (action) {
    case 1:
       
      cinfo->unread_marker = 0;
      return 1;
    case 2:
       
      if (! next_marker(cinfo))
	return 0;
      marker = cinfo->unread_marker;
      break;
    case 3:
       
       
      return 1;
    }
  }  
}




 

static void
reset_marker_reader (j_decompress_ptr cinfo)
{
  my_marker_ptr marker = (my_marker_ptr) cinfo->marker;

  cinfo->comp_info = 0;		 
  cinfo->input_scan_number = 0;		 
  cinfo->unread_marker = 0;		 
  marker->pub.saw_SOI = 0;		 
  marker->pub.saw_SOF = 0;
  marker->pub.discarded_bytes = 0;
  marker->cur_marker = 0;
}





 

void
jinit_marker_reader (j_decompress_ptr cinfo)
{
  my_marker_ptr marker;
  int i;

   
  marker = (my_marker_ptr)
    (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, 0,
				((size_t) sizeof(my_marker_reader)));
  cinfo->marker = (struct jpeg_marker_reader *) marker;
   
  marker->pub.reset_marker_reader = reset_marker_reader;
  marker->pub.read_markers = read_markers;
  marker->pub.read_restart_marker = read_restart_marker;
  


 
  marker->process_COM = skip_variable;
  marker->length_limit_COM = 0;
  for (i = 0; i < 16; i++) {
    marker->process_APPn[i] = skip_variable;
    marker->length_limit_APPn[i] = 0;
  }
  marker->process_APPn[0] = get_interesting_appn;
  marker->process_APPn[14] = get_interesting_appn;
   
  reset_marker_reader(cinfo);
}




 

#line 1342 "..\\code\\uCGUI\\JPEG\\jdmarker.c"




 

void
jpeg_set_marker_processor (j_decompress_ptr cinfo, int marker_code,
			   jpeg_marker_parser_method routine)
{
  my_marker_ptr marker = (my_marker_ptr) cinfo->marker;

  if (marker_code == (int) M_COM)
    marker->process_COM = routine;
  else if (marker_code >= (int) M_APP0 && marker_code <= (int) M_APP15)
    marker->process_APPn[marker_code - (int) M_APP0] = routine;
  else
    ((cinfo)->err->msg_code = (JERR_UNKNOWN_MARKER), (cinfo)->err->msg_parm . i[0] = (marker_code), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));
}
