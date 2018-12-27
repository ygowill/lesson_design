#line 1 "..\\code\\uCGUI\\JPEG\\GUI_JPEG.c"

















 

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





 
#line 21 "..\\code\\uCGUI\\JPEG\\GUI_JPEG.c"

#line 1 "..\\code\\GUI\\GUI_inc\\GUI_Private.h"





















 




#line 1 "..\\code\\GUI\\GUI_inc\\GUI_Protected.h"

















 




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



 
#line 24 "..\\code\\GUI\\GUI_inc\\GUI_Protected.h"
#line 1 "..\\code\\GUI\\GUI_inc\\LCD_Protected.h"

















 




#line 24 "..\\code\\GUI\\GUI_inc\\LCD_Protected.h"






 

typedef struct {
  int              NumEntries; 
  const LCD_COLOR* pPalEntries; 
} LCD_PHYSPALETTE; 






 
extern const unsigned char LCD_aMirror[256];







 
unsigned LCD_Color2Index_User    (LCD_COLOR Color);
unsigned LCD_Color2Index_0       (LCD_COLOR Color, const LCD_PHYSPALETTE* pPhysPal);
unsigned LCD_Color2Index_1       (LCD_COLOR Color);
unsigned LCD_Color2Index_M1      (LCD_COLOR Color);
unsigned LCD_Color2Index_2       (LCD_COLOR Color);
unsigned LCD_Color2Index_M2      (LCD_COLOR Color);
unsigned LCD_Color2Index_4       (LCD_COLOR Color);
unsigned LCD_Color2Index_M4      (LCD_COLOR Color);
unsigned LCD_Color2Index_111     (LCD_COLOR Color);
unsigned LCD_Color2Index_222     (LCD_COLOR Color);
unsigned LCD_Color2Index_233     (LCD_COLOR Color);
unsigned LCD_Color2Index_323     (LCD_COLOR Color);
unsigned LCD_Color2Index_332     (LCD_COLOR Color);
unsigned LCD_Color2Index_444_12  (LCD_COLOR Color);
unsigned LCD_Color2Index_444_12_1(LCD_COLOR Color);
unsigned LCD_Color2Index_444_16  (LCD_COLOR Color);
unsigned LCD_Color2Index_555     (LCD_COLOR Color);
unsigned LCD_Color2Index_565     (LCD_COLOR Color);
unsigned LCD_Color2Index_556     (LCD_COLOR Color);
unsigned LCD_Color2Index_655     (LCD_COLOR Color);
unsigned LCD_Color2Index_8666    (LCD_COLOR Color);
unsigned LCD_Color2Index_8666_1  (LCD_COLOR Color);
unsigned LCD_Color2Index_M111    (LCD_COLOR Color);
unsigned LCD_Color2Index_M222    (LCD_COLOR Color);
unsigned LCD_Color2Index_M233    (LCD_COLOR Color);
unsigned LCD_Color2Index_M323    (LCD_COLOR Color);
unsigned LCD_Color2Index_M332    (LCD_COLOR Color);
unsigned LCD_Color2Index_M444_12 (LCD_COLOR Color);
unsigned LCD_Color2Index_M444_16 (LCD_COLOR Color);
unsigned LCD_Color2Index_M555    (LCD_COLOR Color);
unsigned LCD_Color2Index_M565    (LCD_COLOR Color);
unsigned LCD_Color2Index_M556    (LCD_COLOR Color);
unsigned LCD_Color2Index_M655    (LCD_COLOR Color);

LCD_COLOR LCD_Index2Color_User    (int Index);
LCD_COLOR LCD_Index2Color_0       (int Index, const LCD_PHYSPALETTE* pPhysPal);
LCD_COLOR LCD_Index2Color_1       (int Index);
LCD_COLOR LCD_Index2Color_2       (int Index);
LCD_COLOR LCD_Index2Color_4       (int Index);
LCD_COLOR LCD_Index2Color_111     (int Index);
LCD_COLOR LCD_Index2Color_222     (int Index);
LCD_COLOR LCD_Index2Color_233     (int Index);
LCD_COLOR LCD_Index2Color_323     (int Index);
LCD_COLOR LCD_Index2Color_332     (int Index);
LCD_COLOR LCD_Index2Color_444_12  (int Index);
LCD_COLOR LCD_Index2Color_444_12_1(int Index);
LCD_COLOR LCD_Index2Color_444_16  (int Index);
LCD_COLOR LCD_Index2Color_555     (int Index);
LCD_COLOR LCD_Index2Color_565     (int Index);
LCD_COLOR LCD_Index2Color_556     (int Index);
LCD_COLOR LCD_Index2Color_655     (int Index);
LCD_COLOR LCD_Index2Color_8666    (int Index);
LCD_COLOR LCD_Index2Color_8666_1  (int Index);
LCD_COLOR LCD_Index2Color_M111    (int Index);
LCD_COLOR LCD_Index2Color_M222    (int Index);
LCD_COLOR LCD_Index2Color_M233    (int Index);
LCD_COLOR LCD_Index2Color_M323    (int Index);
LCD_COLOR LCD_Index2Color_M332    (int Index);
LCD_COLOR LCD_Index2Color_M444_12 (int Index);
LCD_COLOR LCD_Index2Color_M444_16 (int Index);
LCD_COLOR LCD_Index2Color_M555    (int Index);
LCD_COLOR LCD_Index2Color_M565    (int Index);
LCD_COLOR LCD_Index2Color_M556    (int Index);
LCD_COLOR LCD_Index2Color_M655    (int Index);

