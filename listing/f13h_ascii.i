#line 1 "..\\code\\uCGUI\\Font\\F13H_ASCII.c"


















 

#line 1 "..\\code\\GUI\\GUI_inc\\GUI_FontIntern.h"





















 





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



 
#line 29 "..\\code\\GUI\\GUI_inc\\GUI_FontIntern.h"






extern const GUI_FONT_PROP GUI_Font8ASCII_Prop;
extern const GUI_FONT_PROP GUI_Font10S_ASCII_FontProp1;
extern const GUI_FONT_PROP GUI_Font10ASCIIProp1;
extern const GUI_FONT_PROP GUI_Font16ASCIIProp1;

extern const GUI_FONT_PROP GUI_Font16_1_FontProp1;
extern const GUI_FONT_PROP FontComic24BProp_ASCII;

extern const GUI_CHARINFO GUI_Font24B_ASCII_CharInfo[95];
extern const GUI_CHARINFO GUI_Font24_ASCII_CharInfo[95];
extern const GUI_CHARINFO GUI_Font32B_ASCII_CharInfo[95];

extern const GUI_CHARINFO GUI_Font32_ASCII_CharInfo[95];
extern const GUI_CHARINFO GUI_CharInfoF8x13_ASCII[96];
extern const GUI_CHARINFO GUI_CharInfoF8x15B_ASCII[96];
extern const GUI_CHARINFO CharInfo18B_ASCII[97];
extern const GUI_CHARINFO CharInfo24B_ASCII[96];
extern const GUI_FONT_PROP GUI_Font13ASCII_Prop1;
extern const GUI_FONT_PROP GUI_Font13B_ASCII_Prop1;
extern const GUI_CHARINFO GUI_Font13H_ASCII_CharInfo[95];
extern const GUI_CHARINFO GUI_Font13HB_ASCII_CharInfo[95];
extern const GUI_CHARINFO GUI_Font16_HK_CharInfo[169];
extern const GUI_CHARINFO GUI_Font16B_ASCII_CharInfo[95];









 
#line 22 "..\\code\\uCGUI\\Font\\F13H_ASCII.c"


 
const unsigned char acFont13H_ASCII_0020[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0021[ 13] = {  
  0x0,
  0x0,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x0,
  0x40,
  0x40,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0022[ 13] = {  
  0x0,
  0x50,
  0x50,
  0x50,
  0x50,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0023[ 26] = {  
  0x0,0x0,
  0x0,0x0,
  0xa,0x0,
  0xa,0x0,
  0x3f,0x0,
  0x14,0x0,
  0x14,0x0,
  0x7e,0x0,
  0x14,0x0,
  0x28,0x0,
  0x28,0x0,
  0x0,0x0,
  0x0,0x0};

const unsigned char acFont13H_ASCII_0024[ 13] = {  
  0x0,
  0x20,
  0x20,
  0x7c,
  0xa0,
  0xa0,
  0x60,
  0x38,
  0x24,
  0x24,
  0xf8,
  0x20,
  0x20};

const unsigned char acFont13H_ASCII_0025[ 26] = {  
  0x0,0x0,
  0x0,0x0,
  0x30,0x80,
  0x49,0x0,
  0x49,0x0,
  0x4a,0x0,
  0x34,0xc0,
  0x5,0x20,
  0x9,0x20,
  0x9,0x20,
  0x10,0xc0,
  0x0,0x0,
  0x0,0x0};

const unsigned char acFont13H_ASCII_0026[ 26] = {  
  0x0,0x0,
  0x0,0x0,
  0x78,0x0,
  0x84,0x0,
  0x84,0x0,
  0x48,0x0,
  0x72,0x0,
  0x8a,0x0,
  0x86,0x0,
  0x86,0x0,
  0x79,0x0,
  0x0,0x0,
  0x0,0x0};

const unsigned char acFont13H_ASCII_0027[ 13] = {  
  0x0,
  0x40,
  0x40,
  0x40,
  0x40,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0028[ 13] = {  
  0x0,
  0x8,
  0x10,
  0x20,
  0x20,
  0x40,
  0x40,
  0x40,
  0x40,
  0x20,
  0x20,
  0x10,
  0x8};

const unsigned char acFont13H_ASCII_0029[ 13] = {  
  0x0,
  0x80,
  0x40,
  0x20,
  0x20,
  0x10,
  0x10,
  0x10,
  0x10,
  0x20,
  0x20,
  0x40,
  0x80};

const unsigned char acFont13H_ASCII_002A[ 13] = {  
  0x0,
  0x10,
  0x54,
  0x38,
  0x54,
  0x10,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_002B[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x10,
  0x10,
  0x10,
  0xfe,
  0x10,
  0x10,
  0x10,
  0x0,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_002C[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x40,
  0x40,
  0x40,
  0x80};

const unsigned char acFont13H_ASCII_002D[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0xf0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_002E[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x40,
  0x40,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_002F[ 13] = {  
  0x0,
  0x8,
  0x8,
  0x10,
  0x10,
  0x10,
  0x20,
  0x20,
  0x40,
  0x40,
  0x40,
  0x80,
  0x80};

const unsigned char acFont13H_ASCII_0030[ 13] = {  
  0x0,
  0x0,
  0x78,
  0x84,
  0x84,
  0x84,
  0x84,
  0x84,
  0x84,
  0x84,
  0x78,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0031[ 13] = {  
  0x0,
  0x0,
  0x10,
  0x70,
  0x10,
  0x10,
  0x10,
  0x10,
  0x10,
  0x10,
  0x7c,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0032[ 13] = {  
  0x0,
  0x0,
  0x78,
  0x84,
  0x4,
  0x4,
  0x8,
  0x30,
  0x40,
  0x80,
  0xfc,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0033[ 13] = {  
  0x0,
  0x0,
  0x78,
  0x84,
  0x4,
  0x4,
  0x38,
  0x4,
  0x4,
  0x84,
  0x78,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0034[ 13] = {  
  0x0,
  0x0,
  0x8,
  0x18,
  0x28,
  0x48,
  0x88,
  0xfc,
  0x8,
  0x8,
  0x8,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0035[ 13] = {  
  0x0,
  0x0,
  0xfc,
  0x80,
  0x80,
  0xf8,
  0x4,
  0x4,
  0x4,
  0x84,
  0x78,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0036[ 13] = {  
  0x0,
  0x0,
  0x38,
  0x40,
  0x80,
  0xf8,
  0x84,
  0x84,
  0x84,
  0x84,
  0x78,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0037[ 13] = {  
  0x0,
  0x0,
  0xfc,
  0x4,
  0x8,
  0x8,
  0x10,
  0x10,
  0x20,
  0x20,
  0x40,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0038[ 13] = {  
  0x0,
  0x0,
  0x78,
  0x84,
  0x84,
  0x84,
  0x78,
  0x84,
  0x84,
  0x84,
  0x78,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0039[ 13] = {  
  0x0,
  0x0,
  0x78,
  0x84,
  0x84,
  0x84,
  0x84,
  0x7c,
  0x4,
  0x8,
  0x70,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_003A[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0x20,
  0x20,
  0x0,
  0x0,
  0x0,
  0x20,
  0x20,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_003B[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0x20,
  0x20,
  0x0,
  0x0,
  0x0,
  0x20,
  0x20,
  0x20,
  0x40};

const unsigned char acFont13H_ASCII_003C[ 26] = {  
  0x0,0x0,
  0x0,0x0,
  0x0,0x0,
  0x1,0x0,
  0x6,0x0,
  0x18,0x0,
  0x60,0x0,
  0x18,0x0,
  0x6,0x0,
  0x1,0x0,
  0x0,0x0,
  0x0,0x0,
  0x0,0x0};

const unsigned char acFont13H_ASCII_003D[ 26] = {  
  0x0,0x0,
  0x0,0x0,
  0x0,0x0,
  0x0,0x0,
  0x0,0x0,
  0x7f,0x0,
  0x0,0x0,
  0x0,0x0,
  0x7f,0x0,
  0x0,0x0,
  0x0,0x0,
  0x0,0x0,
  0x0,0x0};

const unsigned char acFont13H_ASCII_003E[ 26] = {  
  0x0,0x0,
  0x0,0x0,
  0x0,0x0,
  0x40,0x0,
  0x30,0x0,
  0xc,0x0,
  0x3,0x0,
  0xc,0x0,
  0x30,0x0,
  0x40,0x0,
  0x0,0x0,
  0x0,0x0,
  0x0,0x0};

const unsigned char acFont13H_ASCII_003F[ 13] = {  
  0x0,
  0x0,
  0x70,
  0x88,
  0x8,
  0x10,
  0x20,
  0x40,
  0x0,
  0x40,
  0x40,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0040[ 26] = {  
  0x0,0x0,
  0x0,0x0,
  0x1f,0x0,
  0x60,0xc0,
  0x4f,0x40,
  0x91,0x20,
  0x91,0x20,
  0x91,0x20,
  0x91,0x20,
  0x4f,0xc0,
  0x60,0x0,
  0x1f,0x0,
  0x0,0x0};

const unsigned char acFont13H_ASCII_0041[ 13] = {  
  0x0,
  0x0,
  0x10,
  0x10,
  0x28,
  0x28,
  0x44,
  0x44,
  0x7c,
  0x82,
  0x82,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0042[ 13] = {  
  0x0,
  0x0,
  0xf0,
  0x88,
  0x88,
  0x88,
  0xf8,
  0x84,
  0x84,
  0x84,
  0xf8,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0043[ 13] = {  
  0x0,
  0x0,
  0x3c,
  0x42,
  0x80,
  0x80,
  0x80,
  0x80,
  0x80,
  0x42,
  0x3c,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0044[ 13] = {  
  0x0,
  0x0,
  0xf8,
  0x84,
  0x82,
  0x82,
  0x82,
  0x82,
  0x82,
  0x84,
  0xf8,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0045[ 13] = {  
  0x0,
  0x0,
  0xfc,
  0x80,
  0x80,
  0x80,
  0xfc,
  0x80,
  0x80,
  0x80,
  0xfc,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0046[ 13] = {  
  0x0,
  0x0,
  0xfc,
  0x80,
  0x80,
  0x80,
  0xfc,
  0x80,
  0x80,
  0x80,
  0x80,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0047[ 13] = {  
  0x0,
  0x0,
  0x3c,
  0x42,
  0x80,
  0x80,
  0x80,
  0x8e,
  0x82,
  0x42,
  0x3e,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0048[ 13] = {  
  0x0,
  0x0,
  0x82,
  0x82,
  0x82,
  0x82,
  0xfe,
  0x82,
  0x82,
  0x82,
  0x82,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0049[ 13] = {  
  0x0,
  0x0,
  0xe0,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0xe0,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_004A[ 13] = {  
  0x0,
  0x0,
  0x70,
  0x10,
  0x10,
  0x10,
  0x10,
  0x10,
  0x10,
  0x10,
  0xe0,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_004B[ 13] = {  
  0x0,
  0x0,
  0x84,
  0x88,
  0x90,
  0xa0,
  0xc0,
  0xa0,
  0x90,
  0x88,
  0x84,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_004C[ 13] = {  
  0x0,
  0x0,
  0x80,
  0x80,
  0x80,
  0x80,
  0x80,
  0x80,
  0x80,
  0x80,
  0xf8,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_004D[ 26] = {  
  0x0,0x0,
  0x0,0x0,
  0xc1,0x80,
  0xc1,0x80,
  0xa2,0x80,
  0xa2,0x80,
  0x94,0x80,
  0x94,0x80,
  0x88,0x80,
  0x88,0x80,
  0x80,0x80,
  0x0,0x0,
  0x0,0x0};

const unsigned char acFont13H_ASCII_004E[ 13] = {  
  0x0,
  0x0,
  0xc2,
  0xc2,
  0xa2,
  0xa2,
  0x92,
  0x8a,
  0x8a,
  0x86,
  0x86,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_004F[ 26] = {  
  0x0,0x0,
  0x0,0x0,
  0x3c,0x0,
  0x42,0x0,
  0x81,0x0,
  0x81,0x0,
  0x81,0x0,
  0x81,0x0,
  0x81,0x0,
  0x42,0x0,
  0x3c,0x0,
  0x0,0x0,
  0x0,0x0};

const unsigned char acFont13H_ASCII_0050[ 13] = {  
  0x0,
  0x0,
  0xf8,
  0x84,
  0x84,
  0x84,
  0x84,
  0xf8,
  0x80,
  0x80,
  0x80,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0051[ 26] = {  
  0x0,0x0,
  0x0,0x0,
  0x3c,0x0,
  0x42,0x0,
  0x81,0x0,
  0x81,0x0,
  0x81,0x0,
  0x81,0x0,
  0x81,0x0,
  0x42,0x0,
  0x3c,0x0,
  0x8,0x0,
  0x7,0x0};

const unsigned char acFont13H_ASCII_0052[ 13] = {  
  0x0,
  0x0,
  0xf8,
  0x84,
  0x84,
  0x84,
  0x88,
  0xf0,
  0x88,
  0x84,
  0x82,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0053[ 13] = {  
  0x0,
  0x0,
  0x7c,
  0x82,
  0x80,
  0x80,
  0x7c,
  0x2,
  0x2,
  0x82,
  0x7c,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0054[ 13] = {  
  0x0,
  0x0,
  0xfe,
  0x10,
  0x10,
  0x10,
  0x10,
  0x10,
  0x10,
  0x10,
  0x10,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0055[ 13] = {  
  0x0,
  0x0,
  0x82,
  0x82,
  0x82,
  0x82,
  0x82,
  0x82,
  0x82,
  0x44,
  0x38,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0056[ 13] = {  
  0x0,
  0x0,
  0x82,
  0x82,
  0x82,
  0x44,
  0x44,
  0x28,
  0x28,
  0x10,
  0x10,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0057[ 26] = {  
  0x0,0x0,
  0x0,0x0,
  0x84,0x20,
  0x84,0x20,
  0x8a,0x20,
  0x8a,0x20,
  0x4a,0x40,
  0x51,0x40,
  0x51,0x40,
  0x51,0x40,
  0x20,0x80,
  0x0,0x0,
  0x0,0x0};

const unsigned char acFont13H_ASCII_0058[ 13] = {  
  0x0,
  0x0,
  0x82,
  0x44,
  0x28,
  0x28,
  0x10,
  0x28,
  0x28,
  0x44,
  0x82,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0059[ 13] = {  
  0x0,
  0x0,
  0x82,
  0x44,
  0x44,
  0x28,
  0x10,
  0x10,
  0x10,
  0x10,
  0x10,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_005A[ 13] = {  
  0x0,
  0x0,
  0xfc,
  0x4,
  0x8,
  0x10,
  0x20,
  0x20,
  0x40,
  0x80,
  0xfc,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_005B[ 13] = {  
  0x0,
  0x70,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x70};

const unsigned char acFont13H_ASCII_005C[ 13] = {  
  0x0,
  0x80,
  0x80,
  0x40,
  0x40,
  0x40,
  0x20,
  0x20,
  0x10,
  0x10,
  0x10,
  0x8,
  0x8};

const unsigned char acFont13H_ASCII_005D[ 13] = {  
  0x0,
  0x70,
  0x10,
  0x10,
  0x10,
  0x10,
  0x10,
  0x10,
  0x10,
  0x10,
  0x10,
  0x10,
  0x70};

const unsigned char acFont13H_ASCII_005E[ 26] = {  
  0x0,0x0,
  0x0,0x0,
  0xc,0x0,
  0x12,0x0,
  0x21,0x0,
  0x40,0x80,
  0x0,0x0,
  0x0,0x0,
  0x0,0x0,
  0x0,0x0,
  0x0,0x0,
  0x0,0x0,
  0x0,0x0};

const unsigned char acFont13H_ASCII_005F[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0xfe};

const unsigned char acFont13H_ASCII_0060[ 13] = {  
  0x0,
  0x10,
  0x8,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0061[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0x78,
  0x4,
  0x4,
  0x7c,
  0x84,
  0x8c,
  0x74,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0062[ 13] = {  
  0x0,
  0x80,
  0x80,
  0x80,
  0xb8,
  0xc4,
  0x84,
  0x84,
  0x84,
  0x84,
  0xf8,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0063[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0x78,
  0x80,
  0x80,
  0x80,
  0x80,
  0x80,
  0x78,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0064[ 13] = {  
  0x0,
  0x4,
  0x4,
  0x4,
  0x7c,
  0x84,
  0x84,
  0x84,
  0x84,
  0x8c,
  0x74,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0065[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0x78,
  0x84,
  0x84,
  0xfc,
  0x80,
  0x84,
  0x78,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0066[ 13] = {  
  0x0,
  0x30,
  0x40,
  0x40,
  0xf0,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0067[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0x7c,
  0x84,
  0x84,
  0x84,
  0x84,
  0x8c,
  0x74,
  0x4,
  0x78};

const unsigned char acFont13H_ASCII_0068[ 13] = {  
  0x0,
  0x80,
  0x80,
  0x80,
  0xb8,
  0xc4,
  0x84,
  0x84,
  0x84,
  0x84,
  0x84,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0069[ 13] = {  
  0x0,
  0x0,
  0x40,
  0x0,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_006A[ 13] = {  
  0x0,
  0x0,
  0x20,
  0x0,
  0x60,
  0x20,
  0x20,
  0x20,
  0x20,
  0x20,
  0x20,
  0x20,
  0xc0};

const unsigned char acFont13H_ASCII_006B[ 13] = {  
  0x0,
  0x80,
  0x80,
  0x80,
  0x88,
  0x90,
  0xa0,
  0xc0,
  0xa0,
  0x90,
  0x88,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_006C[ 13] = {  
  0x0,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_006D[ 26] = {  
  0x0,0x0,
  0x0,0x0,
  0x0,0x0,
  0x0,0x0,
  0x59,0x80,
  0x66,0x40,
  0x44,0x40,
  0x44,0x40,
  0x44,0x40,
  0x44,0x40,
  0x44,0x40,
  0x0,0x0,
  0x0,0x0};

const unsigned char acFont13H_ASCII_006E[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0xb8,
  0xc4,
  0x84,
  0x84,
  0x84,
  0x84,
  0x84,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_006F[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0x78,
  0x84,
  0x84,
  0x84,
  0x84,
  0x84,
  0x78,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0070[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0xb8,
  0xc4,
  0x84,
  0x84,
  0x84,
  0x84,
  0xf8,
  0x80,
  0x80};

const unsigned char acFont13H_ASCII_0071[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0x7c,
  0x84,
  0x84,
  0x84,
  0x84,
  0x8c,
  0x74,
  0x4,
  0x4};

const unsigned char acFont13H_ASCII_0072[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0xb0,
  0xc0,
  0x80,
  0x80,
  0x80,
  0x80,
  0x80,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0073[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0x70,
  0x88,
  0x80,
  0x70,
  0x8,
  0x88,
  0x70,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0074[ 13] = {  
  0x0,
  0x0,
  0x40,
  0x40,
  0xf0,
  0x40,
  0x40,
  0x40,
  0x40,
  0x40,
  0x30,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0075[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0x84,
  0x84,
  0x84,
  0x84,
  0x84,
  0x8c,
  0x74,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0076[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0x88,
  0x88,
  0x50,
  0x50,
  0x50,
  0x20,
  0x20,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0077[ 26] = {  
  0x0,0x0,
  0x0,0x0,
  0x0,0x0,
  0x0,0x0,
  0x88,0x80,
  0x88,0x80,
  0x55,0x0,
  0x55,0x0,
  0x55,0x0,
  0x22,0x0,
  0x22,0x0,
  0x0,0x0,
  0x0,0x0};

const unsigned char acFont13H_ASCII_0078[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0x88,
  0x50,
  0x50,
  0x20,
  0x50,
  0x50,
  0x88,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_0079[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0x88,
  0x88,
  0x50,
  0x50,
  0x50,
  0x20,
  0x20,
  0x20,
  0x40};

const unsigned char acFont13H_ASCII_007A[ 13] = {  
  0x0,
  0x0,
  0x0,
  0x0,
  0xf8,
  0x8,
  0x10,
  0x20,
  0x40,
  0x80,
  0xf8,
  0x0,
  0x0};

const unsigned char acFont13H_ASCII_007B[ 13] = {  
  0x0,
  0x18,
  0x20,
  0x20,
  0x20,
  0x20,
  0x20,
  0xc0,
  0x20,
  0x20,
  0x20,
  0x20,
  0x18};

const unsigned char acFont13H_ASCII_007C[ 13] = {  
  0x0,
  0x20,
  0x20,
  0x20,
  0x20,
  0x20,
  0x20,
  0x20,
  0x20,
  0x20,
  0x20,
  0x20,
  0x20};

const unsigned char acFont13H_ASCII_007D[ 13] = {  
  0x0,
  0xc0,
  0x20,
  0x20,
  0x20,
  0x20,
  0x20,
  0x18,
  0x20,
  0x20,
  0x20,
  0x20,
  0xc0};

const unsigned char acFont13H_ASCII_007E[ 26] = {  
  0x0,0x0,
  0x0,0x0,
  0x0,0x0,
  0x0,0x0,
  0x0,0x0,
  0x31,0x0,
  0x49,0x0,
  0x46,0x0,
  0x0,0x0,
  0x0,0x0,
  0x0,0x0,
  0x0,0x0,
  0x0,0x0};


const GUI_CHARINFO GUI_Font13H_ASCII_CharInfo[95] = {
   {   4,   4,  1, acFont13H_ASCII_0020 }  
  ,{   4,   4,  1, acFont13H_ASCII_0021 }  
  ,{   5,   5,  1, acFont13H_ASCII_0022 }  
  ,{   9,   9,  2, acFont13H_ASCII_0023 }  
  ,{   7,   7,  1, acFont13H_ASCII_0024 }  
  ,{  12,  12,  2, acFont13H_ASCII_0025 }  
  ,{   9,   9,  2, acFont13H_ASCII_0026 }  
  ,{   3,   3,  1, acFont13H_ASCII_0027 }  
  ,{   5,   5,  1, acFont13H_ASCII_0028 }  
  ,{   5,   5,  1, acFont13H_ASCII_0029 }  
  ,{   8,   8,  1, acFont13H_ASCII_002A }  
  ,{   8,   8,  1, acFont13H_ASCII_002B }  
  ,{   4,   4,  1, acFont13H_ASCII_002C }  
  ,{   5,   5,  1, acFont13H_ASCII_002D }  
  ,{   4,   4,  1, acFont13H_ASCII_002E }  
  ,{   5,   5,  1, acFont13H_ASCII_002F }  
  ,{   7,   7,  1, acFont13H_ASCII_0030 }  
  ,{   7,   7,  1, acFont13H_ASCII_0031 }  
  ,{   7,   7,  1, acFont13H_ASCII_0032 }  
  ,{   7,   7,  1, acFont13H_ASCII_0033 }  
  ,{   7,   7,  1, acFont13H_ASCII_0034 }  
  ,{   7,   7,  1, acFont13H_ASCII_0035 }  
  ,{   7,   7,  1, acFont13H_ASCII_0036 }  
  ,{   7,   7,  1, acFont13H_ASCII_0037 }  
  ,{   7,   7,  1, acFont13H_ASCII_0038 }  
  ,{   7,   7,  1, acFont13H_ASCII_0039 }  
  ,{   5,   5,  1, acFont13H_ASCII_003A }  
  ,{   5,   5,  1, acFont13H_ASCII_003B }  
  ,{   9,   9,  2, acFont13H_ASCII_003C }  
  ,{   9,   9,  2, acFont13H_ASCII_003D }  
  ,{   9,   9,  2, acFont13H_ASCII_003E }  
  ,{   6,   6,  1, acFont13H_ASCII_003F }  
  ,{  12,  12,  2, acFont13H_ASCII_0040 }  
  ,{   8,   8,  1, acFont13H_ASCII_0041 }  
  ,{   7,   7,  1, acFont13H_ASCII_0042 }  
  ,{   8,   8,  1, acFont13H_ASCII_0043 }  
  ,{   8,   8,  1, acFont13H_ASCII_0044 }  
  ,{   7,   7,  1, acFont13H_ASCII_0045 }  
  ,{   7,   7,  1, acFont13H_ASCII_0046 }  
  ,{   8,   8,  1, acFont13H_ASCII_0047 }  
  ,{   8,   8,  1, acFont13H_ASCII_0048 }  
  ,{   4,   4,  1, acFont13H_ASCII_0049 }  
  ,{   5,   5,  1, acFont13H_ASCII_004A }  
  ,{   7,   7,  1, acFont13H_ASCII_004B }  
  ,{   6,   6,  1, acFont13H_ASCII_004C }  
  ,{  10,  10,  2, acFont13H_ASCII_004D }  
  ,{   8,   8,  1, acFont13H_ASCII_004E }  
  ,{   9,   9,  2, acFont13H_ASCII_004F }  
  ,{   7,   7,  1, acFont13H_ASCII_0050 }  
  ,{   9,   9,  2, acFont13H_ASCII_0051 }  
  ,{   8,   8,  1, acFont13H_ASCII_0052 }  
  ,{   8,   8,  1, acFont13H_ASCII_0053 }  
  ,{   8,   8,  1, acFont13H_ASCII_0054 }  
  ,{   8,   8,  1, acFont13H_ASCII_0055 }  
  ,{   8,   8,  1, acFont13H_ASCII_0056 }  
  ,{  12,  12,  2, acFont13H_ASCII_0057 }  
  ,{   8,   8,  1, acFont13H_ASCII_0058 }  
  ,{   7,   7,  1, acFont13H_ASCII_0059 }  
  ,{   7,   7,  1, acFont13H_ASCII_005A }  
  ,{   5,   5,  1, acFont13H_ASCII_005B }  
  ,{   5,   5,  1, acFont13H_ASCII_005C }  
  ,{   5,   5,  1, acFont13H_ASCII_005D }  
  ,{   9,   9,  2, acFont13H_ASCII_005E }  
  ,{   7,   7,  1, acFont13H_ASCII_005F }  
  ,{   7,   7,  1, acFont13H_ASCII_0060 }  
  ,{   7,   7,  1, acFont13H_ASCII_0061 }  
  ,{   7,   7,  1, acFont13H_ASCII_0062 }  
  ,{   6,   6,  1, acFont13H_ASCII_0063 }  
  ,{   7,   7,  1, acFont13H_ASCII_0064 }  
  ,{   7,   7,  1, acFont13H_ASCII_0065 }  
  ,{   4,   4,  1, acFont13H_ASCII_0066 }  
  ,{   7,   7,  1, acFont13H_ASCII_0067 }  
  ,{   7,   7,  1, acFont13H_ASCII_0068 }  
  ,{   3,   3,  1, acFont13H_ASCII_0069 }  
  ,{   4,   4,  1, acFont13H_ASCII_006A }  
  ,{   6,   6,  1, acFont13H_ASCII_006B }  
  ,{   3,   3,  1, acFont13H_ASCII_006C }  
  ,{  11,  11,  2, acFont13H_ASCII_006D }  
  ,{   7,   7,  1, acFont13H_ASCII_006E }  
  ,{   7,   7,  1, acFont13H_ASCII_006F }  
  ,{   7,   7,  1, acFont13H_ASCII_0070 }  
  ,{   7,   7,  1, acFont13H_ASCII_0071 }  
  ,{   5,   5,  1, acFont13H_ASCII_0072 }  
  ,{   6,   6,  1, acFont13H_ASCII_0073 }  
  ,{   4,   4,  1, acFont13H_ASCII_0074 }  
  ,{   7,   7,  1, acFont13H_ASCII_0075 }  
  ,{   6,   6,  1, acFont13H_ASCII_0076 }  
  ,{  10,  10,  2, acFont13H_ASCII_0077 }  
  ,{   6,   6,  1, acFont13H_ASCII_0078 }  
  ,{   6,   6,  1, acFont13H_ASCII_0079 }  
  ,{   6,   6,  1, acFont13H_ASCII_007A }  
  ,{   6,   6,  1, acFont13H_ASCII_007B }  
  ,{   6,   6,  1, acFont13H_ASCII_007C }  
  ,{   6,   6,  1, acFont13H_ASCII_007D }  
  ,{   9,   9,  2, acFont13H_ASCII_007E }  
};

const GUI_FONT_PROP GUI_Font13H_ASCII_Prop1 = {
   0x0020                          
  ,0x007E                          
  ,&GUI_Font13H_ASCII_CharInfo[0]  
  ,(const GUI_FONT_PROP*)0         
};

const GUI_FONT GUI_Font13H_ASCII = {
   GUIPROP_DispChar, GUIPROP_GetCharDistX, GUIPROP_GetFontInfo, GUIPROP_IsInFont, (tGUI_ENC_APIList*)0         
  ,13                        
  ,13                        
  ,1                         
  ,1                         
  ,{&GUI_Font13H_ASCII_Prop1}
  , 11, 7, 9
};

