#line 1 "..\\code\\uCGUI\\Widget\\MULTIEDIT.c"

















 

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





 
#line 21 "..\\code\\uCGUI\\Widget\\MULTIEDIT.c"
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



 

#line 22 "..\\code\\uCGUI\\Widget\\MULTIEDIT.c"
#line 1 "..\\code\\uCGUI\\Widget\\MULTIEDIT.h"

















 




#line 1 "..\\code\\GUI\\GUI_inc\\WM.h"

















 





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







 
#line 25 "..\\code\\GUI\\GUI_inc\\WM.h"
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


 
#line 26 "..\\code\\GUI\\GUI_inc\\WM.h"
#line 1 "..\\code\\GUI\\GUI_inc\\WM_GUI.h"

















 








int       WM__InitIVRSearch(const GUI_RECT* pMaxRect);
int       WM__GetNextIVR   (void);
int       WM__GetOrgX_AA(void);
int       WM__GetOrgY_AA(void);










#line 50 "..\\code\\GUI\\GUI_inc\\WM_GUI.h"








 
#line 27 "..\\code\\GUI\\GUI_inc\\WM.h"





 





 
#line 46 "..\\code\\GUI\\GUI_inc\\WM.h"




 








 













 




 











 










 









 

typedef struct {
  int Key, PressedCnt;
} WM_KEY_INFO;

typedef struct {
  int NumItems, v, PageSize;
} WM_SCROLL_STATE;

typedef struct {
  int Done;
  int ReturnValue;
} WM_DIALOG_STATUS;

typedef struct {
  int x,y;
  unsigned char  State;
  unsigned char  StatePrev;
} WM_PID_STATE_CHANGED_INFO;








 






































#line 186 "..\\code\\GUI\\GUI_inc\\WM.h"

















 
#line 214 "..\\code\\GUI\\GUI_inc\\WM.h"






 









 










 

#line 250 "..\\code\\GUI\\GUI_inc\\WM.h"
 




 





#line 268 "..\\code\\GUI\\GUI_inc\\WM.h"




 

typedef struct {
  int MsgId;             
  GUI_HWIN hWin;          
  GUI_HWIN hWinSrc;       
  union {
    const void* p;             
    int v;
    GUI_COLOR Color;
  } Data;
} WM_MESSAGE;

typedef void WM_CALLBACK( WM_MESSAGE* pMsg);

typedef struct {
  GUI_RECT Rect;         
  GUI_RECT InvalidRect;  
  WM_CALLBACK* cb;       
  GUI_HWIN hNextLin;      
  GUI_HWIN hParent;
  GUI_HWIN hFirstChild;
  GUI_HWIN hNext;
  unsigned short Status;	           
} WM_Obj;

typedef void WM_tfPollPID(void);
typedef void WM_tfForEach(GUI_HWIN hWin, void * pData);







 


void WM_Activate  (void);
void WM_Deactivate(void);
void WM_Init      (void);
int  WM_Exec      (void);     
int  WM_Exec1     (void);     
unsigned short  WM_SetCreateFlags(unsigned short Flags);
WM_tfPollPID* WM_SetpfPollPID(WM_tfPollPID* pf);
void WM_SetCapture(GUI_HWIN hObj, int AutoRelease);
void WM_SetCaptureMove(GUI_HWIN hWin, const GUI_PID_STATE* pState, int MinVisibility);  
void WM_ReleaseCapture(void);






 

void    WM_AttachWindow              (GUI_HWIN hWin, GUI_HWIN hParent);
void    WM_AttachWindowAt            (GUI_HWIN hWin, GUI_HWIN hParent, int x, int y);
int     WM_CheckScrollPos            (WM_SCROLL_STATE* pScrollState, int Pos, int LowerDist, int UpperDist);  
void    WM_ClrHasTrans               (GUI_HWIN hWin);
GUI_HWIN WM_CreateWindow              (int x0, int y0, int xSize, int ySize, unsigned short Style, WM_CALLBACK* cb, int NumExtraBytes);
GUI_HWIN WM_CreateWindowAsChild       (int x0, int y0, int xSize, int ySize, GUI_HWIN hWinParent, unsigned short Style, WM_CALLBACK* cb, int NumExtraBytes);
void    WM_DeleteWindow              (GUI_HWIN hWin);
void    WM_DetachWindow              (GUI_HWIN hWin);
int     WM_GetHasTrans               (GUI_HWIN hWin);
GUI_HWIN WM_GetFocussedWindow         (void);
void    WM_HideWindow                (GUI_HWIN hWin);
void    WM_InvalidateArea            (const GUI_RECT* pRect);
void    WM_InvalidateRect            (GUI_HWIN hWin, const GUI_RECT*pRect);
void    WM_InvalidateWindow          (GUI_HWIN hWin);
void    WM_InvalidateWindowDescs     (GUI_HWIN hWin);     
int     WM_IsEnabled                 (GUI_HWIN hObj);
int     WM_IsFocussable              (GUI_HWIN hWin);
int     WM_IsVisible                 (GUI_HWIN hWin);
int     WM_IsWindow                  (GUI_HWIN hWin);     
char    WM_IsCompletelyVisible       (GUI_HWIN hWin);     
void    WM_SetHasTrans               (GUI_HWIN hWin);
void    WM_SetId                     (GUI_HWIN hObj, int Id);
void    WM_SetTransState             (GUI_HWIN hWin, unsigned State);
void    WM_ShowWindow                (GUI_HWIN hWin);
void    WM_ValidateRect              (GUI_HWIN hWin, const GUI_RECT*pRect);
void    WM_ValidateWindow            (GUI_HWIN hWin);
int     WM_GetInvalidRect            (GUI_HWIN hWin, GUI_RECT * pRect);
void    WM_SetStayOnTop              (GUI_HWIN hWin, int OnOff);
int     WM_GetStayOnTop              (GUI_HWIN hWin);
void    WM_SetAnchor                 (GUI_HWIN hWin, unsigned short AnchorFlags);

 
void WM_MoveWindow                (GUI_HWIN hWin, int dx, int dy);
void WM_ResizeWindow              (GUI_HWIN hWin, int dx, int dy);
void WM_MoveTo                    (GUI_HWIN hWin, int x, int y);
void WM_MoveChildTo               (GUI_HWIN hWin, int x, int y);
void WM_SetSize                   (GUI_HWIN hWin, int XSize, int YSize);
int  WM_SetXSize                  (GUI_HWIN hWin, int xSize);
int  WM_SetYSize                  (GUI_HWIN hWin, int ySize);
int  WM_CreateTimer               (GUI_HWIN hWin, int UserID, int Period, int Mode);  
void WM_DeleteTimer               (GUI_HWIN hWin, int UserId);  
int  WM_SetScrollbarH             (GUI_HWIN hWin, int OnOff);  
int  WM_SetScrollbarV             (GUI_HWIN hWin, int OnOff);  


 
int WM_GetNumWindows(void);
int WM_GetNumInvalidWindows(void);

 
int  WM_SetScrollValue   (WM_SCROLL_STATE* pScrollState, int v);  
void WM_CheckScrollBounds(WM_SCROLL_STATE* pScrollState);  


 
WM_CALLBACK* WM_SetCallback       (GUI_HWIN Win, WM_CALLBACK* cb);

 
void WM_GetClientRect             (GUI_RECT* pRect);
void WM_GetClientRectEx           (GUI_HWIN hWin, GUI_RECT* pRect);
void WM_GetInsideRect             (GUI_RECT* pRect);
void WM_GetInsideRectEx           (GUI_HWIN hWin, GUI_RECT* pRect);
void WM_GetInsideRectExScrollbar  (GUI_HWIN hWin, GUI_RECT* pRect);  
void WM_GetWindowRect             (GUI_RECT* pRect);
void WM_GetWindowRectEx           (GUI_HWIN hWin, GUI_RECT* pRect);
int  WM_GetOrgX                   (void);
int  WM_GetOrgY                   (void);
int  WM_GetWindowOrgX             (GUI_HWIN hWin);
int  WM_GetWindowOrgY             (GUI_HWIN hWin);
int  WM_GetWindowSizeX            (GUI_HWIN hWin);
int  WM_GetWindowSizeY            (GUI_HWIN hWin);
GUI_HWIN WM_GetFirstChild          (GUI_HWIN hWin);
GUI_HWIN WM_GetNextSibling         (GUI_HWIN hWin);
GUI_HWIN WM_GetParent              (GUI_HWIN hWin);
GUI_HWIN WM_GetPrevSibling         (GUI_HWIN hWin);
int     WM_GetId                  (GUI_HWIN hWin);
GUI_HWIN WM_GetScrollbarV          (GUI_HWIN hWin);
GUI_HWIN WM_GetScrollbarH          (GUI_HWIN hWin);
GUI_HWIN WM_GetScrollPartner       (GUI_HWIN hWin);
GUI_HWIN WM_GetClientWindow        (GUI_HWIN hObj);
GUI_COLOR WM_GetBkColor           (GUI_HWIN hObj);

 
void WM_BringToBottom(GUI_HWIN hWin);
void WM_BringToTop(GUI_HWIN hWin);

GUI_COLOR WM_SetDesktopColor(GUI_COLOR Color);
GUI_COLOR WM_SetDesktopColorEx(GUI_COLOR Color, unsigned int LayerIndex);
void WM_SetDesktopColors(GUI_COLOR Color);

 
GUI_HWIN WM_SelectWindow           (GUI_HWIN  hWin);
GUI_HWIN WM_GetActiveWindow        (void);
void    WM_Paint                  (GUI_HWIN hObj);

 
GUI_HWIN WM_GetDesktopWindow    (void);
GUI_HWIN WM_GetDesktopWindowEx  (unsigned int LayerIndex);

 
const GUI_RECT* WM_SetUserClipRect(const GUI_RECT* pRect);
void            WM_SetDefault     (void);

 
void WM_EnableMemdev              (GUI_HWIN hWin);
void WM_DisableMemdev             (GUI_HWIN hWin);

int WM_OnKey(int Key, int Pressed);
void WM_MakeModal(GUI_HWIN hWin);









 

void      WM_NotifyParent         (GUI_HWIN hWin, int Notification);
void      WM_SendMessage          (GUI_HWIN hWin, WM_MESSAGE* p);
void      WM_SendMessageNoPara    (GUI_HWIN hWin, int MsgId);              
void      WM_DefaultProc          (WM_MESSAGE* pMsg);
int       WM_BroadcastMessage     (WM_MESSAGE* pMsg);
void      WM_SetScrollState       (GUI_HWIN hWin, const WM_SCROLL_STATE* pState);
void      WM_SetEnableState       (GUI_HWIN hItem, int State);
void      WM_SendToParent         (GUI_HWIN hWin, WM_MESSAGE* pMsg);
int       WM_HasCaptured          (GUI_HWIN hWin);
int       WM_HasFocus             (GUI_HWIN hWin);
int       WM_SetFocus             (GUI_HWIN hWin);
GUI_HWIN   WM_SetFocusOnNextChild  (GUI_HWIN hParent);      
GUI_HWIN   WM_SetFocusOnPrevChild  (GUI_HWIN hParent);      
GUI_HWIN   WM_GetDialogItem        (GUI_HWIN hWin, int Id);
void      WM_EnableWindow         (GUI_HWIN hWin);
void      WM_DisableWindow        (GUI_HWIN hWin);
void      WM_GetScrollState       (GUI_HWIN hObj, WM_SCROLL_STATE* pScrollState);
int       WM_GetUserData          (GUI_HWIN hWin,       void* pDest, int SizeOfBuffer);
int       WM_SetUserData          (GUI_HWIN hWin, const void* pSrc,  int SizeOfBuffer);





 

int       WM_HandlePID   (void);
GUI_HWIN   WM_Screen2hWin   (int x, int y);
GUI_HWIN   WM_Screen2hWinEx (GUI_HWIN hStop, int x, int y);
void      WM_ForEachDesc   (GUI_HWIN hWin, WM_tfForEach * pcb, void * pData);




 










 













#line 520 "..\\code\\GUI\\GUI_inc\\WM.h"

















 
#line 24 "..\\code\\uCGUI\\Widget\\MULTIEDIT.h"
#line 1 "..\\code\\uCGUI\\Widget\\DIALOG.h"




















 




#line 27 "..\\code\\uCGUI\\Widget\\DIALOG.h"
#line 1 "..\\code\\uCGUI\\Widget\\BUTTON.h"

















 




#line 24 "..\\code\\uCGUI\\Widget\\BUTTON.h"
#line 1 "..\\code\\uCGUI\\Widget\\DIALOG_Intern.h"




















 




#line 27 "..\\code\\uCGUI\\Widget\\DIALOG_Intern.h"













 

typedef struct  GUI_WIDGET_CREATE_INFO_struct GUI_WIDGET_CREATE_INFO;
typedef GUI_HWIN GUI_WIDGET_CREATE_FUNC       (const GUI_WIDGET_CREATE_INFO* pCreate, GUI_HWIN hWin, int x0, int y0, WM_CALLBACK* cb);






 
struct GUI_WIDGET_CREATE_INFO_struct {
  GUI_WIDGET_CREATE_FUNC* pfCreateIndirect;
  const char* pName;                      
  signed short Id;                                 
  signed short x0, y0, xSize, ySize;               
  unsigned short Flags;                              
  signed long Para;                                
};






 

GUI_HWIN BUTTON_CreateIndirect   (const GUI_WIDGET_CREATE_INFO* pCreateInfo, GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);
GUI_HWIN CHECKBOX_CreateIndirect (const GUI_WIDGET_CREATE_INFO* pCreateInfo, GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);
GUI_HWIN EDIT_CreateIndirect     (const GUI_WIDGET_CREATE_INFO* pCreateInfo, GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);
GUI_HWIN FRAMEWIN_CreateIndirect (const GUI_WIDGET_CREATE_INFO* pCreateInfo, GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);
GUI_HWIN RADIO_CreateIndirect    (const GUI_WIDGET_CREATE_INFO* pCreateInfo, GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);
GUI_HWIN SLIDER_CreateIndirect   (const GUI_WIDGET_CREATE_INFO* pCreateInfo, GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);
GUI_HWIN SCROLLBAR_CreateIndirect(const GUI_WIDGET_CREATE_INFO* pCreateInfo, GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);
GUI_HWIN TEXT_CreateIndirect     (const GUI_WIDGET_CREATE_INFO* pCreateInfo, GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);






 
int     GUI_ExecDialogBox     (const GUI_WIDGET_CREATE_INFO* paWidget, int NumWidgets, WM_CALLBACK* cb, GUI_HWIN hParent, int x0, int y0);
int     GUI_ExecCreatedDialog (GUI_HWIN hDialog);
GUI_HWIN GUI_CreateDialogBox   (const GUI_WIDGET_CREATE_INFO* paWidget, int NumWidgets, WM_CALLBACK* cb, GUI_HWIN hParent, int x0, int y0);
void    GUI_SetDialogStatusPtr(GUI_HWIN hDialog, WM_DIALOG_STATUS* pDialogStatus);  
WM_DIALOG_STATUS*  GUI_GetDialogStatusPtr(GUI_HWIN hDialog);                        
void    GUI_EndDialog(GUI_HWIN hWin, int r);
LCD_COLOR DIALOG_GetBkColor(void);                                                 
LCD_COLOR DIALOG_SetBkColor(LCD_COLOR BkColor);                                    