unsigned LCD_GetIndexMask_User    (void);
unsigned LCD_GetIndexMask_0       (void);
unsigned LCD_GetIndexMask_1       (void);
unsigned LCD_GetIndexMask_M1      (void);
unsigned LCD_GetIndexMask_2       (void);
unsigned LCD_GetIndexMask_M2      (void);
unsigned LCD_GetIndexMask_4       (void);
unsigned LCD_GetIndexMask_M4      (void);
unsigned LCD_GetIndexMask_111     (void);
unsigned LCD_GetIndexMask_222     (void);
unsigned LCD_GetIndexMask_233     (void);
unsigned LCD_GetIndexMask_323     (void);
unsigned LCD_GetIndexMask_332     (void);
unsigned LCD_GetIndexMask_444_12  (void);
unsigned LCD_GetIndexMask_444_12_1(void);
unsigned LCD_GetIndexMask_444_16  (void);
unsigned LCD_GetIndexMask_555     (void);
unsigned LCD_GetIndexMask_565     (void);
unsigned LCD_GetIndexMask_556     (void);
unsigned LCD_GetIndexMask_655     (void);
unsigned LCD_GetIndexMask_8666    (void);
unsigned LCD_GetIndexMask_8666_1  (void);
unsigned LCD_GetIndexMask_M111    (void);
unsigned LCD_GetIndexMask_M222    (void);
unsigned LCD_GetIndexMask_M233    (void);
unsigned LCD_GetIndexMask_M323    (void);
unsigned LCD_GetIndexMask_M332    (void);
unsigned LCD_GetIndexMask_M444_12 (void);
unsigned LCD_GetIndexMask_M444_16 (void);
unsigned LCD_GetIndexMask_M555    (void);
unsigned LCD_GetIndexMask_M565    (void);
unsigned LCD_GetIndexMask_M556    (void);
unsigned LCD_GetIndexMask_M655    (void);

void LCD_SelectLCD(void);














 

