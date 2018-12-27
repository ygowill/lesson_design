#line 1 "..\\code\\Calculator\\fpconv.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"
 






 





#line 25 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdbool.h"



#line 2 "..\\code\\Calculator\\fpconv.c"
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



 

#line 3 "..\\code\\Calculator\\fpconv.c"

#line 1 "..\\code\\Calculator\\fpconv.h"


























 

int fpconv_dtoa(double fp, char dest[24]);



 
#line 5 "..\\code\\Calculator\\fpconv.c"
#line 1 "..\\code\\Calculator\\powers.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 2 "..\\code\\Calculator\\powers.h"









typedef struct Fp {
    uint64_t frac;
    int exp;
} Fp;

static Fp powers_ten[] = {
    { 18054884314459144840U, -1220 }, { 13451937075301367670U, -1193 },
    { 10022474136428063862U, -1166 }, { 14934650266808366570U, -1140 },
    { 11127181549972568877U, -1113 }, { 16580792590934885855U, -1087 },
    { 12353653155963782858U, -1060 }, { 18408377700990114895U, -1034 },
    { 13715310171984221708U, -1007 }, { 10218702384817765436U, -980 },
    { 15227053142812498563U, -954 },  { 11345038669416679861U, -927 },
    { 16905424996341287883U, -901 },  { 12595523146049147757U, -874 },
    { 9384396036005875287U,  -847 },  { 13983839803942852151U, -821 },
    { 10418772551374772303U, -794 },  { 15525180923007089351U, -768 },
    { 11567161174868858868U, -741 },  { 17236413322193710309U, -715 },
    { 12842128665889583758U, -688 },  { 9568131466127621947U,  -661 },
    { 14257626930069360058U, -635 },  { 10622759856335341974U, -608 },
    { 15829145694278690180U, -582 },  { 11793632577567316726U, -555 },
    { 17573882009934360870U, -529 },  { 13093562431584567480U, -502 },
    { 9755464219737475723U,  -475 },  { 14536774485912137811U, -449 },
    { 10830740992659433045U, -422 },  { 16139061738043178685U, -396 },
    { 12024538023802026127U, -369 },  { 17917957937422433684U, -343 },
    { 13349918974505688015U, -316 },  { 9946464728195732843U,  -289 },
    { 14821387422376473014U, -263 },  { 11042794154864902060U, -236 },
    { 16455045573212060422U, -210 },  { 12259964326927110867U, -183 },
    { 18268770466636286478U, -157 },  { 13611294676837538539U, -130 },
    { 10141204801825835212U, -103 },  { 15111572745182864684U, -77 },
    { 11258999068426240000U, -50 },   { 16777216000000000000U, -24 },
    { 12500000000000000000U,   3 },   { 9313225746154785156U,   30 },
    { 13877787807814456755U,  56 },   { 10339757656912845936U,  83 },
    { 15407439555097886824U, 109 },   { 11479437019748901445U, 136 },
    { 17105694144590052135U, 162 },   { 12744735289059618216U, 189 },
    { 9495567745759798747U,  216 },   { 14149498560666738074U, 242 },
    { 10542197943230523224U, 269 },   { 15709099088952724970U, 295 },
    { 11704190886730495818U, 322 },   { 17440603504673385349U, 348 },
    { 12994262207056124023U, 375 },   { 9681479787123295682U,  402 },
    { 14426529090290212157U, 428 },   { 10748601772107342003U, 455 },
    { 16016664761464807395U, 481 },   { 11933345169920330789U, 508 },
    { 17782069995880619868U, 534 },   { 13248674568444952270U, 561 },
    { 9871031767461413346U,  588 },   { 14708983551653345445U, 614 },
    { 10959046745042015199U, 641 },   { 16330252207878254650U, 667 },
    { 12166986024289022870U, 694 },   { 18130221999122236476U, 720 },
    { 13508068024458167312U, 747 },   { 10064294952495520794U, 774 },
    { 14996968138956309548U, 800 },   { 11173611982879273257U, 827 },
    { 16649979327439178909U, 853 },   { 12405201291620119593U, 880 },
    { 9242595204427927429U,  907 },   { 13772540099066387757U, 933 },
    { 10261342003245940623U, 960 },   { 15290591125556738113U, 986 },
    { 11392378155556871081U, 1013 },  { 16975966327722178521U, 1039 },
    { 12648080533535911531U, 1066 }
};