#line 25 "..\\code\\uCGUI\\Widget\\BUTTON.h"
#line 1 "..\\code\\uCGUI\\Widget\\WIDGET.h"

















 








#line 1 "..\\code\\GUI\\GUI_inc\\WM_Intern.h"

















 




#line 24 "..\\code\\GUI\\GUI_inc\\WM_Intern.h"
#line 1 "..\\code\\GUI\\GUI_inc\\GUI_Protected.h"

















 




#line 1 "..\\code\\GUI\\GUI_inc\\GUI.h"





















 






#line 30 "..\\code\\GUI\\GUI_inc\\GUI.h"
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







 
#line 25 "..\\code\\GUI\\GUI_inc\\WM_Intern.h"

















 


 






#line 58 "..\\code\\GUI\\GUI_inc\\WM_Intern.h"









#line 74 "..\\code\\GUI\\GUI_inc\\WM_Intern.h"






 
typedef struct {
  GUI_HWIN hWin;
  WM_Obj* pWin;
} WM_PAINTINFO;

typedef struct {
  GUI_HWIN hOld;
  GUI_HWIN hNew;
} WM_NOTIFY_CHILD_HAS_FOCUS_INFO;

typedef struct WM_CRITICAL_HANDLE {
  struct  WM_CRITICAL_HANDLE * pNext;
  volatile GUI_HWIN hWin;
} WM_CRITICAL_HANDLE;






 
extern unsigned short                    WM__CreateFlags;
extern GUI_HWIN                WM__hCapture;
extern GUI_HWIN                WM__hWinFocus;
extern char                   WM__CaptureReleaseAuto;
extern WM_tfPollPID*          WM_pfPollPID;
extern unsigned char                     WM__PaintCallbackCnt;       
extern GUI_PID_STATE          WM_PID__StateLast;


  extern int     WM__TransWindowCnt;
  extern GUI_HWIN WM__hATransWindow;






extern WM_CRITICAL_HANDLE     WM__CHWinModal;
extern WM_CRITICAL_HANDLE     WM__CHWinLast;







extern unsigned short     WM__NumWindows;
extern unsigned short     WM__NumInvalidWindows;
extern GUI_HWIN WM__FirstWin;
extern WM_CRITICAL_HANDLE*  WM__pFirstCriticalHandle;







 

void    WM__ActivateClipRect        (void);
int     WM__ClipAtParentBorders     (GUI_RECT* pRect, GUI_HWIN hWin);
void    WM__Client2Screen           (const WM_Obj* pWin, GUI_RECT *pRect);
void    WM__DetachWindow            (GUI_HWIN hChild);
void    WM__ForEachDesc(GUI_HWIN hWin, WM_tfForEach * pcb, void * pData);
void    WM__GetClientRectWin        (const WM_Obj* pWin, GUI_RECT* pRect);
GUI_HWIN WM__GetFirstSibling         (GUI_HWIN hWin);
GUI_HWIN WM__GetFocussedChild        (GUI_HWIN hWin);
int     WM__GetHasFocus             (GUI_HWIN hWin);
GUI_HWIN WM__GetLastSibling          (GUI_HWIN hWin);
GUI_HWIN WM__GetPrevSibling          (GUI_HWIN hWin);
int     WM__GetWindowSizeX          (const WM_Obj* pWin);
int     WM__GetWindowSizeY          (const WM_Obj* pWin);
void    WM__InsertWindowIntoList    (GUI_HWIN hWin, GUI_HWIN hParent);
void    WM__InvalidateAreaBelow     (const GUI_RECT* pRect, GUI_HWIN StopWin);
void    WM__InvalidateTransAreaAbove(const GUI_RECT* pRect, GUI_HWIN StopWin);
int     WM__IntersectRect           (GUI_RECT* pDest, const GUI_RECT* pr0, const GUI_RECT* pr1);
int     WM__IsAncestor              (GUI_HWIN hChild, GUI_HWIN hParent);
int     WM__IsAncestorOrSelf        (GUI_HWIN hChild, GUI_HWIN hParent);
int     WM__IsChild                 (GUI_HWIN hWin, GUI_HWIN hParent);
int     WM__IsEnabled               (GUI_HWIN hWin);
int     WM__IsInModalArea           (GUI_HWIN hWin);
int     WM__IsInWindow              (WM_Obj * pWin, int x, int y);
int     WM__IsWindow                (GUI_HWIN hWin);
void    WM__LeaveIVRSearch          (void);
void    WM__MoveTo                  (GUI_HWIN hWin, int x, int y);
void    WM__MoveWindow              (GUI_HWIN hWin, int dx, int dy);
void    WM__NotifyVisChanged        (GUI_HWIN hWin, GUI_RECT * pRect);
int     WM__RectIsNZ                (const GUI_RECT* pr);
void    WM__RemoveWindowFromList    (GUI_HWIN hWin);
void    WM__RemoveFromLinList       (GUI_HWIN hWin);
void    WM__Screen2Client           (const WM_Obj* pWin, GUI_RECT *pRect);
void    WM__SendMsgNoData           (GUI_HWIN hWin, unsigned char MsgId);
void    WM__SendMessage             (GUI_HWIN hWin, WM_MESSAGE* pm);
void    WM__SendMessageIfEnabled    (GUI_HWIN hWin, WM_MESSAGE* pm);
void    WM__SendMessageNoPara       (GUI_HWIN hWin, int MsgId);
void    WM__SendPIDMessage          (GUI_HWIN hWin, WM_MESSAGE* pMsg);
int     WM__SetScrollbarH           (GUI_HWIN hWin, int OnOff);
int     WM__SetScrollbarV           (GUI_HWIN hWin, int OnOff);
void    WM__UpdateChildPositions    (WM_Obj* pObj, int dx0, int dy0, int dx1, int dy1);
void    WM_PID__GetPrevState        (GUI_PID_STATE* pPrevState);
void    WM__SendTouchMessage        (GUI_HWIN hWin, WM_MESSAGE* pMsg);

unsigned short     WM_GetFlags(GUI_HWIN hWin);
void    WM__PaintWinAndOverlays     (WM_PAINTINFO* pInfo);
void    WM__AddCriticalHandle       (WM_CRITICAL_HANDLE* pCH);
void    WM__RemoveCriticalHandle    (WM_CRITICAL_HANDLE* pCH);









 
#line 28 "..\\code\\uCGUI\\Widget\\WIDGET.h"



#line 1 "..\\code\\uCGUI\\Widget\\SCROLLBAR.h"

















 




#line 24 "..\\code\\uCGUI\\Widget\\SCROLLBAR.h"
#line 25 "..\\code\\uCGUI\\Widget\\SCROLLBAR.h"
#line 1 "..\\code\\uCGUI\\Widget\\WIDGET.h"

















 

#line 228 "..\\code\\uCGUI\\Widget\\WIDGET.h"




#line 26 "..\\code\\uCGUI\\Widget\\SCROLLBAR.h"












 




 





 









 
typedef signed short SCROLLBAR_Handle;






 

SCROLLBAR_Handle SCROLLBAR_Create        (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent, int Id, int WinFlags, int SpecialFlags);
SCROLLBAR_Handle SCROLLBAR_CreateIndirect(const GUI_WIDGET_CREATE_INFO* pCreateInfo, GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);
SCROLLBAR_Handle SCROLLBAR_CreateAttached(GUI_HWIN hParent, int SpecialFlags);
SCROLLBAR_Handle SCROLLBAR_CreateEx      (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent,
                                          int WinFlags, int ExFlags, int Id);






 

 

void SCROLLBAR_AddValue    (SCROLLBAR_Handle hObj, int Add);
void SCROLLBAR_Dec         (SCROLLBAR_Handle hObj);
void SCROLLBAR_Inc         (SCROLLBAR_Handle hObj);
void SCROLLBAR_SetNumItems (SCROLLBAR_Handle hObj, int NumItems);
void SCROLLBAR_SetPageSize (SCROLLBAR_Handle hObj, int PageSize);
void SCROLLBAR_SetValue    (SCROLLBAR_Handle hObj, int v);
int  SCROLLBAR_SetWidth    (SCROLLBAR_Handle hObj, int Width);
void SCROLLBAR_SetState    (SCROLLBAR_Handle hObj, const WM_SCROLL_STATE* pState);






 

GUI_COLOR SCROLLBAR_GetDefaultBkColor(unsigned int Index);  
GUI_COLOR SCROLLBAR_GetDefaultColor  (unsigned int Index);  
int       SCROLLBAR_GetDefaultWidth  (void);

GUI_COLOR SCROLLBAR_SetDefaultBkColor(GUI_COLOR Color, unsigned int Index);  
GUI_COLOR SCROLLBAR_SetDefaultColor  (GUI_COLOR Color, unsigned int Index);  
int       SCROLLBAR_SetDefaultWidth  (int DefaultWidth);






 
int SCROLLBAR_GetValue(SCROLLBAR_Handle hObj);





#line 32 "..\\code\\uCGUI\\Widget\\WIDGET.h"







 






 
















 






 








 

typedef struct {
  GUI_HWIN hWin;
  int     Cmd;          
  int     ItemIndex;
  int     x0, y0;
} WIDGET_ITEM_DRAW_INFO;

typedef int WIDGET_DRAW_ITEM_FUNC(const WIDGET_ITEM_DRAW_INFO * pDrawItemInfo);







 
typedef struct {
  void  (*pfDrawUp)(void);
  void  (*pfDrawDown)(void);
  void  (*pfDrawUpRect)  (const GUI_RECT *pRect);
  void  (*pfDrawDownRect)(const GUI_RECT *pRect);
  void  (*pfGetRect)(GUI_RECT *pRect);
  int EffectSize;
} WIDGET_EFFECT;

typedef struct {
  WM_Obj      Win;
  const WIDGET_EFFECT* pEffect;
  signed short Id;
  unsigned short State;
} WIDGET;









 
 
typedef struct GUI_DRAW GUI_DRAW;
typedef void   GUI_DRAW_SELF_CB (void);
 
typedef struct {
  void (* pfDraw)    (const GUI_DRAW * pObj, int x, int y);
  int  (* pfGetXSize)(const GUI_DRAW * pObj);
  int  (* pfGetYSize)(const GUI_DRAW * pObj);
} GUI_DRAW_CONSTS;

 
struct GUI_DRAW {
  const GUI_DRAW_CONSTS* pConsts;
  union {
    const void * pData;
    GUI_DRAW_SELF_CB* pfDraw;
  } Data;
  signed short xOff, yOff;
};

typedef signed short GUI_DRAW_HANDLE;

 
void GUI_DRAW__Draw    (GUI_DRAW_HANDLE hDrawObj, int x, int y);
int  GUI_DRAW__GetXSize(GUI_DRAW_HANDLE hDrawObj);
int  GUI_DRAW__GetYSize(GUI_DRAW_HANDLE hDrawObj);

 
signed short GUI_DRAW_BITMAP_Create  (const GUI_BITMAP* pBitmap, int x, int y);
signed short GUI_DRAW_BMP_Create     (const void* pBMP, int x, int y);
signed short GUI_DRAW_STREAMED_Create(const GUI_BITMAP_STREAM * pBitmap, int x, int y);
signed short GUI_DRAW_SELF_Create(GUI_DRAW_SELF_CB* pfDraw, int x, int y);






 

extern const WIDGET_EFFECT WIDGET_Effect_3D;
extern const WIDGET_EFFECT WIDGET_Effect_3D1L;
extern const WIDGET_EFFECT WIDGET_Effect_3D2L;
extern const WIDGET_EFFECT WIDGET_Effect_None;
extern const WIDGET_EFFECT WIDGET_Effect_Simple;






 

void      WIDGET__DrawFocusRect(WIDGET* pWidget, const GUI_RECT* pRect, int Dist);
void      WIDGET__DrawVLine(WIDGET* pWidget, int x, int y0, int y1);
void      WIDGET__EFFECT_DrawDownRect(WIDGET* pWidget, GUI_RECT* pRect);
void      WIDGET__EFFECT_DrawDown(WIDGET* pWidget);
void      WIDGET__EFFECT_DrawUpRect(WIDGET* pWidget, GUI_RECT* pRect);
void      WIDGET__FillRectEx(WIDGET* pWidget, const GUI_RECT* pRect);
int       WIDGET__GetWindowSizeX(GUI_HWIN hWin);
GUI_COLOR WIDGET__GetBkColor(GUI_HWIN hObj);
int       WIDGET__GetXSize(const WIDGET* pWidget);
int       WIDGET__GetYSize(const WIDGET* pWidget);
void      WIDGET__GetClientRect(WIDGET* pWidget, GUI_RECT* pRect);
void      WIDGET__GetInsideRect(WIDGET* pWidget, GUI_RECT* pRect);
void      WIDGET__Init(WIDGET* pWidget, int Id, unsigned short State);
void      WIDGET__RotateRect90(WIDGET* pWidget, GUI_RECT* pDest, const GUI_RECT* pRect);
void      WIDGET__SetScrollState(GUI_HWIN hWin, const WM_SCROLL_STATE* pVState, const WM_SCROLL_STATE* pState);
void      WIDGET__FillStringInRect(const char  * pText, const GUI_RECT * pFillRect, const GUI_RECT * pTextRectMax, const GUI_RECT * pTextRectAct);






 
void  WIDGET_SetState     (GUI_HWIN hObj, int State);
void  WIDGET_AndState     (GUI_HWIN hObj, int State);
void  WIDGET_OrState      (GUI_HWIN hObj, int State);
int   WIDGET_HandleActive (GUI_HWIN hObj, WM_MESSAGE* pMsg);
int   WIDGET_GetState     (GUI_HWIN hObj);
int   WIDGET_SetWidth     (GUI_HWIN hObj, int Width);