unsigned int LCD_L0_Color2Index       (LCD_COLOR Color);
unsigned int LCD_L0_1_Color2Index     (LCD_COLOR Color);
unsigned int LCD_L0_2_Color2Index     (LCD_COLOR Color);
unsigned int LCD_L0_3_Color2Index     (LCD_COLOR Color);
unsigned int LCD_L0_4_Color2Index     (LCD_COLOR Color);
void         LCD_L0_DrawHLine         (int x0, int y0,  int x1);
void         LCD_L0_1_DrawHLine       (int x0, int y0,  int x1);
void         LCD_L0_2_DrawHLine       (int x0, int y0,  int x1);
void         LCD_L0_3_DrawHLine       (int x0, int y0,  int x1);
void         LCD_L0_4_DrawHLine       (int x0, int y0,  int x1);
void         LCD_L0_MAG_DrawHLine     (int x0, int y0,  int x1);
void         LCD_L0_DELTA_DrawHLine     (int x0, int y0,  int x1);
void         LCD_L0_DrawVLine         (int x,  int y0,  int y1);
void         LCD_L0_1_DrawVLine       (int x,  int y0,  int y1);
void         LCD_L0_2_DrawVLine       (int x,  int y0,  int y1);
void         LCD_L0_3_DrawVLine       (int x,  int y0,  int y1);
void         LCD_L0_4_DrawVLine       (int x,  int y0,  int y1);
void         LCD_L0_MAG_DrawVLine     (int x,  int y0,  int y1);
void         LCD_L0_DELTA_DrawVLine     (int x,  int y0,  int y1);
void         LCD_L0_FillRect          (int x0, int y0, int x1, int y1);
void         LCD_L0_1_FillRect        (int x0, int y0, int x1, int y1);
void         LCD_L0_2_FillRect        (int x0, int y0, int x1, int y1);
void         LCD_L0_3_FillRect        (int x0, int y0, int x1, int y1);
void         LCD_L0_4_FillRect        (int x0, int y0, int x1, int y1);
void         LCD_L0_MAG_FillRect      (int x0, int y0, int x1, int y1);
void         LCD_L0_DELTA_FillRect      (int x0, int y0, int x1, int y1);
unsigned int LCD_L0_GetPixelIndex     (int x,  int y);
unsigned int LCD_L0_1_GetPixelIndex   (int x,  int y);
unsigned int LCD_L0_2_GetPixelIndex   (int x,  int y);
unsigned int LCD_L0_3_GetPixelIndex   (int x,  int y);
unsigned int LCD_L0_4_GetPixelIndex   (int x,  int y);
unsigned int LCD_L0_MAG_GetPixelIndex (int x,  int y);
unsigned int LCD_L0_DELTA_GetPixelIndex (int x,  int y);
void         LCD_L0_GetRect           (LCD_RECT * pRect);
void         LCD_L0_1_GetRect         (LCD_RECT * pRect);
void         LCD_L0_2_GetRect         (LCD_RECT * pRect);
void         LCD_L0_3_GetRect         (LCD_RECT * pRect);
void         LCD_L0_4_GetRect         (LCD_RECT * pRect);
void         LCD_L0_SetPixelIndex     (int x,  int y, int ColorIndex);
void         LCD_L0_1_SetPixelIndex   (int x,  int y, int ColorIndex);
void         LCD_L0_2_SetPixelIndex   (int x,  int y, int ColorIndex);
void         LCD_L0_3_SetPixelIndex   (int x,  int y, int ColorIndex);
void         LCD_L0_4_SetPixelIndex   (int x,  int y, int ColorIndex);
void         LCD_L0_MAG_SetPixelIndex (int x,  int y, int ColorIndex);
void         LCD_L0_DELTA_SetPixelIndex (int x,  int y, int ColorIndex);
void         LCD_L0_XorPixel          (int x,  int y);
void         LCD_L0_1_XorPixel        (int x,  int y);
void         LCD_L0_2_XorPixel        (int x,  int y);
void         LCD_L0_3_XorPixel        (int x,  int y);
void         LCD_L0_4_XorPixel        (int x,  int y);
void         LCD_L0_MAG_XorPixel      (int x,  int y);
void         LCD_L0_DELTA_XorPixel      (int x,  int y);
int          LCD_L0_Init              (void);
int          LCD_L0_1_Init            (void);
int          LCD_L0_2_Init            (void);
int          LCD_L0_3_Init            (void);
int          LCD_L0_4_Init            (void);
int          LCD_L0_MAG_Init          (void);
int          LCD_L0_DELTA_Init          (void);
void         LCD_L0_On                (void);
void         LCD_L0_1_On              (void);
void         LCD_L0_2_On              (void);
void         LCD_L0_3_On              (void);
void         LCD_L0_4_On              (void);
void         LCD_L0_Off               (void);
void         LCD_L0_1_Off             (void);
void         LCD_L0_2_Off             (void);
void         LCD_L0_3_Off             (void);
void         LCD_L0_4_Off             (void);
void         LCD_L0_SetLUTEntry       (unsigned char Pos, LCD_COLOR color);
void         LCD_L0_1_SetLUTEntry     (unsigned char Pos, LCD_COLOR color);
void         LCD_L0_2_SetLUTEntry     (unsigned char Pos, LCD_COLOR color);
void         LCD_L0_3_SetLUTEntry     (unsigned char Pos, LCD_COLOR color);
void         LCD_L0_4_SetLUTEntry     (unsigned char Pos, LCD_COLOR color);

void LCD_L0_ReInit       (void);  
void LCD_L0_Refresh      (void);  
                                 
 
void LCD_L0_SetOrg       (int x, int y);






 

#line 25 "..\\code\\GUI\\GUI_inc\\GUI_Protected.h"
#line 1 "..\\code\\GUI\\GUI_inc\\GUIDebug.h"




















 




#line 27 "..\\code\\GUI\\GUI_inc\\GUIDebug.h"
#line 1 "..\\code\\GUI\\GUI_inc\\GUI_X.h"





















 




#line 28 "..\\code\\GUI\\GUI_inc\\GUI_X.h"




















 

 
void GUI_X_Init(void);

 
void GUI_X_ExecIdle(void);

 
int  GUI_X_GetTime(void);
void GUI_X_Delay(int Period);

 
void GUI_X_Unlock(void);
void GUI_X_Lock(void);
unsigned long  GUI_X_GetTaskId(void);
void GUI_X_InitOS(void);

 
void GUI_X_WaitEvent(void);
void GUI_X_SignalEvent(void);
 
void GUI_X_Log(const char *s);
void GUI_X_Warn(const char *s);
void GUI_X_ErrorOut(const char *s); 






 
#line 28 "..\\code\\GUI\\GUI_inc\\GUIDebug.h"

#line 35 "..\\code\\GUI\\GUI_inc\\GUIDebug.h"

#line 43 "..\\code\\GUI\\GUI_inc\\GUIDebug.h"






 












 

 

#line 89 "..\\code\\GUI\\GUI_inc\\GUIDebug.h"






 

 

#line 122 "..\\code\\GUI\\GUI_inc\\GUIDebug.h"






 
 

#line 154 "..\\code\\GUI\\GUI_inc\\GUIDebug.h"






 











 
#line 26 "..\\code\\GUI\\GUI_inc\\GUI_Protected.h"
#line 1 "..\\code\\GUI\\GUI_inc\\WM_GUI.h"

















 