static Fp find_cachedpow10(int exp, int* k)
{
    const double one_log_ten = 0.30102999566398114;

    int approx = -(exp + 87) * one_log_ten;
    int idx = (approx - -348) / 8;

    while(1) {
        int current = exp + powers_ten[idx].exp + 64;

        if(current < -60) {
            idx++;
            continue;
        }

        if(current > -32) {
            idx--;
            continue;
        }

        *k = (-348 + idx * 8);

        return powers_ten[idx];
    }
}
#line 6 "..\\code\\Calculator\\fpconv.c"










static uint64_t tens[] = {
    10000000000000000000U, 1000000000000000000U, 100000000000000000U,
    10000000000000000U, 1000000000000000U, 100000000000000U,
    10000000000000U, 1000000000000U, 100000000000U,
    10000000000U, 1000000000U, 100000000U,
    10000000U, 1000000U, 100000U,
    10000U, 1000U, 100U,
    10U, 1U
};

static uint64_t get_dbits(const double d)
{
    union {
        double   dbl;
        uint64_t i;
    } dbl_bits;
		
		dbl_bits.dbl = d;

    return dbl_bits.i;
}

static Fp build_fp(double d)
{
    uint64_t bits = get_dbits(d);

    Fp fp;
    fp.frac = bits & 0x000FFFFFFFFFFFFFU;
    fp.exp = (bits & 0x7FF0000000000000U) >> 52;

    if(fp.exp) {
        fp.frac += 0x0010000000000000U;
        fp.exp -= (1023 + 52);

    } else {
        fp.exp = -(1023 + 52) + 1;
    }

    return fp;
}

static void normalize(Fp* fp)
{
		int shift;
    while ((fp->frac & 0x0010000000000000U) == 0) {
        fp->frac <<= 1;
        fp->exp--;
    }

    shift = 64 - 52 - 1;
    fp->frac <<= shift;
    fp->exp -= shift;
}

static void get_normalized_boundaries(Fp* fp, Fp* lower, Fp* upper)
{
		int u_shift;
		int l_shift;
		upper->frac = (fp->frac << 1) + 1;
    upper->exp  = fp->exp - 1;

    while ((upper->frac & (0x0010000000000000U << 1)) == 0) {
        upper->frac <<= 1;
        upper->exp--;
    }

    u_shift = 64 - 52 - 2;

    upper->frac <<= u_shift;
    upper->exp = upper->exp - u_shift;


    l_shift = fp->frac == 0x0010000000000000U ? 2 : 1;

    lower->frac = (fp->frac << l_shift) - 1;
    lower->exp = fp->exp - l_shift;


    lower->frac <<= lower->exp - upper->exp;
    lower->exp = upper->exp;
}

static Fp multiply(Fp* a, Fp* b)
{
		Fp fp;
    const uint64_t lomask = 0x00000000FFFFFFFF;

    const uint64_t ah_bl = (a->frac >> 32)    * (b->frac & lomask);
    const uint64_t al_bh = (a->frac & lomask) * (b->frac >> 32);
    const uint64_t al_bl = (a->frac & lomask) * (b->frac & lomask);
    const uint64_t ah_bh = (a->frac >> 32)    * (b->frac >> 32);

    uint64_t tmp = (ah_bl & lomask) + (al_bh & lomask) + (al_bl >> 32); 
     
    tmp += 1U << 31;
		
		fp.frac = ah_bh + (ah_bl >> 32) + (al_bh >> 32) + (tmp >> 32);
		fp.exp = a->exp + b->exp + 64;

    return fp;
}

static void round_digit(char* digits, int ndigits, uint64_t delta, uint64_t rem, uint64_t kappa, uint64_t frac)
{
    while (rem < frac && delta - rem >= kappa &&
           (rem + kappa < frac || frac - rem > rem + kappa - frac)) {

        digits[ndigits - 1]--;
        rem += kappa;
    }
}