void  WIDGET_EFFECT_3D_DrawUp(void);

void  WIDGET_SetDefaultEffect_3D    (void);
void  WIDGET_SetDefaultEffect_3D1L  (void);
void  WIDGET_SetDefaultEffect_3D2L  (void);
void  WIDGET_SetDefaultEffect_None  (void);
void  WIDGET_SetDefaultEffect_Simple(void);

const WIDGET_EFFECT* WIDGET_SetDefaultEffect(const WIDGET_EFFECT* pEffect);

void  WIDGET_SetEffect              (GUI_HWIN hObj, const WIDGET_EFFECT* pEffect);

const WIDGET_EFFECT* WIDGET_GetDefaultEffect(void);
int   WIDGET_SetWidth(GUI_HWIN hObj, int Width);













#line 26 "..\\code\\uCGUI\\Widget\\BUTTON.h"











 
 







 







 







 




 









 
typedef signed short BUTTON_Handle;







 

BUTTON_Handle BUTTON_Create        (int x0, int y0, int xsize, int ysize, int ID, int Flags);
BUTTON_Handle BUTTON_CreateAsChild (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent, int Id, int Flags);
BUTTON_Handle BUTTON_CreateIndirect(const GUI_WIDGET_CREATE_INFO* pCreateInfo, GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);
BUTTON_Handle BUTTON_CreateEx      (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent,
                                    int WinFlags, int ExFlags, int Id);






 

GUI_COLOR                    BUTTON_GetDefaultBkColor  (unsigned Index);
const GUI_FONT  * BUTTON_GetDefaultFont     (void);
int                          BUTTON_GetDefaultTextAlign(void);
GUI_COLOR                    BUTTON_GetDefaultTextColor(unsigned Index);
void                         BUTTON_SetDefaultBkColor  (GUI_COLOR Color, unsigned Index);
void                         BUTTON_SetDefaultFont     (const GUI_FONT  * pFont);
void                         BUTTON_SetDefaultTextAlign(int Align);
void                         BUTTON_SetDefaultTextColor(GUI_COLOR Color, unsigned Index);













 
void BUTTON_Callback(WM_MESSAGE *pMsg);






 

GUI_COLOR        BUTTON_GetBkColor         (BUTTON_Handle hObj, unsigned int Index);
const GUI_FONT  * BUTTON_GetFont(BUTTON_Handle hObj);
void             BUTTON_GetText            (BUTTON_Handle hObj, char * pBuffer, int MaxLen);
GUI_COLOR        BUTTON_GetTextColor       (BUTTON_Handle hObj, unsigned int Index);
unsigned         BUTTON_IsPressed          (BUTTON_Handle hObj);
void             BUTTON_SetBitmap          (BUTTON_Handle hObj, unsigned int Index, const GUI_BITMAP * pBitmap);
void             BUTTON_SetBitmapEx        (BUTTON_Handle hObj, unsigned int Index, const GUI_BITMAP * pBitmap, int x, int y);
void             BUTTON_SetBkColor         (BUTTON_Handle hObj, unsigned int Index, GUI_COLOR Color);
void             BUTTON_SetBMP             (BUTTON_Handle hObj, unsigned int Index, const void * pBitmap);
void             BUTTON_SetBMPEx           (BUTTON_Handle hObj, unsigned int Index, const void * pBitmap, int x, int y);
void             BUTTON_SetFont            (BUTTON_Handle hObj, const GUI_FONT  * pfont);
void             BUTTON_SetState           (BUTTON_Handle hObj, int State);                                     
void             BUTTON_SetPressed         (BUTTON_Handle hObj, int State);
void             BUTTON_SetFocussable      (BUTTON_Handle hObj, int State);
void             BUTTON_SetStreamedBitmap  (BUTTON_Handle hObj, unsigned int Index, const GUI_BITMAP_STREAM * pBitmap);
void             BUTTON_SetStreamedBitmapEx(BUTTON_Handle hObj, unsigned int Index, const GUI_BITMAP_STREAM * pBitmap, int x, int y);
void             BUTTON_SetText            (BUTTON_Handle hObj, const char* s);
void             BUTTON_SetTextAlign       (BUTTON_Handle hObj, int Align);
void             BUTTON_SetTextColor       (BUTTON_Handle hObj, unsigned int Index, GUI_COLOR Color);
void             BUTTON_SetSelfDrawEx      (BUTTON_Handle hObj, unsigned int Index, void (*pDraw)(void), int x, int y);  
void             BUTTON_SetSelfDraw        (BUTTON_Handle hObj, unsigned int Index, void (*pDraw)(void));                




 








#line 28 "..\\code\\uCGUI\\Widget\\DIALOG.h"
#line 1 "..\\code\\uCGUI\\Widget\\CHECKBOX.h"

















 




#line 24 "..\\code\\uCGUI\\Widget\\CHECKBOX.h"
#line 25 "..\\code\\uCGUI\\Widget\\CHECKBOX.h"












 




 











 
typedef signed short CHECKBOX_Handle;






 

CHECKBOX_Handle CHECKBOX_Create        (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent, int Id, int Flags);
CHECKBOX_Handle CHECKBOX_CreateIndirect(const GUI_WIDGET_CREATE_INFO* pCreateInfo, GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);
CHECKBOX_Handle CHECKBOX_CreateEx      (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent,
                                        int WinFlags, int ExFlags, int Id);






 

int                          CHECKBOX_GetDefaultAlign    (void);
GUI_COLOR                    CHECKBOX_GetDefaultBkColor  (void);
const GUI_FONT  * CHECKBOX_GetDefaultFont     (void);
int                          CHECKBOX_GetDefaultSpacing  (void);
int                          CHECKBOX_GetDefaultTextAlign(void);
GUI_COLOR                    CHECKBOX_GetDefaultTextColor(void);
void                         CHECKBOX_SetDefaultAlign    (int Align);
void                         CHECKBOX_SetDefaultBkColor  (GUI_COLOR Color);
void                         CHECKBOX_SetDefaultFont     (const GUI_FONT  * pFont);
void                         CHECKBOX_SetDefaultImage    (const GUI_BITMAP * pBitmap, unsigned int Index);
void                         CHECKBOX_SetDefaultSpacing  (int Spacing);
void                         CHECKBOX_SetDefaultTextAlign(int Align);
void                         CHECKBOX_SetDefaultTextColor(GUI_COLOR Color);






 

int  CHECKBOX_GetState    (CHECKBOX_Handle hObj);
int  CHECKBOX_IsChecked   (CHECKBOX_Handle hObj);
void CHECKBOX_SetBkColor  (CHECKBOX_Handle hObj, GUI_COLOR Color);
void CHECKBOX_SetFont     (CHECKBOX_Handle hObj, const GUI_FONT  * pFont);
void CHECKBOX_SetImage    (CHECKBOX_Handle hObj, const GUI_BITMAP * pBitmap, unsigned int Index);
void CHECKBOX_SetNumStates(CHECKBOX_Handle hObj, unsigned NumStates);
void CHECKBOX_SetSpacing  (CHECKBOX_Handle hObj, unsigned Spacing);
void CHECKBOX_SetState    (CHECKBOX_Handle hObj, unsigned State);
void CHECKBOX_SetText     (CHECKBOX_Handle hObj, const char * pText);
void CHECKBOX_SetTextAlign(CHECKBOX_Handle hObj, int Align);
void CHECKBOX_SetTextColor(CHECKBOX_Handle hObj, GUI_COLOR Color);






 








#line 29 "..\\code\\uCGUI\\Widget\\DIALOG.h"
#line 1 "..\\code\\uCGUI\\Widget\\DROPDOWN.h"

















 




#line 24 "..\\code\\uCGUI\\Widget\\DROPDOWN.h"
#line 25 "..\\code\\uCGUI\\Widget\\DROPDOWN.h"







typedef signed short DROPDOWN_Handle;




 






 









 












 

DROPDOWN_Handle DROPDOWN_Create        (GUI_HWIN hWinParent, int x0, int y0, int xsize, int ysize, int Flags);
DROPDOWN_Handle DROPDOWN_CreateIndirect(const GUI_WIDGET_CREATE_INFO* pCreateInfo, GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);
DROPDOWN_Handle DROPDOWN_CreateEx      (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent,
                                        int WinFlags, int ExFlags, int Id);






 

void     DROPDOWN_AddKey          (DROPDOWN_Handle hObj, int Key);
void     DROPDOWN_AddString       (DROPDOWN_Handle hObj, const char* s);
void     DROPDOWN_Collapse        (DROPDOWN_Handle hObj);
void     DROPDOWN_DecSel          (DROPDOWN_Handle hObj);
void     DROPDOWN_DeleteItem      (DROPDOWN_Handle hObj, unsigned int Index);
void     DROPDOWN_Expand          (DROPDOWN_Handle hObj);
unsigned DROPDOWN_GetItemSpacing  (DROPDOWN_Handle hObj);
int      DROPDOWN_GetNumItems     (DROPDOWN_Handle hObj);
int      DROPDOWN_GetSel          (DROPDOWN_Handle hObj);
void     DROPDOWN_IncSel          (DROPDOWN_Handle hObj);
void     DROPDOWN_InsertString    (DROPDOWN_Handle hObj, const char* s, unsigned int Index);
void     DROPDOWN_SetAutoScroll   (DROPDOWN_Handle hObj, int OnOff);
void     DROPDOWN_SetBkColor      (DROPDOWN_Handle hObj, unsigned int index, GUI_COLOR color);
void     DROPDOWN_SetFont         (DROPDOWN_Handle hObj, const GUI_FONT  * pfont);
void     DROPDOWN_SetItemSpacing  (DROPDOWN_Handle hObj, unsigned Value);
void     DROPDOWN_SetSel          (DROPDOWN_Handle hObj, int Sel);
void     DROPDOWN_SetScrollbarWidth(DROPDOWN_Handle hObj, unsigned Width);
void     DROPDOWN_SetTextAlign    (DROPDOWN_Handle hObj, int Align);
void     DROPDOWN_SetTextColor    (DROPDOWN_Handle hObj, unsigned int index, GUI_COLOR color);
void     DROPDOWN_SetTextHeight   (DROPDOWN_Handle hObj, unsigned TextHeight);







 
const GUI_FONT  * DROPDOWN_GetDefaultFont(void);
void            DROPDOWN_SetDefaultFont(const GUI_FONT* pFont);





#line 30 "..\\code\\uCGUI\\Widget\\DIALOG.h"
#line 1 "..\\code\\uCGUI\\Widget\\EDIT.h"

















 




#line 24 "..\\code\\uCGUI\\Widget\\EDIT.h"
#line 25 "..\\code\\uCGUI\\Widget\\EDIT.h"















 






 




 











 






 






 
typedef signed short EDIT_Handle;
typedef void tEDIT_AddKeyEx    (EDIT_Handle hObj, int Key);
typedef void tEDIT_UpdateBuffer(EDIT_Handle hObj);











 

 


EDIT_Handle EDIT_Create        (int x0, int y0, int xsize, int ysize, int Id, int MaxLen, int Flags);
EDIT_Handle EDIT_CreateAsChild (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent, int Id, int Flags, int MaxLen);
EDIT_Handle EDIT_CreateIndirect(const GUI_WIDGET_CREATE_INFO* pCreateInfo, GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);
EDIT_Handle EDIT_CreateEx      (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent,
                                int WinFlags, int ExFlags, int Id, int MaxLen);







 














 

 
void EDIT_SetDefaultBkColor(unsigned int Index, GUI_COLOR Color);
void EDIT_SetDefaultFont(const GUI_FONT* pFont);
void EDIT_SetDefaultTextAlign(int Align);
void EDIT_SetDefaultTextColor(unsigned int Index, GUI_COLOR Color);

 
GUI_COLOR                    EDIT_GetDefaultBkColor(unsigned int Index);
const GUI_FONT  * EDIT_GetDefaultFont(void);
int                          EDIT_GetDefaultTextAlign(void);
GUI_COLOR                    EDIT_GetDefaultTextColor(unsigned int Index);

 
void EDIT_AddKey           (EDIT_Handle hObj, int Key);
void EDIT_ClearCursor      (EDIT_Handle hObj);
void EDIT_SetBkColor       (EDIT_Handle hObj, unsigned int Index, GUI_COLOR color);
void EDIT_SetCursorAtChar  (EDIT_Handle hObj, int Pos);
void EDIT_SetCursorAtPixel (EDIT_Handle hObj, int xPos);
void EDIT_SetFont          (EDIT_Handle hObj, const GUI_FONT  * pfont);
int  EDIT_SetInsertMode    (EDIT_Handle hObj, int OnOff);
void EDIT_SetMaxLen        (EDIT_Handle hObj, int MaxLen);
void EDIT_SetpfAddKeyEx    (EDIT_Handle hObj, tEDIT_AddKeyEx * pfAddKeyEx);
void EDIT_SetpfUpdateBuffer(EDIT_Handle hObj, tEDIT_UpdateBuffer * pfUpdateBuffer);
void EDIT_SetText          (EDIT_Handle hObj, const char* s);
void EDIT_SetTextAlign     (EDIT_Handle hObj, int Align);
void EDIT_SetTextColor     (EDIT_Handle hObj, unsigned int Index, GUI_COLOR color);
void EDIT_SetSel           (EDIT_Handle hObj, int FirstChar, int LastChar);

 
float EDIT_GetFloatValue(EDIT_Handle hObj);
void  EDIT_GetText      (EDIT_Handle hObj, char* sDest, int MaxLen);
signed long   EDIT_GetValue     (EDIT_Handle hObj);
void  EDIT_SetFloatValue(EDIT_Handle hObj, float Value);
void  EDIT_SetValue     (EDIT_Handle hObj, signed long Value);
int   EDIT_GetNumChars  (EDIT_Handle hObj);






 