int       WM__InitIVRSearch(const GUI_RECT* pMaxRect);
int       WM__GetNextIVR   (void);
int       WM__GetOrgX_AA(void);
int       WM__GetOrgY_AA(void);










#line 50 "..\\code\\GUI\\GUI_inc\\WM_GUI.h"








 
#line 28 "..\\code\\GUI\\GUI_inc\\GUI_Protected.h"














 








 


































 















 

#line 113 "..\\code\\GUI\\GUI_inc\\GUI_Protected.h"






 

typedef enum { GUI_WRAPMODE_NONE, GUI_WRAPMODE_WORD, GUI_WRAPMODE_CHAR } GUI_WRAPMODE;

typedef signed short GUI_USAGE_Handle;
typedef struct tsUSAGE_APIList tUSAGE_APIList;
typedef struct GUI_Usage GUI_USAGE;




typedef GUI_USAGE_Handle tUSAGE_CreateCompatible(GUI_USAGE* p);
typedef void        tUSAGE_AddPixel        (GUI_USAGE* p, int x, int y);
typedef void        tUSAGE_AddHLine        (GUI_USAGE* p, int x0, int y0, int len);
typedef void        tUSAGE_Clear           (GUI_USAGE* p);
typedef void        tUSAGE_Delete          (GUI_USAGE_Handle h);
typedef int         tUSAGE_GetNextDirty    (GUI_USAGE* p, int *pxOff, int yOff);



void GUI_USAGE_DecUseCnt(GUI_USAGE_Handle  hUsage);

GUI_USAGE_Handle GUI_USAGE_BM_Create(int x0, int y0, int xsize, int ysize, int Flags);
void    GUI_USAGE_Select(GUI_USAGE_Handle hUsage);
void    GUI_USAGE_AddRect(GUI_USAGE*  pUsage, int x0, int y0, int xSize, int ySize);






struct tsUSAGE_APIList {
  tUSAGE_AddPixel*                pfAddPixel;
  tUSAGE_AddHLine*                pfAddHLine;
  tUSAGE_Clear*                   pfClear;
  tUSAGE_CreateCompatible*        pfCreateCompatible;
  tUSAGE_Delete*                  pfDelete;
  tUSAGE_GetNextDirty*            pfGetNextDirty;
} ;

struct GUI_Usage {
  signed short x0, y0, XSize, YSize;
  const tUSAGE_APIList *pAPI;
  signed short UseCnt;
};






 

#line 201 "..\\code\\GUI\\GUI_inc\\GUI_Protected.h"






 

#line 216 "..\\code\\GUI\\GUI_inc\\GUI_Protected.h"







 


int  GUI_cos(int angle);
int  GUI_sin(int angle);
void GL_DrawLine1(int x0, int y0, int x1, int y1);
extern const unsigned long GUI_Pow10[10];

 
int  GUI_AA_Init(int x0, int x1);
int  GUI_AA_Init_HiRes(int x0, int x1);
void GUI_AA_Exit(void);
signed short GUI_AA_HiRes2Pixel(int HiRes);

void GL_FillCircleAA_HiRes(int x0, int y0, int r);

 
void GUI_AddHex     (unsigned long v, unsigned char Len, char**ps);
void GUI_AddBin     (unsigned long v, unsigned char Len, char**ps);
void GUI_AddDecMin  (signed long v, char**ps);
void GUI_AddDec     (signed long v, unsigned char Len, char**ps);
void GUI_AddDecShift(signed long v, unsigned char Len, unsigned char Shift, char**ps);
long GUI_AddSign    (long v, char**ps);
int  GUI_Long2Len   (signed long v);




int   GUI_UC__CalcSizeOfChar   (unsigned short Char);
unsigned short   GUI_UC__GetCharCodeInc   (const char  ** ps);
int   GUI_UC__NumChars2NumBytes(const char  * s, int NumChars);
int   GUI_UC__NumBytes2NumChars(const char  * s, int NumBytes);

int  GUI__GetLineNumChars  (const char  *s, int MaxNumChars);
int  GUI__GetNumChars      (const char  *s);
int  GUI__GetLineDistX     (const char  *s, int Len);
int  GUI__GetFontSizeY     (void);
int  GUI__HandleEOLine     (const char  **ps);
void GUI__DispLine         (const char  *s, int Len, const GUI_RECT* pr);
void GUI__AddSpaceHex      (unsigned long v, unsigned char Len, char**ps);
void GUI__CalcTextRect     (const char * pText, const GUI_RECT* pTextRectIn, GUI_RECT* pTextRectOut, int TextAlign);