static int generate_digits(Fp* fp, Fp* upper, Fp* lower, char* digits, int* K)
{
		Fp one;
		int idx = 0, kappa = 10;
		uint64_t* divp;
		uint64_t part1;
		uint64_t part2;
		uint64_t* unit;
	
    uint64_t wfrac = upper->frac - fp->frac;
    uint64_t delta = upper->frac - lower->frac;

    one.frac = 1ULL << -upper->exp;
    one.exp  = upper->exp;

    part1 = upper->frac >> -one.exp;
    part2 = upper->frac & (one.frac - 1);

     
    for(divp = tens + 10; kappa > 0; divp++) {
				uint64_t tmp;
        uint64_t div = *divp;
        unsigned digit = part1 / div;

        if (digit || idx) {
            digits[idx++] = digit + '0';
        }

        part1 -= digit * div;
        kappa--;

        tmp = (part1 <<-one.exp) + part2;
        if (tmp <= delta) {
            *K += kappa;
            round_digit(digits, idx, delta, tmp, div << -one.exp, wfrac);

            return idx;
        }
    }

     
    unit = tens + 18;

    while(1) {
				unsigned digit;
        part2 *= 10;
        delta *= 10;
        kappa--;

        digit = part2 >> -one.exp;
        if (digit || idx) {
            digits[idx++] = digit + '0';
        }

        part2 &= one.frac - 1;
        if (part2 < delta) {
            *K += kappa;
            round_digit(digits, idx, delta, part2, one.frac, wfrac * *unit);

            return idx;
        }

        unit--;
    }
}

static int grisu2(double d, char* digits, int* K)
{
		Fp lower, upper;
		int k;
		Fp cp;
    Fp w = build_fp(d);

    get_normalized_boundaries(&w, &lower, &upper);

    normalize(&w);

    
    cp = find_cachedpow10(upper.exp, &k);

    w     = multiply(&w,     &cp);
    upper = multiply(&upper, &cp);
    lower = multiply(&lower, &cp);

    lower.frac++;
    upper.frac--;

    *K = -k;

    return generate_digits(&w, &upper, &lower, digits, K);
}

static int emit_digits(char* digits, int ndigits, char* dest, int K, _Bool neg)
{
		int idx;
		char sign;
		int cent;
    int exp = ((K + ndigits - 1) < 0 ? -(K + ndigits - 1) : (K + ndigits - 1));

     
    if(K >= 0 && (exp < (ndigits + 7))) {
        memcpy(dest, digits, ndigits);
        memset(dest + ndigits, '0', K);

        return ndigits + K;
    }

     
    if(K < 0 && (K > -7 || exp < 4)) {
        int offset = ndigits - ((K) < 0 ? -(K) : (K));
         
        if(offset <= 0) {
            offset = -offset;
            dest[0] = '0';
            dest[1] = '.';
            memset(dest + 2, '0', offset);
            memcpy(dest + offset + 2, digits, ndigits);

            return ndigits + 2 + offset;

         
        } else {
            memcpy(dest, digits, offset);
            dest[offset] = '.';
            memcpy(dest + offset + 1, digits + offset, ndigits - offset);

            return ndigits + 1;
        }
    }

     
    ndigits = ((ndigits) < (18 - neg) ? (ndigits) : (18 - neg));

    idx = 0;
    dest[idx++] = digits[0];

    if(ndigits > 1) {
        dest[idx++] = '.';
        memcpy(dest + idx, digits + 1, ndigits - 1);
        idx += ndigits - 1;
    }

    dest[idx++] = 'e';

    sign = K + ndigits - 1 < 0 ? '-' : '+';
    dest[idx++] = sign;

    cent = 0;

    if(exp > 99) {
        cent = exp / 100;
        dest[idx++] = cent + '0';
        exp -= cent * 100;
    }
    if(exp > 9) {
        int dec = exp / 10;
        dest[idx++] = dec + '0';
        exp -= dec * 10;

    } else if(cent) {
        dest[idx++] = '0';
    }

    dest[idx++] = exp % 10 + '0';

    return idx;
}

static int filter_special(double fp, char* dest)
{
		uint64_t bits;
		_Bool nan;
    if(fp == 0.0) {
        dest[0] = '0';
        return 1;
    }

    bits = get_dbits(fp);

    nan = (bits & 0x7FF0000000000000U) == 0x7FF0000000000000U;

    if(!nan) {
        return 0;
    }

    if(bits & 0x000FFFFFFFFFFFFFU) {
        dest[0] = 'n'; dest[1] = 'a'; dest[2] = 'n';

    } else {
        dest[0] = 'i'; dest[1] = 'n'; dest[2] = 'f';
    }

    return 3;
}

int fpconv_dtoa(double d, char dest[24])
{
    char digits[18];
		int str_len;
		int K;
		int ndigits;
		int spec;
    _Bool neg = 0;
		str_len = 0;

    if(get_dbits(d) & 0x8000000000000000U) {
        dest[0] = '-';
        str_len++;
        neg = 1;
    }

    spec = filter_special(d, dest + str_len);

    if(spec) {
        return str_len + spec;
    }

    K = 0;
    ndigits = grisu2(d, digits, &K);

    str_len += emit_digits(digits, ndigits, dest + str_len, K, neg);

    return str_len;
}