void  EDIT_SetHexMode(EDIT_Handle hEdit, unsigned long Value, unsigned long Min, unsigned long Max);
void  EDIT_SetBinMode(EDIT_Handle hEdit, unsigned long Value, unsigned long Min, unsigned long Max);
void  EDIT_SetDecMode(EDIT_Handle hEdit, signed long Value, signed long Min, signed long Max, int Shift, unsigned char Flags);
void  EDIT_SetFloatMode(EDIT_Handle hEdit, float Value, float Min, float Max, int Shift, unsigned char Flags);

unsigned long   GUI_EditHex(unsigned long Value, unsigned long Min, unsigned long Max, int Len, int xsize);
unsigned long   GUI_EditBin(unsigned long Value, unsigned long Min, unsigned long Max, int Len, int xsize);
signed long   GUI_EditDec(signed long Value, signed long Min, signed long Max, int Len, int xsize, int Shift, unsigned char Flags);
float GUI_EditFloat(float Value, float Min, float Max, int Len, int xsize, int Shift, unsigned char Flags);
void  GUI_EditString(char * pString, int Len, int xsize);






 

 



 



 







#line 31 "..\\code\\uCGUI\\Widget\\DIALOG.h"
#line 1 "..\\code\\uCGUI\\Widget\\FRAMEWIN.h"

















 




#line 24 "..\\code\\uCGUI\\Widget\\FRAMEWIN.h"
#line 26 "..\\code\\uCGUI\\Widget\\FRAMEWIN.h"










 



 















 









 

typedef signed short FRAMEWIN_Handle;






 
FRAMEWIN_Handle FRAMEWIN_Create        (const char* pTitle, WM_CALLBACK* cb, int Flags, int x0, int y0, int xsize, int ysize);
FRAMEWIN_Handle FRAMEWIN_CreateAsChild (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent, const char* pText, WM_CALLBACK* cb, int Flags);
FRAMEWIN_Handle FRAMEWIN_CreateIndirect(const GUI_WIDGET_CREATE_INFO* pCreateInfo, GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);
FRAMEWIN_Handle FRAMEWIN_CreateEx      (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent,
                                        int WinFlags, int ExFlags, int Id, const char* pTitle, WM_CALLBACK* cb);






 







GUI_HWIN FRAMEWIN_AddButton     (FRAMEWIN_Handle hObj, int Flags, int Off, int Id);
GUI_HWIN FRAMEWIN_AddCloseButton(FRAMEWIN_Handle hObj, int Flags, int Off);
GUI_HWIN FRAMEWIN_AddMaxButton  (FRAMEWIN_Handle hObj, int Flags, int Off);
void    FRAMEWIN_AddMenu       (FRAMEWIN_Handle hObj, GUI_HWIN hMenu);
GUI_HWIN FRAMEWIN_AddMinButton  (FRAMEWIN_Handle hObj, int Flags, int Off);

void    FRAMEWIN_Minimize      (FRAMEWIN_Handle hObj);
void    FRAMEWIN_Maximize      (FRAMEWIN_Handle hObj);
void    FRAMEWIN_Restore       (FRAMEWIN_Handle hObj);






 
void FRAMEWIN_SetActive      (FRAMEWIN_Handle hObj, int State);
void FRAMEWIN_SetBarColor    (FRAMEWIN_Handle hObj, unsigned Index, GUI_COLOR Color);
void FRAMEWIN_SetBorderSize  (FRAMEWIN_Handle hObj, unsigned Size);
void FRAMEWIN_SetClientColor (FRAMEWIN_Handle hObj, GUI_COLOR Color);
void FRAMEWIN_SetFont        (FRAMEWIN_Handle hObj, const GUI_FONT  * pFont);
void FRAMEWIN_SetMoveable    (FRAMEWIN_Handle hObj, int State);
void FRAMEWIN_SetResizeable  (FRAMEWIN_Handle hObj, int State);
void FRAMEWIN_SetText        (FRAMEWIN_Handle hObj, const char* s);
void FRAMEWIN_SetTextAlign   (FRAMEWIN_Handle hObj, int Align);
void FRAMEWIN_SetTextColor   (FRAMEWIN_Handle hObj, GUI_COLOR Color);
void FRAMEWIN_SetTextColorEx (FRAMEWIN_Handle hObj, unsigned Index, GUI_COLOR Color);
void FRAMEWIN_SetTitleVis    (FRAMEWIN_Handle hObj, int Show);
int  FRAMEWIN_SetTitleHeight (FRAMEWIN_Handle hObj, int Height);






 
int FRAMEWIN_GetTitleHeight (FRAMEWIN_Handle hObj);
int FRAMEWIN_GetBorderSize  (FRAMEWIN_Handle hObj);
int FRAMEWIN_IsMinimized    (FRAMEWIN_Handle hObj);
int FRAMEWIN_IsMaximized    (FRAMEWIN_Handle hObj);






 
GUI_COLOR       FRAMEWIN_GetDefaultBarColor   (unsigned Index);
int             FRAMEWIN_GetDefaultBorderSize (void);
int             FRAMEWIN_GetDefaultTitleHeight(void);
GUI_COLOR       FRAMEWIN_GetDefaultClientColor(void);
const GUI_FONT  * FRAMEWIN_GetDefaultFont       (void);
GUI_COLOR       FRAMEWIN_GetDefaultTextColor  (unsigned Index);
void            FRAMEWIN_SetDefaultBarColor   (unsigned Index, GUI_COLOR Color);
void            FRAMEWIN_SetDefaultBorderSize (int DefaultBorderSize);
void            FRAMEWIN_SetDefaultTitleHeight(int DefaultTitleHeight);
void            FRAMEWIN_SetDefaultClientColor(GUI_COLOR Color);
void            FRAMEWIN_SetDefaultFont       (const GUI_FONT  * pFont);
void            FRAMEWIN_SetDefaultTextColor  (unsigned Index, GUI_COLOR Color);






 
#line 167 "..\\code\\uCGUI\\Widget\\FRAMEWIN.h"





#line 32 "..\\code\\uCGUI\\Widget\\DIALOG.h"
#line 1 "..\\code\\uCGUI\\Widget\\LISTBOX.h"

















 




#line 24 "..\\code\\uCGUI\\Widget\\LISTBOX.h"
#line 25 "..\\code\\uCGUI\\Widget\\LISTBOX.h"
#line 26 "..\\code\\uCGUI\\Widget\\LISTBOX.h"












 






 







 
typedef signed short LISTBOX_Handle;







 





 
#line 75 "..\\code\\uCGUI\\Widget\\LISTBOX.h"






 












 

LISTBOX_Handle LISTBOX_Create        (const GUI_ConstString* ppText, int x0, int y0, int xsize, int ysize, int Flags);
LISTBOX_Handle LISTBOX_CreateAsChild (const GUI_ConstString* ppText, GUI_HWIN hWinParent, int x0, int y0, int xsize, int ysize, int Flags);
LISTBOX_Handle LISTBOX_CreateIndirect(const GUI_WIDGET_CREATE_INFO* pCreateInfo, GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);
LISTBOX_Handle LISTBOX_CreateEx      (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent,
                                      int WinFlags, int ExFlags, int Id, const GUI_ConstString* ppText);






 

int          LISTBOX_AddKey          (LISTBOX_Handle hObj, int Key);
void         LISTBOX_AddString       (LISTBOX_Handle hObj, const char* s);
void         LISTBOX_DecSel          (LISTBOX_Handle hObj);
void         LISTBOX_DeleteItem      (LISTBOX_Handle hObj, unsigned int Index);
unsigned     LISTBOX_GetItemSpacing  (LISTBOX_Handle hObj);
unsigned     LISTBOX_GetNumItems     (LISTBOX_Handle hObj);
int          LISTBOX_GetSel          (LISTBOX_Handle hObj);
const GUI_FONT  * LISTBOX_GetFont    (LISTBOX_Handle hObj);
int          LISTBOX_GetItemDisabled (LISTBOX_Handle hObj, unsigned Index);
int          LISTBOX_GetItemSel      (LISTBOX_Handle hObj, unsigned Index);
void         LISTBOX_GetItemText     (LISTBOX_Handle hObj, unsigned Index, char * pBuffer, int MaxSize);
int          LISTBOX_GetMulti        (LISTBOX_Handle hObj);
int          LISTBOX_GetScrollStepH  (LISTBOX_Handle hObj);
void         LISTBOX_IncSel          (LISTBOX_Handle hObj);
void         LISTBOX_InsertString    (LISTBOX_Handle hObj, const char* s, unsigned int Index);
int          LISTBOX_OwnerDraw       (const WIDGET_ITEM_DRAW_INFO * pDrawItemInfo);
void         LISTBOX_SetAutoScrollH  (LISTBOX_Handle hObj, int OnOff);
void         LISTBOX_SetAutoScrollV  (LISTBOX_Handle hObj, int OnOff);
void         LISTBOX_SetBkColor      (LISTBOX_Handle hObj, unsigned int Index, GUI_COLOR color);
void         LISTBOX_SetFont         (LISTBOX_Handle hObj, const GUI_FONT  * pFont);
void         LISTBOX_SetItemDisabled (LISTBOX_Handle hObj, unsigned Index, int OnOff);
void         LISTBOX_SetItemSel      (LISTBOX_Handle hObj, unsigned Index, int OnOff);
void         LISTBOX_SetItemSpacing  (LISTBOX_Handle hObj, unsigned Value);
void         LISTBOX_SetMulti        (LISTBOX_Handle hObj, int Mode);
void         LISTBOX_SetOwner        (LISTBOX_Handle hObj, GUI_HWIN hOwner);
void         LISTBOX_SetOwnerDraw    (LISTBOX_Handle hObj, WIDGET_DRAW_ITEM_FUNC * pfDrawItem);
void         LISTBOX_SetScrollStepH  (LISTBOX_Handle hObj, int Value);
void         LISTBOX_SetSel          (LISTBOX_Handle hObj, int Sel);
void         LISTBOX_SetScrollbarWidth(LISTBOX_Handle hObj, unsigned Width);
void         LISTBOX_SetString       (LISTBOX_Handle hObj, const char* s, unsigned int Index);
void         LISTBOX_SetText         (LISTBOX_Handle hObj, const GUI_ConstString* ppText);
GUI_COLOR    LISTBOX_SetTextColor    (LISTBOX_Handle hObj, unsigned int Index, GUI_COLOR Color);
int          LISTBOX_UpdateScrollers (LISTBOX_Handle hObj);
void         LISTBOX_InvalidateItem  (LISTBOX_Handle hObj, int Index);






 

const GUI_FONT * LISTBOX_GetDefaultFont(void);
int         LISTBOX_GetDefaultScrollStepH (void);
GUI_COLOR   LISTBOX_GetDefaultBkColor     (unsigned Index);
GUI_COLOR   LISTBOX_GetDefaultTextColor   (unsigned Index);
void        LISTBOX_SetDefaultFont        (const GUI_FONT  * pFont);
void        LISTBOX_SetDefaultScrollStepH (int Value);
void        LISTBOX_SetDefaultBkColor     (unsigned Index, GUI_COLOR Color);
void        LISTBOX_SetDefaultTextColor   (unsigned Index, GUI_COLOR Color);






 








#line 33 "..\\code\\uCGUI\\Widget\\DIALOG.h"
#line 1 "..\\code\\uCGUI\\Widget\\MULTIEDIT.h"

















 

#line 34 "..\\code\\uCGUI\\Widget\\DIALOG.h"
#line 1 "..\\code\\uCGUI\\Widget\\RADIO.h"

















 




#line 24 "..\\code\\uCGUI\\Widget\\RADIO.h"
#line 25 "..\\code\\uCGUI\\Widget\\RADIO.h"










 












 






 









 

typedef signed short RADIO_Handle;






 

RADIO_Handle RADIO_Create        (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent, int Id, int Flags, unsigned Para);
RADIO_Handle RADIO_CreateIndirect(const GUI_WIDGET_CREATE_INFO* pCreateInfo, GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);
RADIO_Handle RADIO_CreateEx      (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent,
                                  int WinFlags, int ExFlags, int Id, int NumItems, int Spacing);






 

void RADIO_SetDefaultFont       (const GUI_FONT * pFont);
void RADIO_SetDefaultImage      (const GUI_BITMAP * pBitmap, unsigned int Index);
void RADIO_SetDefaultTextColor  (GUI_COLOR TextColor);

const GUI_FONT * RADIO_GetDefaultFont      (void);
GUI_COLOR                   RADIO_GetDefaultTextColor (void);






 

void RADIO_AddValue     (RADIO_Handle hObj, int Add);
void RADIO_Dec          (RADIO_Handle hObj);
void RADIO_Inc          (RADIO_Handle hObj);
void RADIO_SetBkColor   (RADIO_Handle hObj, GUI_COLOR Color);
void RADIO_SetFont      (RADIO_Handle hObj, const GUI_FONT * pFont);
void RADIO_SetGroupId   (RADIO_Handle hObj, unsigned char GroupId);
void RADIO_SetImage     (RADIO_Handle hObj, const GUI_BITMAP * pBitmap, unsigned int Index);
void RADIO_SetText      (RADIO_Handle hObj, const char* pText, unsigned Index);
void RADIO_SetTextColor (RADIO_Handle hObj, GUI_COLOR Color);
void RADIO_SetValue     (RADIO_Handle hObj, int v);






 
int RADIO_GetValue(RADIO_Handle hObj);








 
#line 35 "..\\code\\uCGUI\\Widget\\DIALOG.h"
#line 1 "..\\code\\uCGUI\\Widget\\SLIDER.h"

















 




#line 24 "..\\code\\uCGUI\\Widget\\SLIDER.h"
#line 25 "..\\code\\uCGUI\\Widget\\SLIDER.h"
#line 26 "..\\code\\uCGUI\\Widget\\SLIDER.h"












 




 





 








 
typedef signed short SLIDER_Handle;






 

SLIDER_Handle SLIDER_Create        (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent, int Id, int WinFlags, int SpecialFlags);
SLIDER_Handle SLIDER_CreateIndirect(const GUI_WIDGET_CREATE_INFO* pCreateInfo, GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);
SLIDER_Handle SLIDER_CreateEx      (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent,
                                    int WinFlags, int ExFlags, int Id);






 

 


 