int  GUI__WrapGetNumCharsDisp       (const char  * pText, int xSize, GUI_WRAPMODE WrapMode);
int  GUI__WrapGetNumCharsToNextLine (const char  * pText, int xSize, GUI_WRAPMODE WrapMode);
int  GUI__WrapGetNumBytesToNextLine (const char  * pText, int xSize, GUI_WRAPMODE WrapMode);
void GUI__memset    (unsigned char * p, unsigned char Fill, int NumBytes);
void GUI__memset16  (unsigned short* p, unsigned short Fill, int NumWords);
int  GUI__strlen    (const char  * s);
int  GUI__strcmp    (const char  * s0, const char  * s1);
int  GUI__strcmp_hp (signed short hs0, const char  * s1);

 
unsigned short GUI__Read16(const unsigned char ** ppData);
unsigned long GUI__Read32(const unsigned char ** ppData);






 

void GL_DispChar         (unsigned short c);
void GL_DrawArc          (int x0, int y0, int rx, int ry, int a0, int a1);
void GL_DrawBitmap       (const GUI_BITMAP  * pBM, int x0, int y0);
void GL_DrawCircle       (int x0, int y0, int r);
void GL_DrawEllipse      (int x0, int y0, int rx, int ry);
void GL_DrawHLine        (int y0, int x0, int x1);
void GL_DrawPolygon      (const GUI_POINT* pPoints, int NumPoints, int x0, int y0);
void GL_DrawPoint        (int x, int y);
void GL_DrawLineRel      (int dx, int dy);
void GL_DrawLineTo       (int x, int y);
void GL_DrawLine         (int x0, int y0, int x1, int y1);
void GL_MoveTo           (int x, int y);
void GL_FillCircle       (int x0, int y0, int r);
void GL_FillCircleAA     (int x0, int y0, int r);
void GL_FillEllipse      (int x0, int y0, int rx, int ry);
void GL_FillPolygon      (const GUI_POINT* pPoints, int NumPoints, int x0, int y0);
void GL_SetDefault       (void);







 
typedef int  GUI_tfTimer(void);
typedef char GUI_CURSOR_tfTempHide  (const GUI_RECT* pRect);
typedef void GUI_CURSOR_tfTempUnhide(void);
typedef int  WM_tfHandlePID(void);







 

extern const unsigned char  GUI_Pixels_ArrowS[45];
extern const unsigned char  GUI_Pixels_ArrowM[60];
extern const unsigned char  GUI_Pixels_ArrowL[150];
extern const unsigned char  GUI_Pixels_CrossS[33];
extern const unsigned char  GUI_Pixels_CrossM[126];
extern const unsigned char  GUI_Pixels_CrossL[248];
extern const unsigned char  GUI_PixelsHeaderM[5 * 17];


extern const GUI_LOGPALETTE GUI_CursorPal;
extern const GUI_LOGPALETTE GUI_CursorPalI;






 

extern GUI_RECT  GUI_RectDispString;  






 

int       GUI_GetBitmapPixelIndex(const GUI_BITMAP  * pBMP, unsigned x, unsigned y);
GUI_COLOR GUI_GetBitmapPixelColor(const GUI_BITMAP  * pBMP, unsigned x, unsigned y);












 

#line 376 "..\\code\\GUI\\GUI_inc\\GUI_Protected.h"

extern  GUI_CONTEXT        GUI_Context;         
extern  char               GUI_DecChar;
extern           GUI_tfTimer*       GUI_pfTimerExec;
extern           WM_tfHandlePID*    WM_pfHandlePID;
extern      void (*GUI_pfDispCharStyle)(unsigned short Char);


  extern const     tLCD_APIList *     GUI_pLCD_APIList;    



  extern GUI_CURSOR_tfTempHide*   GUI_CURSOR_pfTempHide;
  extern GUI_CURSOR_tfTempUnhide* GUI_CURSOR_pfTempUnhide;






extern const GUI_UC_ENC_APILIST GUI__API_TableNone;







 
#line 28 "..\\code\\GUI\\GUI_inc\\GUI_Private.h"
#line 1 "..\\code\\GUI\\GUI_inc\\LCD_Private.h"

















 




#line 1 "..\\code\\GUI\\GUI_inc\\LCD_ConfDefaults.h"

















 




#line 1 "..\\code\\GUI\\Config\\LCDConf.h"

















 









 

#line 36 "..\\code\\GUI\\Config\\LCDConf.h"






 











 








#line 70 "..\\code\\GUI\\Config\\LCDConf.h"
                 






#line 87 "..\\code\\GUI\\Config\\LCDConf.h"













 







#line 122 "..\\code\\GUI\\Config\\LCDConf.h"
 


 
#line 24 "..\\code\\GUI\\GUI_inc\\LCD_ConfDefaults.h"
#line 25 "..\\code\\GUI\\GUI_inc\\LCD_ConfDefaults.h"







 









































































#line 112 "..\\code\\GUI\\GUI_inc\\LCD_ConfDefaults.h"

#line 119 "..\\code\\GUI\\GUI_inc\\LCD_ConfDefaults.h"






















 










 


















 


 

#line 182 "..\\code\\GUI\\GUI_inc\\LCD_ConfDefaults.h"

#line 189 "..\\code\\GUI\\GUI_inc\\LCD_ConfDefaults.h"









 





























 

#line 245 "..\\code\\GUI\\GUI_inc\\LCD_ConfDefaults.h"

 
#line 271 "..\\code\\GUI\\GUI_inc\\LCD_ConfDefaults.h"

#line 283 "..\\code\\GUI\\GUI_inc\\LCD_ConfDefaults.h"





 












#line 308 "..\\code\\GUI\\GUI_inc\\LCD_ConfDefaults.h"

#line 326 "..\\code\\GUI\\GUI_inc\\LCD_ConfDefaults.h"





#line 337 "..\\code\\GUI\\GUI_inc\\LCD_ConfDefaults.h"


 









 
#line 440 "..\\code\\GUI\\GUI_inc\\LCD_ConfDefaults.h"






 
#line 537 "..\\code\\GUI\\GUI_inc\\LCD_ConfDefaults.h"






 
#line 634 "..\\code\\GUI\\GUI_inc\\LCD_ConfDefaults.h"






 
#line 731 "..\\code\\GUI\\GUI_inc\\LCD_ConfDefaults.h"








 

















#line 24 "..\\code\\GUI\\GUI_inc\\LCD_Private.h"
#line 25 "..\\code\\GUI\\GUI_inc\\LCD_Private.h"
#line 26 "..\\code\\GUI\\GUI_inc\\LCD_Private.h"

typedef struct {
  LCD_COLOR * paColor;
  signed short         NumEntries;
} LCD_LUT_INFO;

#line 59 "..\\code\\GUI\\GUI_inc\\LCD_Private.h"



extern const struct tLCDDEV_APIList_struct *   LCD_aAPI[1];

const tLCDDEV_APIList* LCD_SetAPI(const tLCDDEV_APIList* pAPI, int Index);



#line 77 "..\\code\\GUI\\GUI_inc\\LCD_Private.h"

extern unsigned short LCD__aConvTable[(256)];
void LCD_DrawBitmap   (int x0, int y0,
                       int xsize, int ysize,
                       int xMul, int yMul,
                       int BitsPerPixel,
                       int BytesPerLine,
                       const unsigned char  * pPixel,
                       const unsigned short* pTrans);
void LCD_UpdateColorIndices(void);






 




#line 105 "..\\code\\GUI\\GUI_inc\\LCD_Private.h"

#line 113 "..\\code\\GUI\\GUI_inc\\LCD_Private.h"




 


#line 29 "..\\code\\GUI\\GUI_inc\\GUI_Private.h"

#line 57 "..\\code\\GUI\\GUI_inc\\GUI_Private.h"

void LCD_L0_DrawBitmap    (int x0, int y0, int xsize, int ysize, 
                           int BitsPerPixel, int BytesPerLine, 
                           const unsigned char  * pData, int Diff, const unsigned short* pTrans);
void LCD_L0_1_DrawBitmap  (int x0, int y0, int xsize, int ysize, 
                           int BitsPerPixel, int BytesPerLine, 
                           const unsigned char  * pData, int Diff, const unsigned short* pTrans);
void LCD_L0_2_DrawBitmap  (int x0, int y0, int xsize, int ysize, 
                           int BitsPerPixel, int BytesPerLine, 
                           const unsigned char  * pData, int Diff, const unsigned short* pTrans);
void LCD_L0_3_DrawBitmap  (int x0, int y0, int xsize, int ysize, 
                           int BitsPerPixel, int BytesPerLine, 
                           const unsigned char  * pData, int Diff, const unsigned short* pTrans);
void LCD_L0_4_DrawBitmap  (int x0, int y0, int xsize, int ysize, 
                           int BitsPerPixel, int BytesPerLine, 
                           const unsigned char  * pData, int Diff, const unsigned short* pTrans);
void LCD_L0_MAG_DrawBitmap(int x0, int y0, int xsize, int ysize, 
                           int BitsPerPixel, int BytesPerLine, 
                           const unsigned char  * pData, int Diff, const unsigned short* pTrans);
void LCD_L0_DELTA_DrawBitmap(int x0, int y0, int xsize, int ysize, 
                           int BitsPerPixel, int BytesPerLine, 
                           const unsigned char  * pData, int Diff, const unsigned short* pTrans);

unsigned short*  LCD_GetpPalConvTable(const LCD_LOGPALETTE  *  pLogPal);
unsigned short*  LCD_GetpPalConvTableUncached(const LCD_LOGPALETTE  *  pLogPal);












 
#line 23 "..\\code\\uCGUI\\JPEG\\GUI_JPEG.c"
#line 1 "..\\code\\uCGUI\\JPEG\\jpeglib.h"










 









 

#line 1 "..\\code\\uCGUI\\JPEG\\jconfig.h"












 


#line 17 "..\\code\\uCGUI\\JPEG\\jconfig.h"




 




 






 
#line 42 "..\\code\\uCGUI\\JPEG\\jconfig.h"




 









 











 










 

#line 93 "..\\code\\uCGUI\\JPEG\\jconfig.h"