void SLIDER_Inc         (SLIDER_Handle hObj);
void SLIDER_Dec         (SLIDER_Handle hObj);
void SLIDER_SetBkColor  (SLIDER_Handle hObj, GUI_COLOR Color);
void SLIDER_SetWidth    (SLIDER_Handle hObj, int Width);
void SLIDER_SetValue    (SLIDER_Handle hObj, int v);
void SLIDER_SetRange    (SLIDER_Handle hObj, int Min, int Max);
void SLIDER_SetNumTicks (SLIDER_Handle hObj, int NumTicks);






 

void SLIDER_SetDefaultBkColor(GUI_COLOR Color);






 
int SLIDER_GetValue(SLIDER_Handle hObj);





#line 36 "..\\code\\uCGUI\\Widget\\DIALOG.h"
#line 1 "..\\code\\uCGUI\\Widget\\TEXT.h"

















 




#line 24 "..\\code\\uCGUI\\Widget\\TEXT.h"
#line 25 "..\\code\\uCGUI\\Widget\\TEXT.h"
#line 26 "..\\code\\uCGUI\\Widget\\TEXT.h"
#line 27 "..\\code\\uCGUI\\Widget\\TEXT.h"












 




 















 
typedef signed short TEXT_Handle;






 












 

TEXT_Handle TEXT_Create        (int x0, int y0, int xsize, int ysize, int Id, int Flags, const char * s, int Align);
TEXT_Handle TEXT_CreateAsChild (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent, int Id, int Flags, const char * s, int Align);
TEXT_Handle TEXT_CreateIndirect(const GUI_WIDGET_CREATE_INFO* pCreateInfo, GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);
TEXT_Handle TEXT_CreateEx      (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent,
                                int WinFlags, int ExFlags, int Id, const char* pText);






 

 

void TEXT_SetBkColor  (TEXT_Handle pObj, GUI_COLOR Color);  
void TEXT_SetFont     (TEXT_Handle pObj, const GUI_FONT  * pFont);
void TEXT_SetText     (TEXT_Handle pObj, const char* s);
void TEXT_SetTextAlign(TEXT_Handle pObj, int Align);
void TEXT_SetTextColor(TEXT_Handle pObj, GUI_COLOR Color);






 

void            TEXT_SetDefaultFont(const GUI_FONT  * pFont);
const GUI_FONT  * TEXT_GetDefaultFont(void);
void            TEXT_SetDefaultTextColor(GUI_COLOR Color);






 

typedef struct {
  WIDGET Widget;
  signed short hpText;
  const GUI_FONT  * pFont;
  signed short Align;
  GUI_COLOR TextColor;
  GUI_COLOR BkColor;



} TEXT_Obj;







#line 37 "..\\code\\uCGUI\\Widget\\DIALOG.h"







GUI_HWIN WINDOW_CreateIndirect(const GUI_WIDGET_CREATE_INFO* pCreateInfo, GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);
void    WINDOW_SetDefaultBkColor(GUI_COLOR Color);









#line 25 "..\\code\\uCGUI\\Widget\\MULTIEDIT.h"






















 








 

typedef signed short MULTIEDIT_HANDLE;






 

MULTIEDIT_HANDLE MULTIEDIT_CreateEx      (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent, int WinFlags, int ExFlags,
                                          int Id, int BufferSize, const char* pText);
MULTIEDIT_HANDLE MULTIEDIT_Create        (int x0, int y0, int xsize, int ysize, GUI_HWIN hParent,
                                          int Id, int Flags, int ExFlags, const char* pText, 
                                          int BufferSize);
MULTIEDIT_HANDLE MULTIEDIT_CreateIndirect(const GUI_WIDGET_CREATE_INFO* pCreateInfo, 
                                          GUI_HWIN hWinParent, int x0, int y0, WM_CALLBACK* cb);






 

int  MULTIEDIT_AddKey           (MULTIEDIT_HANDLE hObj, unsigned short Key);
void MULTIEDIT_GetPrompt        (MULTIEDIT_HANDLE hObj, char* sDest, int MaxNumChars);
int  MULTIEDIT_GetTextSize      (MULTIEDIT_HANDLE hObj);
void MULTIEDIT_GetText          (MULTIEDIT_HANDLE hObj, char* sDest, int MaxNumChars);
void MULTIEDIT_SetAutoScrollH   (MULTIEDIT_HANDLE hObj, int OnOff);
void MULTIEDIT_SetAutoScrollV   (MULTIEDIT_HANDLE hObj, int OnOff);
void MULTIEDIT_SetBkColor       (MULTIEDIT_HANDLE hObj, unsigned Index, GUI_COLOR color);
void MULTIEDIT_SetCursorCharPos (MULTIEDIT_HANDLE hObj, int x, int y);        
void MULTIEDIT_SetCursorPixelPos(MULTIEDIT_HANDLE hObj, int x, int y);        
void MULTIEDIT_SetCursorOffset  (MULTIEDIT_HANDLE hObj, int Offset);
void MULTIEDIT_SetHBorder       (MULTIEDIT_HANDLE hObj, unsigned HBorder);
void MULTIEDIT_SetFont          (MULTIEDIT_HANDLE hObj, const GUI_FONT  * pFont);
void MULTIEDIT_SetInsertMode    (MULTIEDIT_HANDLE hObj, int OnOff);
void MULTIEDIT_SetBufferSize    (MULTIEDIT_HANDLE hObj, int BufferSize);
void MULTIEDIT_SetMaxNumChars   (MULTIEDIT_HANDLE hObj, unsigned MaxNumChars);
void MULTIEDIT_SetPrompt        (MULTIEDIT_HANDLE hObj, const char* sPrompt);
void MULTIEDIT_SetReadOnly      (MULTIEDIT_HANDLE hObj, int OnOff);
void MULTIEDIT_SetPasswordMode  (MULTIEDIT_HANDLE hObj, int OnOff);
void MULTIEDIT_SetText          (MULTIEDIT_HANDLE hObj, const char* s);
void MULTIEDIT_SetTextColor     (MULTIEDIT_HANDLE hObj, unsigned Index, GUI_COLOR color);
void MULTIEDIT_SetWrapNone      (MULTIEDIT_HANDLE hObj);
void MULTIEDIT_SetWrapChar      (MULTIEDIT_HANDLE hObj);
void MULTIEDIT_SetWrapWord      (MULTIEDIT_HANDLE hObj);






 










#line 23 "..\\code\\uCGUI\\Widget\\MULTIEDIT.c"
#line 24 "..\\code\\uCGUI\\Widget\\MULTIEDIT.c"
#line 25 "..\\code\\uCGUI\\Widget\\MULTIEDIT.c"








 

 




 
















 







 









typedef struct {
  WIDGET Widget;
  GUI_COLOR aBkColor[2];
  GUI_COLOR aColor[2];
  signed short hText;
  unsigned short MaxNumChars;                      
  unsigned short NumChars;                                 
  unsigned short NumCharsPrompt;       
  unsigned short NumLines;             
  unsigned short TextSizeX;            
  unsigned short BufferSize;
  unsigned short CursorLine;           
  unsigned short CursorPosChar;        
  unsigned short CursorPosByte;        
  unsigned short CursorPosX;           
  unsigned short CursorPosY;           
  unsigned short CacheLinePosByte;     
  unsigned short CacheLineNumber;      
  unsigned short CacheFirstVisibleLine;
  unsigned short CacheFirstVisibleByte;
  WM_SCROLL_STATE ScrollStateV;
  WM_SCROLL_STATE ScrollStateH;
  const GUI_FONT  * pFont;
  unsigned char Flags;
  unsigned char InvalidFlags;          
  unsigned char EditMode;
  unsigned char HBorder;
  GUI_WRAPMODE WrapMode;



} MULTIEDIT_OBJ;






 

static GUI_COLOR _aDefaultBkColor[2] = {
  0xFFFFFF,
  0xC0C0C0,
};

static GUI_COLOR _aDefaultColor[2] = {
  0x000000,
  0x000000,
};

static const GUI_FONT  * _pDefaultFont = &GUI_Font13_1;






 