#line 25 "..\\code\\uCGUI\\JPEG\\jpeglib.h"
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







 






#line 24 "..\\code\\uCGUI\\JPEG\\GUI_JPEG.c"
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

#line 25 "..\\code\\uCGUI\\JPEG\\GUI_JPEG.c"
#line 1 "..\\code\\uCGUI\\JPEG\\jmemsys.h"


















 












 

extern void * jpeg_get_small (j_common_ptr cinfo, size_t sizeofobject);
extern void jpeg_free_small (j_common_ptr cinfo, void * object, size_t sizeofobject);









 

extern void * jpeg_get_large (j_common_ptr cinfo, size_t sizeofobject);

extern void jpeg_free_large (j_common_ptr cinfo, void * object, size_t sizeofobject);












 

























 

extern long jpeg_mem_available (j_common_ptr cinfo, long min_bytes_needed, long max_bytes_needed, long already_allocated);










 




#line 118 "..\\code\\uCGUI\\JPEG\\jmemsys.h"






typedef struct backing_store_struct * backing_store_ptr;

typedef struct backing_store_struct {
   
  void (*read_backing_store) (j_common_ptr cinfo, backing_store_ptr info, void * buffer_address, long file_offset, long byte_count);
  void (*write_backing_store) (j_common_ptr cinfo, backing_store_ptr info, void * buffer_address, long file_offset, long byte_count);
  void (*close_backing_store) (j_common_ptr cinfo, backing_store_ptr info);

   
#line 144 "..\\code\\uCGUI\\JPEG\\jmemsys.h"
   
  	 
  char temp_name[64];  


} backing_store_info;








 

extern void jpeg_open_backing_store (j_common_ptr cinfo, backing_store_ptr info, long total_bytes_needed);














 

extern long jpeg_mem_init (j_common_ptr cinfo);
extern void jpeg_mem_term (j_common_ptr cinfo);
#line 26 "..\\code\\uCGUI\\JPEG\\GUI_JPEG.c"







 


 

typedef struct {
  struct jpeg_source_mgr pub;	 
  const unsigned char* pFileData;
  signed long   FileSize;
  signed long   Off;
  boolean start_of_file;	 
} SOURCE_MANAGER;

static const unsigned char _abEnd[2] = {
    0xFF, 0xD9
};






 




 

static void _InitSource (j_decompress_ptr cinfo) {
  SOURCE_MANAGER* pSrc = (SOURCE_MANAGER*) cinfo->src;

  


 
  pSrc->start_of_file = 1;
}
































 

static boolean _FillInputBuffer(j_decompress_ptr cinfo) {
  SOURCE_MANAGER* pSrc = (SOURCE_MANAGER*) cinfo->src;
  size_t nbytes;
  int RemBytes = pSrc->FileSize - pSrc->Off;
  if (RemBytes > 0) {
    nbytes = (RemBytes > 4096) ? 4096 : RemBytes;
    pSrc->pub.next_input_byte = pSrc->pFileData + pSrc->Off;
    pSrc->Off += nbytes;
  } else {
    if (pSrc->start_of_file)	 
      ((cinfo)->err->msg_code = (JERR_INPUT_EMPTY), (*(cinfo)->err->error_exit) ((j_common_ptr) (cinfo)));
    ((cinfo)->err->msg_code = (JWRN_JPEG_EOF), (*(cinfo)->err->emit_message) ((j_common_ptr) (cinfo), -1));
     
    nbytes = 2;
    pSrc->pub.next_input_byte = _abEnd;
  }

  pSrc->pub.bytes_in_buffer = nbytes;
  pSrc->start_of_file = 0;
  return 1;
}











 

static void _SkipInputData (j_decompress_ptr cinfo, long num_bytes) {
  SOURCE_MANAGER* pSrc = (SOURCE_MANAGER*) cinfo->src;
  


 
  if (num_bytes > 0) {
    while (num_bytes > (long) pSrc->pub.bytes_in_buffer) {
      num_bytes -= (long) pSrc->pub.bytes_in_buffer;
      (void) _FillInputBuffer(cinfo);
      

 
    }
    pSrc->pub.next_input_byte += (size_t) num_bytes;
    pSrc->pub.bytes_in_buffer -= (size_t) num_bytes;
  }
}






 









 

static void _TermSource(j_decompress_ptr cinfo) {
   
  cinfo=cinfo;;
}


static void _InitSrc(j_decompress_ptr cinfo, const unsigned char* pFileData, signed long FileSize) {
  SOURCE_MANAGER* pSrc;
  





 
  if (cinfo->src == 0) {	 
    cinfo->src = (jpeg_source_mgr *) (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, 0, sizeof(SOURCE_MANAGER));
  }
  pSrc = (SOURCE_MANAGER*) cinfo->src;
  pSrc->pub.init_source       = _InitSource;
  pSrc->pub.fill_input_buffer = _FillInputBuffer;
  pSrc->pub.skip_input_data   = _SkipInputData;
  pSrc->pub.resync_to_restart = jpeg_resync_to_restart;  
  pSrc->pub.term_source       = _TermSource;
  pSrc->pub.bytes_in_buffer   = 0;     
  pSrc->pub.next_input_byte   = 0;  
  

 
  pSrc->FileSize  = FileSize;
  pSrc->pFileData = pFileData;
  pSrc->Off       = 0;
}







 

int AllocCnt;    
int TotalSize;



 

void * jpeg_get_small (j_common_ptr cinfo, size_t sizeofobject) {
  cinfo=cinfo;;
  AllocCnt++;
  TotalSize += sizeofobject;
  return (void *) malloc(sizeofobject);
}

void jpeg_free_small (j_common_ptr cinfo, void * object, size_t sizeofobject) {
  cinfo=cinfo;;
  sizeofobject=sizeofobject;;
  if (--AllocCnt) {
    TotalSize = 0;
  }
  free(object);
}




 

long jpeg_mem_available (j_common_ptr cinfo, long min_bytes_needed, long max_bytes_needed, long already_allocated) {
  cinfo=cinfo;;
  min_bytes_needed=min_bytes_needed;;
  already_allocated=already_allocated;;
  return max_bytes_needed;
}






 

long jpeg_mem_init (j_common_ptr cinfo) { 
  cinfo=cinfo;;
  return 0;
}

void jpeg_mem_term (j_common_ptr cinfo) {
  cinfo=cinfo;;
}


















 
static void _Init(struct jpeg_error_mgr* pjerr, struct jpeg_decompress_struct *pcinfo, const void * pFileData, int DataSize) {
   
  pcinfo->err = jpeg_std_error(pjerr);
	jpeg_CreateDecompress((pcinfo), 62, (size_t) sizeof(struct jpeg_decompress_struct));
   
  _InitSrc(pcinfo, (const unsigned char*)pFileData, DataSize);
   
	jpeg_read_header(pcinfo, 1);
}




 
static void _WritePixelsRGB(const unsigned char*p, int x0, int y0, int xSize) {
  unsigned char r,g,b;
  while (xSize) {
    r = *p++;
    g = *p++;
    b = *p++;
    LCD_SetColor(r | (g << 8) | (unsigned long)((unsigned long)b << 16));
    LCD_DrawPixel(x0++, y0);
    xSize--;
  }
}




 
static void _WritePixelsGray(const unsigned char*p, int x0, int y0, int xSize) {
  unsigned char u;
  while (xSize) {
    u = *p++;
    LCD_SetColor(u * (unsigned long)0x10101);
    LCD_DrawPixel(x0++, y0);
    xSize--;
  }
}






 



 
int GUI_JPEG_GetInfo(const void * pFileData, int DataSize, GUI_JPEG_INFO* pInfo) {
	struct jpeg_decompress_struct cinfo;
	struct jpeg_error_mgr jerr;
  _Init(&jerr, &cinfo, pFileData, DataSize);
  

 
  jpeg_destroy_decompress(&cinfo);
  if (pInfo) {
    pInfo->XSize = cinfo.image_width;
    pInfo->YSize = cinfo.image_height;
  }
  return 0;
}





 
int GUI_JPEG_Draw(const void * pFileData, int DataSize, int x0, int y0) {

    GUI_RECT r;

  int Ret = 0;
  signed short hBuffer = 0;
	struct jpeg_decompress_struct cinfo;
	struct jpeg_error_mgr jerr;
  ;
  _Init(&jerr, &cinfo, pFileData, DataSize);

    x0 += GUI_Context . xOff; y0 += GUI_Context . yOff;
    r.x1 = (r.x0 = x0) + cinfo.image_width - 1;
    r.y1 = (r.y0 = y0) + cinfo.image_height - 1;
    { if (WM__InitIVRSearch(&r)) do { {

    if (hBuffer) {
      _Init(&jerr, &cinfo, pFileData, DataSize);
    }
     
     
	  jpeg_start_decompress(&cinfo);
     
	   
    if (!hBuffer) {
      hBuffer = GUI_ALLOC_AllocNoInit(cinfo.image_width * 3);
    }
    while (cinfo.output_scanline < cinfo.output_height) {
      unsigned char* p;
      p = (unsigned char*)GUI_ALLOC_h2p(hBuffer);
      jpeg_read_scanlines(&cinfo, &p, 1);
      if (cinfo.jpeg_color_space == JCS_GRAYSCALE) {
        _WritePixelsGray(p, x0, y0 + cinfo.output_scanline, cinfo.image_width);
      } else {
        _WritePixelsRGB(p, x0, y0 + cinfo.output_scanline, cinfo.image_width);
      }
    }
     
     
     
	  jpeg_finish_decompress(&cinfo);
     
    jpeg_destroy_decompress(&cinfo);

    } } while (WM__GetNextIVR()); };

  GUI_ALLOC_Free(hBuffer);
  ;
  return Ret;
}

 