#line 149 "..\\code\\uCGUI\\Widget\\MULTIEDIT.c"






 






 
static void _InvalidateNumChars(MULTIEDIT_OBJ * pObj) {
  pObj->InvalidFlags |= (1 << 0);
}






 
static int _GetNumChars(MULTIEDIT_OBJ * pObj) {
  if (pObj->InvalidFlags & (1 << 0)) {
    char * pText;
    pText = (char*) GUI_ALLOC_h2p(pObj->hText);
    pObj->NumChars = GUI__GetNumChars(pText);
    pObj->InvalidFlags &= ~(1 << 0);
  }
  return pObj->NumChars;
}






 
static int _GetXSize(MULTIEDIT_HANDLE hObj, const MULTIEDIT_OBJ* pObj) {
  GUI_RECT Rect;
  WM_GetInsideRectExScrollbar(hObj, &Rect);
  return Rect.x1 - Rect.x0 - (pObj->HBorder * 2) - 1;
}




 
static int _GetNumCharsInPrompt(const MULTIEDIT_OBJ* pObj, const char  * pText) {
  char *pString, *pEndPrompt;
  int r = 0;
  pString = (char*) GUI_ALLOC_h2p(pObj->hText);
  pEndPrompt = pString + GUI_UC__NumChars2NumBytes(pString, pObj->NumCharsPrompt);
  if (pText < pEndPrompt) {
    r = GUI_UC__NumBytes2NumChars(pText, pEndPrompt - pText);
  }
  return r;
}




 
static int _NumChars2XSize(const char  * pText, int NumChars) {
  int xSize = 0;
  unsigned short Char;
  while (NumChars--) {
    Char   = GUI_UC__GetCharCodeInc(&pText);
    xSize += GUI_GetCharDistX(Char);
  }
  return xSize;
}




 
static int _WrapGetNumCharsDisp(MULTIEDIT_HANDLE hObj, const MULTIEDIT_OBJ* pObj, const char  * pText) {
  int xSize, r;
  xSize = _GetXSize(hObj, pObj);
  if (pObj->Flags & (1 << 5)) {
    int NumCharsPrompt;
    NumCharsPrompt = _GetNumCharsInPrompt(pObj, pText);
    r = GUI__WrapGetNumCharsDisp(pText, xSize, pObj->WrapMode);
    if (r >= NumCharsPrompt) {
      int x;
      switch (pObj->WrapMode) {
      case GUI_WRAPMODE_NONE:
        r = GUI__GetNumChars(pText);
        break;
      default:
        r = NumCharsPrompt;
        x = _NumChars2XSize(pText, NumCharsPrompt);
        pText += GUI_UC__NumChars2NumBytes(pText, NumCharsPrompt);
        while (GUI_UC__GetCharCodeInc(&pText) != 0) {
          x += GUI_GetCharDistX('*');
          if (r && (x > xSize)) {
            break;
          }
          r++;
        }
        break;
      }
    }
  } else {
    r = GUI__WrapGetNumCharsDisp(pText, xSize, pObj->WrapMode);
  }
  return r;
}




 
static int _WrapGetNumBytesToNextLine(MULTIEDIT_HANDLE hObj, const MULTIEDIT_OBJ* pObj, const char* pText) {
  int xSize, r;
  xSize = _GetXSize(hObj, pObj);
  if (pObj->Flags & (1 << 5)) {
    int NumChars, NumCharsPrompt;
    NumCharsPrompt = _GetNumCharsInPrompt(pObj, pText);
    NumChars = _WrapGetNumCharsDisp(hObj, pObj, pText);
    r        = GUI_UC__NumChars2NumBytes(pText, NumChars);
    if (NumChars < NumCharsPrompt) {
      if (*(pText + r) == '\n') {
        r++;
      }
    }
  } else {
    r = GUI__WrapGetNumBytesToNextLine(pText, xSize, pObj->WrapMode);
  }
  return r;
}




 
static int _GetCharDistX(const MULTIEDIT_OBJ* pObj, const char* pText) {
  int r;
  if ((pObj->Flags & (1 << 5)) && (_GetNumCharsInPrompt(pObj, pText) == 0)) {
    r = GUI_GetCharDistX('*');
  } else {
    unsigned short c;
    c = GUI_UC_GetCharCode(pText);
    r = GUI_GetCharDistX(c);
  }
  return r;
}




 
static void _DispString(MULTIEDIT_HANDLE hObj, const MULTIEDIT_OBJ* pObj, const char* pText, GUI_RECT* pRect) {
  int NumCharsDisp;
  NumCharsDisp = _WrapGetNumCharsDisp(hObj, pObj, pText);
  if (pObj->Flags & (1 << 5)) {
    int x, NumCharsPrompt, NumCharsLeft = 0;
    NumCharsPrompt = _GetNumCharsInPrompt(pObj, pText);
    if (NumCharsDisp < NumCharsPrompt) {
      NumCharsPrompt = NumCharsDisp;
    } else {
      NumCharsLeft = NumCharsDisp - NumCharsPrompt;
    }
    GUI_DispStringInRectMax(pText, pRect, (0<<0), NumCharsPrompt);
    x = pRect->x0 + _NumChars2XSize(pText, NumCharsPrompt);
    if (NumCharsLeft) {
      GUI_DispCharAt('*', x, pRect->y0);
      GUI_DispChars('*', NumCharsLeft - 1);
    }
  } else {
    GUI_DispStringInRectMax(pText, pRect, (0<<0), NumCharsDisp);
  }  
}






 






 
static char * _GetpLine(MULTIEDIT_HANDLE hObj, MULTIEDIT_OBJ* pObj, unsigned LineNumber) {
  char * pText, * pLine;
  pText = (char*) GUI_ALLOC_h2p(pObj->hText);
  if ((unsigned)pObj->CacheLineNumber != LineNumber) {
    if (LineNumber > (unsigned)pObj->CacheLineNumber) {
       
      int OldNumber = pObj->CacheLineNumber;
      pLine = pText + pObj->CacheLinePosByte;
      pObj->CacheLineNumber  = LineNumber;
      LineNumber -= OldNumber;
    } else {
       
      pLine = pText;
      pObj->CacheLineNumber  = LineNumber;
    }
    while (LineNumber--) {
      pLine += _WrapGetNumBytesToNextLine(hObj, pObj, pLine);
    }
    pObj->CacheLinePosByte = pLine - pText;
  }
  return pText + pObj->CacheLinePosByte;
}







 
static void _ClearCache(MULTIEDIT_OBJ* pObj) {
  pObj->CacheLineNumber = 0;
  pObj->CacheLinePosByte = 0;
  pObj->CacheFirstVisibleByte = 0;
  pObj->CacheFirstVisibleLine = 0;
}






 
static int _GetCursorLine(MULTIEDIT_HANDLE hObj, const MULTIEDIT_OBJ* pObj, const char* pText, int CursorPosChar) {
  const char *pCursor;
  const char *pEndLine;
  int NumChars, ByteOffsetNewCursor, LineNumber = 0;
  ByteOffsetNewCursor = GUI_UC__NumChars2NumBytes(pText, CursorPosChar);
  pCursor = pText + ByteOffsetNewCursor;
  if (pObj->CacheLinePosByte < ByteOffsetNewCursor) {
     
    pText      += pObj->CacheLinePosByte;
    LineNumber += pObj->CacheLineNumber;
  }
  while (*pText && (pCursor > pText)) {
    NumChars = _WrapGetNumCharsDisp(hObj, pObj, pText);
    pEndLine = pText + GUI_UC__NumChars2NumBytes(pText, NumChars);
    pText   += _WrapGetNumBytesToNextLine(hObj, pObj, pText);
    if (pCursor <= pEndLine) {
      if ((pCursor == pEndLine) && (pEndLine == pText) && *pText) {
        LineNumber++;
      }
      break;
    }
    LineNumber++;
  }
  return LineNumber;
}




 
static void _GetCursorXY(MULTIEDIT_HANDLE hObj,   MULTIEDIT_OBJ* pObj, int* px, int* py) {
  if (pObj->InvalidFlags & (1 << 3)) {
    int CursorLine = 0, x = 0;
    GUI_SetFont(pObj->pFont);
    if (pObj->hText) {
      const char *pLine;
      const char *pCursor;
      pLine      = (const char *)GUI_ALLOC_h2p(pObj->hText);
      pCursor    = pLine + pObj->CursorPosByte;
      CursorLine = pObj->CursorLine;
      pLine      = _GetpLine(hObj, pObj, CursorLine);
      while (pLine < pCursor) {
        x     += _GetCharDistX(pObj, pLine);
        pLine += GUI_UC_GetCharSize(pLine);
      }
    }
    pObj->CursorPosX = x;
    pObj->CursorPosY = CursorLine * GUI_GetFontDistY();
    pObj->InvalidFlags &= ~(1 << 3);
  }
  *px = pObj->CursorPosX;
  *py = pObj->CursorPosY;
}




 
static void _InvalidateCursorXY(MULTIEDIT_OBJ * pObj) {
  pObj->InvalidFlags |= (1 << 3);
}




 
static void _SetScrollState(GUI_HWIN hObj) {
  MULTIEDIT_OBJ* pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
  WIDGET__SetScrollState(hObj, &pObj->ScrollStateV, &pObj->ScrollStateH);
}










 
static void _CalcScrollPos(MULTIEDIT_HANDLE hObj, MULTIEDIT_OBJ* pObj) {
  int xCursor, yCursor;
  _GetCursorXY(hObj, pObj, &xCursor, &yCursor);
  yCursor /= GUI_GetYDistOfFont(pObj->pFont);
  WM_CheckScrollPos(&pObj->ScrollStateV, yCursor, 0, 0);        
  WM_CheckScrollPos(&pObj->ScrollStateH, xCursor, 30, 30);      
  _SetScrollState(hObj);
}






 
static int _GetTextSizeX(MULTIEDIT_HANDLE hObj, MULTIEDIT_OBJ* pObj) {
  if (pObj->InvalidFlags & (1 << 2)) {
    pObj->TextSizeX = 0;
    if (pObj->hText) {
      int NumChars, xSizeLine;
      char *pText, *pLine;
      GUI_SetFont(pObj->pFont);
      pText = (char*) GUI_ALLOC_h2p(pObj->hText);
      do {
        NumChars = _WrapGetNumCharsDisp(hObj, pObj, pText);
        xSizeLine = 0;
        pLine = pText;
        while (NumChars--) {
          xSizeLine += _GetCharDistX(pObj, pLine);
          pLine     += GUI_UC_GetCharSize(pLine);
        }
        if (xSizeLine > pObj->TextSizeX) {
          pObj->TextSizeX = xSizeLine;
        }
        pText += _WrapGetNumBytesToNextLine(hObj, pObj, pText);
      } while (*pText);
    }
    pObj->InvalidFlags &= ~(1 << 2);
  }
  return pObj->TextSizeX;
}




 
static int _GetNumVisLines(MULTIEDIT_HANDLE hObj, const MULTIEDIT_OBJ* pObj) {
  GUI_RECT Rect;
  WM_GetInsideRectExScrollbar(hObj, &Rect);
  return (Rect.y1 - Rect.y0 + 1) / GUI_GetYDistOfFont(pObj->pFont);
}






 
static int _GetNumLines(MULTIEDIT_HANDLE hObj, MULTIEDIT_OBJ * pObj) {
  if (pObj->InvalidFlags & (1 << 1)) {
    int NumLines = 0;
    if (pObj->hText) {
      int NumChars, NumBytes;
      char *pText;
      unsigned short Char;
      pText = (char*) GUI_ALLOC_h2p(pObj->hText);
      GUI_SetFont(pObj->pFont);
      do {
        NumChars = _WrapGetNumCharsDisp(hObj, pObj, pText);
        NumBytes = GUI_UC__NumChars2NumBytes(pText, NumChars);
        Char     = GUI_UC_GetCharCode(pText + NumBytes);
        if (Char) {
          NumLines++;
        }
        pText += _WrapGetNumBytesToNextLine(hObj, pObj, pText);
      } while (Char);
    }
    pObj->NumLines = NumLines + 1;
    pObj->InvalidFlags &= ~(1 << 1);
  }
  return pObj->NumLines;
}






 
static void _InvalidateNumLines(MULTIEDIT_OBJ * pObj) {
  pObj->InvalidFlags |= (1 << 1);
}






 
static void _InvalidateTextSizeX(MULTIEDIT_OBJ * pObj) {
  pObj->InvalidFlags |= (1 << 2);
}







 
static void _CalcScrollParas(MULTIEDIT_HANDLE hObj) {
  MULTIEDIT_OBJ* pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
   
  pObj->ScrollStateV.NumItems = _GetNumLines(hObj, pObj);
  pObj->ScrollStateV.PageSize = _GetNumVisLines(hObj, pObj);
   
  pObj->ScrollStateH.NumItems = _GetTextSizeX(hObj, pObj);
  pObj->ScrollStateH.PageSize = _GetXSize(hObj, pObj);
  _CalcScrollPos(hObj, pObj);
}




 
static void _ManageAutoScrollV(MULTIEDIT_HANDLE hObj, MULTIEDIT_OBJ* pObj) {
  if (pObj->Flags & (1 << 3)) {
    char IsRequired = _GetNumVisLines(hObj, pObj) < _GetNumLines(hObj, pObj);
    if (WM_SetScrollbarV(hObj, IsRequired) != IsRequired) {
      _InvalidateNumLines(pObj);
      _InvalidateTextSizeX(pObj);
      _InvalidateCursorXY(pObj);
      _ClearCache(pObj);
    }
  }
}










 
static void _ManageScrollers(MULTIEDIT_HANDLE hObj) {
  MULTIEDIT_OBJ* pObj;
  pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
   
  _ManageAutoScrollV(hObj, pObj);
   
  if (pObj->Flags & (1 << 4)) {
    char IsRequired;
    IsRequired = (_GetXSize(hObj, pObj) < _GetTextSizeX(hObj, pObj));
    if (WM_SetScrollbarH(hObj, IsRequired) != IsRequired) {
       
      _ManageAutoScrollV(hObj, pObj);
    }
  }
  _CalcScrollParas(hObj);
}




 
static void _Invalidate(MULTIEDIT_HANDLE hObj) {
  _ManageScrollers(hObj);
  WM_InvalidateWindow(hObj);
}






 
static void _InvalidateTextArea(MULTIEDIT_HANDLE hObj) {
  GUI_RECT rInsideRect;
  _ManageScrollers(hObj);
  WM_GetInsideRectExScrollbar(hObj, &rInsideRect);
  WM_InvalidateRect(hObj, &rInsideRect);
}






 
static int _InvalidateCursorPos(MULTIEDIT_OBJ * pObj) {
  int Value;
  Value = pObj->CursorPosChar;
  pObj->CursorPosChar = 0xffff;
  return Value;
}




 
static void _SetFlag(MULTIEDIT_HANDLE hObj, int OnOff, unsigned char Flag) {
  if (hObj) {
    MULTIEDIT_OBJ * pObj;
    ;
    pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
    if (OnOff) {
      pObj->Flags |= Flag;
    } else {
      pObj->Flags &= ~Flag;
    }
    _InvalidateTextArea(hObj);
    ;
  }
}













 
static int _CalcNextValidCursorPos(MULTIEDIT_HANDLE hObj, MULTIEDIT_OBJ* pObj, int CursorPosChar, int * pCursorPosByte, int * pCursorLine) {
  if (pObj->hText) {
    char *pNextLine, *pCursor, *pText;
    int CursorLine, NumChars, CursorPosByte;
    pText    = (char*) GUI_ALLOC_h2p(pObj->hText);
    NumChars = _GetNumChars(pObj);
     
    if (CursorPosChar < pObj->NumCharsPrompt) {
      CursorPosChar = pObj->NumCharsPrompt;
    }
    if (CursorPosChar > NumChars) {
      CursorPosChar = NumChars;
    }
    CursorPosByte = GUI_UC__NumChars2NumBytes(pText, CursorPosChar);
    CursorLine    = _GetCursorLine(hObj, pObj, pText, CursorPosChar);
    pCursor       = pText + CursorPosByte;
    pNextLine     = _GetpLine(hObj, pObj, CursorLine);
    if (pNextLine > pCursor) {
      if (pObj->CursorPosChar < CursorPosChar) {
        pCursor = pNextLine;
      } else {
        char *pPrevLine;
        int NumChars;
        pPrevLine  = _GetpLine(hObj, pObj, CursorLine - 1);
        NumChars   = _WrapGetNumCharsDisp(hObj, pObj, pPrevLine);
        pPrevLine += GUI_UC__NumChars2NumBytes(pPrevLine, NumChars);
        pCursor = pPrevLine;
      }
      CursorPosChar = GUI_UC__NumBytes2NumChars(pText, pCursor - pText);
      CursorPosByte = GUI_UC__NumChars2NumBytes(pText, CursorPosChar);
      CursorLine    = _GetCursorLine(hObj, pObj, pText, CursorPosChar);
    }
    if (pCursorPosByte) {
      *pCursorPosByte = CursorPosByte;
    }
    if (pCursorLine) {
      *pCursorLine = CursorLine;
    }
    return CursorPosChar;
  }
  return 0;
}






 
static void _SetCursorPos(MULTIEDIT_HANDLE hObj, MULTIEDIT_OBJ* pObj, int CursorPosChar) {
  int CursorPosByte, CursorLine;
  CursorPosChar = _CalcNextValidCursorPos(hObj, pObj, CursorPosChar, &CursorPosByte, &CursorLine);
   
  if (pObj->CursorPosChar != CursorPosChar) {
     
    pObj->CursorPosByte = CursorPosByte;
    pObj->CursorPosChar = CursorPosChar;
    pObj->CursorLine = CursorLine;
    _InvalidateCursorXY(pObj);  
    _CalcScrollPos(hObj, pObj);
  }
}




 
static int _SetWrapMode(MULTIEDIT_HANDLE hObj, GUI_WRAPMODE WrapMode) {
  int r;
  r = 0;
  if (hObj) {
    MULTIEDIT_OBJ * pObj;
    ;
    pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
    r = pObj->WrapMode;
    if (pObj->WrapMode != WrapMode) {
      int Position;
      pObj->WrapMode = WrapMode;
      _ClearCache(pObj);
      _InvalidateNumLines(pObj);
      _InvalidateTextSizeX(pObj);
      _InvalidateTextArea(hObj);
      Position = _InvalidateCursorPos(pObj);
      _SetCursorPos(hObj, pObj, Position);
    }
    ;
  }
  return r;
}






 
static void _SetCursorXY(MULTIEDIT_HANDLE hObj, MULTIEDIT_OBJ* pObj, int x, int y) {
  int CursorPosChar = 0;
  if ((x < 0) || (y < 0)) {
    return;
  }
  if (pObj->hText) {
    char *pLine, *pText;
    int CursorLine, WrapChars;
    int SizeX = 0;
    unsigned short Char;
    GUI_SetFont(pObj->pFont);
    CursorLine = y / GUI_GetFontDistY();
    pLine      = _GetpLine(hObj, pObj, CursorLine);
    pText      = (char*) GUI_ALLOC_h2p(pObj->hText);
    WrapChars  = _WrapGetNumCharsDisp(hObj, pObj, pLine);
    Char       = GUI_Context . pUC_API->pfGetCharCode(pLine + GUI_UC__NumChars2NumBytes(pLine, WrapChars));
    if (pObj->Flags & (1 << 5)) {
      if (!Char) {
        WrapChars++;
      }
    } else {
      if (!Char || (Char == '\n') || ((Char == ' ') && (pObj->WrapMode == GUI_WRAPMODE_WORD))) {
        WrapChars++;
      }
    }
    while (--WrapChars > 0) {
      Char   = GUI_UC_GetCharCode(pLine);
      SizeX += _GetCharDistX(pObj, pLine);
      if (!Char || (SizeX > x)) {
        break;
      }
      pLine += GUI_UC_GetCharSize(pLine);
    }
    CursorPosChar = GUI_UC__NumBytes2NumChars(pText, pLine - pText);
  }
  _SetCursorPos(hObj, pObj, CursorPosChar);
}




 
static void _MoveCursorUp(MULTIEDIT_HANDLE hObj, MULTIEDIT_OBJ* pObj) {
  int xPos, yPos;
  _GetCursorXY(hObj, pObj, &xPos, &yPos);
  yPos -= GUI_GetYDistOfFont(pObj->pFont);
  _SetCursorXY(hObj, pObj, xPos, yPos);
}




 
static void _MoveCursorDown(MULTIEDIT_HANDLE hObj, MULTIEDIT_OBJ* pObj) {
  int xPos, yPos;
  _GetCursorXY(hObj, pObj, &xPos, &yPos);
  yPos += GUI_GetYDistOfFont(pObj->pFont);
  _SetCursorXY(hObj, pObj, xPos, yPos);
}




 
static void _MoveCursor2NextLine(MULTIEDIT_HANDLE hObj, MULTIEDIT_OBJ* pObj) {
  int xPos, yPos;
  _GetCursorXY(hObj, pObj, &xPos, &yPos);
  yPos += GUI_GetYDistOfFont(pObj->pFont);
  _SetCursorXY(hObj, pObj, 0, yPos);
}




 
static void _MoveCursor2LineEnd(MULTIEDIT_HANDLE hObj, MULTIEDIT_OBJ* pObj) {
  int xPos, yPos;
  _GetCursorXY(hObj, pObj, &xPos, &yPos);
  _SetCursorXY(hObj, pObj, 0x7FFF, yPos);
}




 
static void _MoveCursor2LinePos1(MULTIEDIT_HANDLE hObj, MULTIEDIT_OBJ* pObj) {
  int xPos, yPos;
  _GetCursorXY(hObj, pObj, &xPos, &yPos);
  _SetCursorXY(hObj, pObj, 0, yPos);
}




 
static int _IsOverwriteAtThisChar(MULTIEDIT_HANDLE hObj, MULTIEDIT_OBJ* pObj) {
  int r = 0;
  if (pObj->hText && !(pObj->Flags & (1 << 2))) {
    const char *pText;
    int CurPos, Line1, Line2;
    unsigned short Char;
    pText  = (const char *)GUI_ALLOC_h2p(pObj->hText);
    Line1  = pObj->CursorLine;
    CurPos = _CalcNextValidCursorPos(hObj, pObj, pObj->CursorPosChar + 1, 0, 0);
    Line2  = _GetCursorLine(hObj, pObj, pText, CurPos);
    pText += pObj->CursorPosByte;
    Char   = GUI_UC_GetCharCode(pText);
    if (Char) {
      if ((Line1 == Line2) || (pObj->Flags & (1 << 5))) {
        r = 1;
      } else {
        if (Char != '\n') {
          if ((Char != ' ') || (pObj->WrapMode == GUI_WRAPMODE_CHAR)) {
            r = 1;
          }
        }
      }
    }
  }
  return r;
}







 
static int _GetCursorSizeX(MULTIEDIT_HANDLE hObj, MULTIEDIT_OBJ* pObj) {
  if (_IsOverwriteAtThisChar(hObj, pObj)) {
    const char *pText;
    pText  = (const char *)GUI_ALLOC_h2p(pObj->hText);
    pText += pObj->CursorPosByte;
    return _GetCharDistX(pObj, pText);
  } else {
    return 2;
  }
}






 





 
static int _IncrementBuffer(MULTIEDIT_OBJ* pObj, unsigned AddBytes) {
  signed short hNew;
  int NewSize;
  NewSize = pObj->BufferSize + AddBytes;
  hNew    = GUI_ALLOC_Realloc(pObj->hText, NewSize);
  if (hNew) {
    if (!(pObj->hText)) {
      char* pText;
      pText  = (char*) GUI_ALLOC_h2p(hNew);
      *pText = 0;
    }
    pObj->BufferSize = NewSize;
    pObj->hText = hNew;
    return 1;
  }
  return 0;
}











 
static int _IsSpaceInBuffer(MULTIEDIT_OBJ* pObj, int BytesNeeded) {
  int NumBytes = 0;
  if (pObj->hText) {
    NumBytes = strlen((char*)GUI_ALLOC_h2p(pObj->hText));
  }
  BytesNeeded = (BytesNeeded + NumBytes + 1) - pObj->BufferSize;
  if (BytesNeeded > 0) {
    if (!_IncrementBuffer(pObj, BytesNeeded + 16)) {
      return 0;
    }
  }
  return 1;
}










 
static int _IsCharsAvailable(MULTIEDIT_OBJ* pObj, int CharsNeeded) {
  if ((CharsNeeded > 0) && (pObj->MaxNumChars > 0)) {
    int NumChars = 0;
    if (pObj->hText) {
      NumChars = _GetNumChars(pObj);
    }
    if ((CharsNeeded + NumChars) > pObj->MaxNumChars) {
      return 0;
    }
  }
  return 1;
}






 






 
static void _DeleteChar(MULTIEDIT_HANDLE hObj, MULTIEDIT_OBJ* pObj) {
  if (pObj->hText) {
    unsigned CursorOffset;
    char* s;
    s = (char*) GUI_ALLOC_h2p(pObj->hText);
    CursorOffset = pObj->CursorPosByte;
    if (CursorOffset < strlen(s)) {
      char *pCursor, *pLine, *pEndLine;
      int CursorLine, NumChars, NumBytes;
      pCursor    = s + CursorOffset;
      CursorLine = pObj->CursorLine;
      pLine      = _GetpLine(hObj, pObj, CursorLine);
      NumChars   = _WrapGetNumCharsDisp(hObj, pObj, pLine);
      pEndLine   = pLine + GUI_UC__NumChars2NumBytes(pLine, NumChars);
      pLine      = pLine + _WrapGetNumBytesToNextLine(hObj, pObj, pLine);
      if (pCursor == pEndLine) {
        NumBytes = pLine - pEndLine;
      } else {
        NumBytes = GUI_UC_GetCharSize(pCursor);
      }
      NumChars = GUI_UC__NumBytes2NumChars(pCursor, NumBytes);
      strcpy(pCursor, pCursor + NumBytes);
      WM_NotifyParent(hObj, 5);
      pObj->NumChars -= NumChars;
      _InvalidateNumLines(pObj);
      _InvalidateTextSizeX(pObj);
      _InvalidateCursorXY(pObj);  
      _ClearCache(pObj);
      pObj->CursorLine = _GetCursorLine(hObj, pObj, s, pObj->CursorPosChar);
    }
  }
}






 
static int _InsertChar(MULTIEDIT_HANDLE hObj, MULTIEDIT_OBJ* pObj, unsigned short Char) {
  if (_IsCharsAvailable(pObj, 1)) {
    int BytesNeeded;
    BytesNeeded = GUI_UC__CalcSizeOfChar(Char);
    if (_IsSpaceInBuffer(pObj, BytesNeeded)) {
      int CursorOffset;
      char* pText;
      pText = (char*) GUI_ALLOC_h2p(pObj->hText);
      CursorOffset = pObj->CursorPosByte;
      pText += CursorOffset;
      memmove(pText + BytesNeeded, pText, strlen(pText) + 1);
      GUI_UC_Encode(pText, Char);
      WM_NotifyParent(hObj, 5);
      pObj->NumChars += 1;
      _InvalidateNumLines(pObj);
      _InvalidateTextSizeX(pObj);
      _ClearCache(pObj);
      return 1;
    }
  }
  return 0;
}






 



 
static void _MULTIEDIT_Paint(MULTIEDIT_HANDLE hObj, MULTIEDIT_OBJ * pObj) {
  int ScrollPosX, ScrollPosY, EffectSize, HBorder;
  int x, y, xOff, yOff, ColorIndex, FontSizeY;
  GUI_RECT r, rClip;
  const GUI_RECT *prOldClip;
   
  GUI_SetFont(pObj->pFont);
  FontSizeY  = GUI_GetFontDistY();
  ScrollPosX = pObj->ScrollStateH.v;
  ScrollPosY = pObj->ScrollStateV.v;
  EffectSize = pObj->Widget.pEffect->EffectSize;
  HBorder    = pObj->HBorder;
  xOff       = EffectSize + HBorder - ScrollPosX ;
  yOff       = EffectSize - ScrollPosY * FontSizeY;
  ColorIndex = ((pObj->Flags & (1 << 0)) ? 1 : 0);
   
  LCD_SetBkColor(pObj->aBkColor[ColorIndex]);
  LCD_SetColor(pObj->aColor[ColorIndex]);
  GUI_Clear();
   
  rClip.x0 = EffectSize + HBorder;
  rClip.y0 = EffectSize;
  rClip.x1 = WM_GetWindowSizeX(hObj) - EffectSize - HBorder - 1;
  rClip.y1 = WM_GetWindowSizeY(hObj) - EffectSize - 1;
  prOldClip = WM_SetUserClipRect(&rClip);
  if (pObj->hText) {
    const char* pText;
    int Line = 0;
    int xSize       = _GetXSize(hObj, pObj);
    int NumVisLines = _GetNumVisLines(hObj, pObj);
     
    pText = (const char *)GUI_ALLOC_h2p(pObj->hText);
     
    r.x0 = xOff;
    r.y0 = EffectSize;
    r.x1 = xSize + EffectSize + HBorder - 1;
    r.y1 = pObj->Widget.Win.Rect.y1 - pObj->Widget.Win.Rect.y0 + 1;
     
    if (ScrollPosY >= pObj->CacheFirstVisibleLine) {
      if (pObj->CacheFirstVisibleByte) {
        pText += pObj->CacheFirstVisibleByte;
        Line   = pObj->CacheFirstVisibleLine;
      }
    }
     
    do {
       
      if (pObj->CacheFirstVisibleLine != ScrollPosY) {
        if (Line == ScrollPosY) {
          pObj->CacheFirstVisibleByte = pText - (const char *)GUI_ALLOC_h2p(pObj->hText);
          pObj->CacheFirstVisibleLine = ScrollPosY;
        }
      }
       
      if ((Line >= ScrollPosY) && ((Line - ScrollPosY) <= NumVisLines)) {
        _DispString(hObj, pObj, pText, &r);
        r.y0 += FontSizeY;   
      }
      pText += _WrapGetNumBytesToNextLine(hObj, pObj, pText);
      Line++;
    } while (GUI_UC_GetCharCode(pText) && ((Line - ScrollPosY) <= NumVisLines));
  }
   
  if (WM_HasFocus(hObj)) {
    _GetCursorXY(hObj, pObj, &x, &y);
    r.x0 = x + xOff;
    r.y0 = y + yOff;
    r.x1 = r.x0 + _GetCursorSizeX(hObj, pObj) - 1;
    r.y1 = r.y0 + FontSizeY - 1;
    GUI_InvertRect(r.x0, r.y0, r.x1, r.y1);
  }
  WM_SetUserClipRect(prOldClip);
   
  WIDGET__EFFECT_DrawDown(&pObj->Widget);
}




 
static void _OnTouch(MULTIEDIT_HANDLE hObj, MULTIEDIT_OBJ* pObj, WM_MESSAGE*pMsg) {
  int Notification;
  const GUI_PID_STATE* pState = (const GUI_PID_STATE*)pMsg->Data.p;
  if (pMsg->Data.p) {   
    if (pState->Pressed) {
      int Effect, xPos, yPos;
      Effect = pObj->Widget.pEffect->EffectSize;
      xPos   = pState->x + pObj->ScrollStateH.v - Effect - pObj->HBorder;
      yPos   = pState->y + pObj->ScrollStateV.v * GUI_GetYDistOfFont(pObj->pFont) - Effect;
      _SetCursorXY(hObj, pObj, xPos, yPos);
      _Invalidate(hObj);
      Notification = 1;
    } else {
      Notification = 2;
    }
  } else {
    Notification = 3;
  }
  WM_NotifyParent(hObj, Notification);
}







 
static int _AddKey(MULTIEDIT_HANDLE hObj, unsigned short Key) {
  int r = 0;                
  MULTIEDIT_OBJ* pObj;
  pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
  switch (Key) {
  case 17:
    _MoveCursorUp(hObj, pObj);
    r = 1;                
    break;
  case 19:
    _MoveCursorDown(hObj, pObj);
    r = 1;                
    break;
  case 18:
    _SetCursorPos(hObj, pObj, pObj->CursorPosChar + 1);
    r = 1;                
    break;
  case 16:
    _SetCursorPos(hObj, pObj, pObj->CursorPosChar - 1);
    r = 1;                
    break;
  case 24:
    _MoveCursor2LineEnd(hObj, pObj);
    r = 1;                
    break;
  case 23:
    _MoveCursor2LinePos1(hObj, pObj);
    r = 1;                
    break;
  case 8:
    if (!(pObj->Flags & (1 << 0))) {
      if (pObj->CursorPosChar > pObj->NumCharsPrompt) {
        _SetCursorPos(hObj, pObj, pObj->CursorPosChar - 1);
        _DeleteChar(hObj, pObj);
      }
      r = 1;                
    }
    break;
  case 30:
    if (!(pObj->Flags & (1 << 0))) {
      _DeleteChar(hObj, pObj);
      r = 1;                
    }
    break;
  case 29:
    if (!(pObj->Flags & (1 << 2))) {
      pObj->Flags |= (1 << 2);
    } else {
      pObj->Flags &= ~(1 << 2);
    }
    r = 1;                
    break;
  case 13:
    if (pObj->Flags & (1 << 0)) {
      _MoveCursor2NextLine(hObj, pObj);
    } else {
      if (_InsertChar(hObj, pObj, (unsigned char)('\n'))) {
        if (pObj->Flags & (1 << 5)) {
          _SetCursorPos(hObj, pObj, pObj->CursorPosChar + 1);
        } else {
          _MoveCursor2NextLine(hObj, pObj);
        }
      }
    }
    r = 1;                
    break;
  case 27:
    break;
  default:
    if (!(pObj->Flags & (1 << 0)) && (Key >= 0x20)) {
      if (_IsOverwriteAtThisChar(hObj, pObj)) {
        _DeleteChar(hObj, pObj);
      }
      if (_InsertChar(hObj, pObj, Key)) {
        _SetCursorPos(hObj, pObj, pObj->CursorPosChar + 1);
      }
      r = 1;                
    }
  }
  _InvalidateTextArea(hObj);
  return r;
}




 
static void _MULTIEDIT_Callback (WM_MESSAGE *pMsg) {
  MULTIEDIT_HANDLE hObj;
  MULTIEDIT_OBJ* pObj;
  WM_SCROLL_STATE ScrollState;
  hObj = pMsg->hWin;
   
  if (WIDGET_HandleActive(hObj, pMsg) == 0) {
    return;
  }
  pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
  switch (pMsg->MsgId) {
  case 37:
    _InvalidateCursorXY(pObj);
    _InvalidateNumLines(pObj);
    _InvalidateTextSizeX(pObj);
    _ClearCache(pObj);
    _CalcScrollParas(hObj);
    break;
  case 0x0005:
    _InvalidateCursorXY(pObj);
    _InvalidateNumLines(pObj);
    _InvalidateTextSizeX(pObj);
    _ClearCache(pObj);
    _Invalidate(hObj);
    break;
  case 38:
    switch (pMsg->Data.v) {
    case 5:
      if (pMsg->hWinSrc  == WM_GetScrollbarV(hObj)) {
        WM_GetScrollState(pMsg->hWinSrc, &ScrollState);
        pObj->ScrollStateV.v = ScrollState.v;
        WM_InvalidateWindow(hObj);
        WM_NotifyParent(hObj, 10);
      } else if (pMsg->hWinSrc == WM_GetScrollbarH(hObj)) {
        WM_GetScrollState(pMsg->hWinSrc, &ScrollState);
        pObj->ScrollStateH.v = ScrollState.v;
        WM_InvalidateWindow(hObj);
        WM_NotifyParent(hObj, 10);
      }
      break;
    case 6:
      _SetScrollState(hObj);
      break;
    }
    break;
  case 0x000F:
    _MULTIEDIT_Paint(hObj, pObj);
    return;
  case 12:
    _OnTouch(hObj, pObj, pMsg);
    break;
  case 11:
    GUI_ALLOC_FreePtr(&pObj->hText);
    break;
  case 14:
    if (((const WM_KEY_INFO*)(pMsg->Data.p))->PressedCnt >0) {
      int Key = ((const WM_KEY_INFO*)(pMsg->Data.p))->Key;
      






 
      if (_AddKey(hObj, Key)) {
        return;
      }
    } else {
      if (!(pObj->Flags & (1 << 0))) {
        return;                 
      }
    }
  }
  WM_DefaultProc(pMsg);
}






 


 




 
MULTIEDIT_HANDLE MULTIEDIT_CreateEx(int x0, int y0, int xsize, int ysize, GUI_HWIN hParent, int WinFlags, int ExFlags,
                                    int Id, int BufferSize, const char* pText)
{
  MULTIEDIT_HANDLE hObj;
   
  ;
  if ((xsize == 0) && (ysize == 0) && (x0 == 0) && (y0 == 0)) {
    GUI_RECT Rect;
    WM_GetClientRectEx(hParent, &Rect);
    xsize = Rect.x1 - Rect.x0 + 1;
    ysize = Rect.y1 - Rect.y0 + 1;
  }
  hObj = WM_CreateWindowAsChild(x0, y0, xsize, ysize, hParent, WinFlags, &_MULTIEDIT_Callback,
                                sizeof(MULTIEDIT_OBJ) - sizeof(WM_Obj));
  if (hObj) {
    int i;
    MULTIEDIT_OBJ* pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
     
    WIDGET__Init(&pObj->Widget, Id, (1<<4));
     
    ;
    for (i = 0; i < 2; i++) {
      pObj->aBkColor[i]  = _aDefaultBkColor[i];
      pObj->aColor[i]    = _aDefaultColor[i];
    }
    pObj->pFont          = _pDefaultFont;
    pObj->Flags          = ExFlags;
    pObj->CursorPosChar  = 0;
    pObj->CursorPosByte  = 0;
    pObj->HBorder        = 1;
    pObj->MaxNumChars    = 0;
    pObj->NumCharsPrompt = 0;
    pObj->BufferSize     = 0;
    pObj->hText          = 0;
    if (BufferSize > 0) {
      GUI_HWIN hText;
      if ((hText = GUI_ALLOC_AllocZero(BufferSize)) != 0) {
        pObj->BufferSize = BufferSize;
        pObj->hText      = hText;
      } else {
        ;
        WM_DeleteWindow(hObj);
        hObj = 0;
      }
    }
    MULTIEDIT_SetText(hObj, pText);
    _ManageScrollers(hObj);
  } else {
    
  }
  ;
  return hObj;
}






 



 
int MULTIEDIT_AddKey(MULTIEDIT_HANDLE hObj, unsigned short Key) {
  int r = 0;
  if (hObj) {
    ;
    r = _AddKey(hObj, Key);
    ;
  }
  return r;
}




 
void MULTIEDIT_SetText(MULTIEDIT_HANDLE hObj, const char* pNew) {
  if (hObj) {
    MULTIEDIT_OBJ* pObj;
    int NumCharsNew = 0, NumCharsOld = 0;
    int NumBytesNew = 0, NumBytesOld = 0;
    char* pText;
    ;
    pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
    if (pObj->hText) {
      pText  = (char*) GUI_ALLOC_h2p(pObj->hText);
      pText += GUI_UC__NumChars2NumBytes(pText, pObj->NumCharsPrompt);
      NumCharsOld = GUI__GetNumChars(pText);
      NumBytesOld = GUI_UC__NumChars2NumBytes(pText, NumCharsOld);
    }
    if (pNew) {
      NumCharsNew = GUI__GetNumChars(pNew);
      NumBytesNew = GUI_UC__NumChars2NumBytes(pNew, NumCharsNew);
    }
    if (_IsCharsAvailable(pObj, NumCharsNew - NumCharsOld)) {
      if (_IsSpaceInBuffer(pObj, NumBytesNew - NumBytesOld)) {
        pText  = (char*) GUI_ALLOC_h2p(pObj->hText);
        pText += GUI_UC__NumChars2NumBytes(pText, pObj->NumCharsPrompt);
        if (pNew) {
          strcpy(pText, pNew);
        } else {
          *pText = 0;
        }
        _SetCursorPos(hObj, pObj, pObj->NumCharsPrompt);
        _InvalidateTextArea(hObj);
        _InvalidateNumChars(pObj);
        _InvalidateNumLines(pObj);
        _InvalidateTextSizeX(pObj);
      }
    }
    ;
  }
}




 
void MULTIEDIT_GetText(MULTIEDIT_HANDLE hObj, char* sDest, int MaxLen) {
  if (hObj) {
    MULTIEDIT_OBJ* pObj;
    ;
    pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
    if (pObj) {
      char* pText;
      int Len;
      pText  = (char*) GUI_ALLOC_h2p(pObj->hText);
      pText += GUI_UC__NumChars2NumBytes(pText, pObj->NumCharsPrompt);
      Len    = strlen(pText);
      if (Len > (MaxLen - 1)) {
        Len = MaxLen - 1;
      }
      memcpy(sDest, pText, Len);
      *(sDest + Len) = 0;
    }
    ;
  }
}




 
void MULTIEDIT_GetPrompt(MULTIEDIT_HANDLE hObj, char * sDest, int MaxLen) {
  if (hObj) {
    MULTIEDIT_OBJ * pObj;
    ;
    pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
    if (pObj) {
      char* sSource = (char*)GUI_ALLOC_h2p(pObj->hText);
      int Len = GUI_UC__NumChars2NumBytes(sSource, pObj->NumCharsPrompt);
      if (Len > (MaxLen - 1)) {
        Len = MaxLen - 1;
      }
      memcpy(sDest, sSource, Len);
      *(sDest + Len) = 0;
    }
    ;
  }
}




 
void MULTIEDIT_SetWrapWord(MULTIEDIT_HANDLE hObj) {
  _SetWrapMode(hObj, GUI_WRAPMODE_WORD);
}




 
void MULTIEDIT_SetWrapChar(MULTIEDIT_HANDLE hObj) {
  _SetWrapMode(hObj, GUI_WRAPMODE_CHAR);
}




 
void MULTIEDIT_SetWrapNone(MULTIEDIT_HANDLE hObj) {
  _SetWrapMode(hObj, GUI_WRAPMODE_NONE);
}




 
void MULTIEDIT_SetInsertMode(MULTIEDIT_HANDLE hObj, int OnOff) {
  _SetFlag(hObj, OnOff, (1 << 2));
}




 
void MULTIEDIT_SetReadOnly(MULTIEDIT_HANDLE hObj, int OnOff) {
  _SetFlag(hObj, OnOff, (1 << 0));
}




 
void MULTIEDIT_SetPasswordMode(MULTIEDIT_HANDLE hObj, int OnOff) {
  if (hObj) {
    MULTIEDIT_OBJ* pObj;
    ;
    pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
    _SetFlag(hObj, OnOff, (1 << 5));
    _InvalidateCursorXY(pObj);
    _InvalidateNumLines(pObj);
    _InvalidateTextSizeX(pObj);
    ;
  }
}




 
void MULTIEDIT_SetAutoScrollV(MULTIEDIT_HANDLE hObj, int OnOff) {
  _SetFlag(hObj, OnOff, (1 << 3));
}




 
void MULTIEDIT_SetAutoScrollH(MULTIEDIT_HANDLE hObj, int OnOff) {
  _SetFlag(hObj, OnOff, (1 << 4));
}




 
void MULTIEDIT_SetHBorder(MULTIEDIT_HANDLE hObj, unsigned HBorder) {
  if (hObj) {
    MULTIEDIT_OBJ* pObj;
    ;
    pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
    if ((unsigned)pObj->HBorder != HBorder) {
      pObj->HBorder = HBorder;
      _Invalidate(hObj);
    }
    ;
  }
}




 
void MULTIEDIT_SetFont(MULTIEDIT_HANDLE hObj, const GUI_FONT  * pFont) {
  if (hObj) {
    MULTIEDIT_OBJ* pObj;
    ;
    pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
    if (pObj->pFont != pFont) {
      pObj->pFont = pFont;
      _InvalidateTextArea(hObj);
      _InvalidateCursorXY(pObj);
      _InvalidateNumLines(pObj);
      _InvalidateTextSizeX(pObj);
    }
    ;
  }
}




 
void MULTIEDIT_SetBkColor(MULTIEDIT_HANDLE hObj, unsigned Index, GUI_COLOR color) {
  if (hObj && (Index < 2)) {
    MULTIEDIT_OBJ* pObj;
    ;
    pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
    pObj->aBkColor[Index] = color;
    _InvalidateTextArea(hObj);
    ;
  }
}




 
void MULTIEDIT_SetCursorOffset(MULTIEDIT_HANDLE hObj, int Offset) {
  if (hObj) {
    MULTIEDIT_OBJ* pObj;
    ;
    pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
    _SetCursorPos(hObj, pObj, Offset);
    WM_InvalidateWindow(hObj);
    ;
  }
}




 
void MULTIEDIT_SetTextColor(MULTIEDIT_HANDLE hObj, unsigned Index, GUI_COLOR color) {
  if (hObj && (Index < 2)) {
    MULTIEDIT_OBJ* pObj;
    ;
    pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
    pObj->aColor[Index] = color;
    WM_InvalidateWindow(hObj);
    ;
  }
}




 
void MULTIEDIT_SetPrompt(MULTIEDIT_HANDLE hObj, const char* pPrompt) {
  if (hObj) {
    MULTIEDIT_OBJ* pObj;
    int NumCharsNew = 0, NumCharsOld = 0;
    int NumBytesNew = 0, NumBytesOld = 0;
    char* pText;
    ;
    pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
    if (pObj->hText) {
      pText = (char*) GUI_ALLOC_h2p(pObj->hText);
      NumCharsOld = pObj->NumCharsPrompt;
      NumBytesOld = GUI_UC__NumChars2NumBytes(pText, NumCharsOld);
    }
    if (pPrompt) {
      NumCharsNew = GUI__GetNumChars(pPrompt);
      NumBytesNew = GUI_UC__NumChars2NumBytes(pPrompt, NumCharsNew);
    }
    if (_IsCharsAvailable(pObj, NumCharsNew - NumCharsOld)) {
      if (_IsSpaceInBuffer(pObj, NumBytesNew - NumBytesOld)) {
        pText = (char*) GUI_ALLOC_h2p(pObj->hText);
        memmove(pText + NumBytesNew, pText + NumBytesOld, strlen(pText + NumBytesOld) + 1);
        if (pPrompt) {
          memcpy(pText, pPrompt, NumBytesNew);
        }
        pObj->NumCharsPrompt = NumCharsNew;
        _SetCursorPos(hObj, pObj, NumCharsNew);
        _InvalidateTextArea(hObj);
        _InvalidateNumChars(pObj);
        _InvalidateNumLines(pObj);
        _InvalidateTextSizeX(pObj);
      }
    }
    ;
  }
}




 
void MULTIEDIT_SetBufferSize(MULTIEDIT_HANDLE hObj, int BufferSize) {
  if (hObj) {
    MULTIEDIT_OBJ* pObj;
    signed short hText;
    ;
    pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
    if ((hText = GUI_ALLOC_AllocZero(BufferSize)) == 0) {
      ;
    } else {
      GUI_ALLOC_FreePtr(&pObj->hText);
      pObj->hText          = hText;
      pObj->BufferSize     = BufferSize;
      pObj->NumCharsPrompt = 0;
      _SetCursorPos(hObj, pObj, 0);
      _InvalidateNumChars(pObj);
      _InvalidateCursorXY(pObj);
      _InvalidateNumLines(pObj);
      _InvalidateTextSizeX(pObj);
    }
    _InvalidateTextArea(hObj);
    ;
  }
}




 
void MULTIEDIT_SetMaxNumChars(MULTIEDIT_HANDLE hObj, unsigned MaxNumChars) {
  if (hObj) {
    MULTIEDIT_OBJ* pObj;
    ;
    pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
    pObj->MaxNumChars = MaxNumChars;
    if (MaxNumChars < (unsigned)pObj->NumCharsPrompt) {
      pObj->NumCharsPrompt = MaxNumChars;
    }
    if (pObj->hText && MaxNumChars) {
      char* pText;
      int Offset;
      pText = (char*) GUI_ALLOC_h2p(pObj->hText);
      Offset = GUI_UC__NumChars2NumBytes(pText, MaxNumChars);
      if (Offset < pObj->BufferSize) {
        pText += Offset;
        *pText = 0;
        _SetCursorPos(hObj, pObj, Offset);
        _InvalidateTextArea(hObj);
        _InvalidateNumChars(pObj);
      }
    }
    ;
  }
}









 
int MULTIEDIT_GetTextSize(MULTIEDIT_HANDLE hObj) {
  int r = 0;
  if (hObj) {
    MULTIEDIT_OBJ* pObj;
    ;
    pObj = (MULTIEDIT_OBJ*) ((WM_Obj*)GUI_ALLOC_h2p(hObj));
    if (pObj->hText) {
      const char* s;
      s = (const char*)GUI_ALLOC_h2p(pObj->hText);
      s += GUI_UC__NumChars2NumBytes(s, pObj->NumCharsPrompt);
      r = 1 + strlen(s);
    }
    ;
  }
  return r;
}


