# 1 "mcc_generated_files/system/src/pins.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 295 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "mcc_generated_files/system/src/pins.c" 2
# 35 "mcc_generated_files/system/src/pins.c"
# 1 "mcc_generated_files/system/src/../pins.h" 1
# 38 "mcc_generated_files/system/src/../pins.h"
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 1 3
# 18 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/xc8debug.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/musl_xc8.h" 1 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 2 3





# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/features.h" 1 3
# 11 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 2 3
# 21 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 1 3
# 24 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef long int wchar_t;
# 128 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned size_t;
# 174 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef __int24 int24_t;
# 210 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 22 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 2 3

int atoi (const char *);
long atol (const char *);

long long atoll (const char *);

double atof (const char *);


float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);

long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);


unsigned long __strtoxl(const char * s, char ** endptr, int base, char is_signed);

unsigned long long __strtoxll(const char * s, char ** endptr, int base, char is_signed);
# 55 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdlib.h" 3
int rand (void);
void srand (unsigned);

void *malloc (size_t);
void *calloc (size_t, size_t);
void *realloc (void *, size_t);
void free (void *);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));







__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);

long long llabs (long long);


typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;

typedef struct { long long quot, rem; } lldiv_t;


div_t div (int, int);
ldiv_t ldiv (long, long);

lldiv_t lldiv (long long, long long);


typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);
# 5 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/xc8debug.h" 2 3







#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 24 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 2 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/builtins.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 1 3
# 26 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 1 3
# 133 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned __int24 uintptr_t;
# 148 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef __int24 intptr_t;
# 164 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;
# 179 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef long int32_t;





typedef long long int64_t;
# 194 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;
# 215 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 235 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 27 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 2 3

typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;
typedef int24_t int_fast24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;
typedef uint24_t uint_fast24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 148 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/stdint.h" 1 3
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 149 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdint.h" 2 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/builtins.h" 2 3


#pragma intrinsic(__nop)
extern void __nop(void);

#pragma intrinsic(__nopf000)
extern void __nopf000(void);
#pragma intrinsic(__nopffff)
extern void __nopffff(void);
#pragma intrinsic(__nop0000)
extern void __nop0000(void);



#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(uint32_t);

#pragma intrinsic(_delay3)
extern __attribute__((nonreentrant)) void _delay3(uint8_t);
# 25 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 2 3








# 1 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include/pic18.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 1 3
# 5 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include/pic18.h" 2 3
# 1 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include/pic18_chip_select.h" 1 3
# 210 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include/pic18_chip_select.h" 3
# 1 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 1 3
# 36 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char SSPMSK __attribute__((address(0xF77)));

__asm("SSPMSK equ 0F77h");


typedef union {
    struct {
        unsigned int MSK0 :1;
        unsigned int MSK1 :1;
        unsigned int MSK2 :1;
        unsigned int MSK3 :1;
        unsigned int MSK4 :1;
        unsigned int MSK5 :1;
        unsigned int MSK6 :1;
        unsigned int MSK7 :1;
    };
    struct {
        unsigned int MSK :8;
    };
} SSPMSKbits_t;
extern volatile SSPMSKbits_t SSPMSKbits __attribute__((address(0xF77)));
# 106 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char SLRCON __attribute__((address(0xF78)));

__asm("SLRCON equ 0F78h");


typedef union {
    struct {
        unsigned int SLRA :1;
        unsigned int SLRB :1;
        unsigned int SLRC :1;
        unsigned int SLRD :1;
        unsigned int SLRE :1;
    };
} SLRCONbits_t;
extern volatile SLRCONbits_t SLRCONbits __attribute__((address(0xF78)));
# 150 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char CM2CON1 __attribute__((address(0xF79)));

__asm("CM2CON1 equ 0F79h");


typedef union {
    struct {
        unsigned int :4;
        unsigned int C2RSEL :1;
        unsigned int C1RSEL :1;
        unsigned int MC2OUT :1;
        unsigned int MC1OUT :1;
    };
} CM2CON1bits_t;
extern volatile CM2CON1bits_t CM2CON1bits __attribute__((address(0xF79)));
# 189 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char CM2CON0 __attribute__((address(0xF7A)));

__asm("CM2CON0 equ 0F7Ah");


typedef union {
    struct {
        unsigned int C2CH :2;
        unsigned int C2R :1;
        unsigned int C2SP :1;
        unsigned int C2POL :1;
        unsigned int C2OE :1;
        unsigned int C2OUT :1;
        unsigned int C2ON :1;
    };
    struct {
        unsigned int C2CH0 :1;
        unsigned int C2CH1 :1;
    };
} CM2CON0bits_t;
extern volatile CM2CON0bits_t CM2CON0bits __attribute__((address(0xF7A)));
# 259 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char CM1CON0 __attribute__((address(0xF7B)));

__asm("CM1CON0 equ 0F7Bh");


typedef union {
    struct {
        unsigned int C1CH :2;
        unsigned int C1R :1;
        unsigned int C1SP :1;
        unsigned int C1POL :1;
        unsigned int C1OE :1;
        unsigned int C1OUT :1;
        unsigned int C1ON :1;
    };
    struct {
        unsigned int C1CH0 :1;
        unsigned int C1CH1 :1;
    };
} CM1CON0bits_t;
extern volatile CM1CON0bits_t CM1CON0bits __attribute__((address(0xF7B)));
# 329 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char WPUB __attribute__((address(0xF7C)));

__asm("WPUB equ 0F7Ch");


typedef union {
    struct {
        unsigned int WPUB0 :1;
        unsigned int WPUB1 :1;
        unsigned int WPUB2 :1;
        unsigned int WPUB3 :1;
        unsigned int WPUB4 :1;
        unsigned int WPUB5 :1;
        unsigned int WPUB6 :1;
        unsigned int WPUB7 :1;
    };
} WPUBbits_t;
extern volatile WPUBbits_t WPUBbits __attribute__((address(0xF7C)));
# 391 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char IOCB __attribute__((address(0xF7D)));

__asm("IOCB equ 0F7Dh");


typedef union {
    struct {
        unsigned int :4;
        unsigned int IOCB4 :1;
        unsigned int IOCB5 :1;
        unsigned int IOCB6 :1;
        unsigned int IOCB7 :1;
    };
} IOCBbits_t;
extern volatile IOCBbits_t IOCBbits __attribute__((address(0xF7D)));
# 430 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char ANSEL __attribute__((address(0xF7E)));

__asm("ANSEL equ 0F7Eh");


typedef union {
    struct {
        unsigned int ANS0 :1;
        unsigned int ANS1 :1;
        unsigned int ANS2 :1;
        unsigned int ANS3 :1;
        unsigned int ANS4 :1;
        unsigned int ANS5 :1;
        unsigned int ANS6 :1;
        unsigned int ANS7 :1;
    };
} ANSELbits_t;
extern volatile ANSELbits_t ANSELbits __attribute__((address(0xF7E)));
# 492 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char ANSELH __attribute__((address(0xF7F)));

__asm("ANSELH equ 0F7Fh");


typedef union {
    struct {
        unsigned int ANS8 :1;
        unsigned int ANS9 :1;
        unsigned int ANS10 :1;
        unsigned int ANS11 :1;
        unsigned int ANS12 :1;
    };
} ANSELHbits_t;
extern volatile ANSELHbits_t ANSELHbits __attribute__((address(0xF7F)));
# 536 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char PORTA __attribute__((address(0xF80)));

__asm("PORTA equ 0F80h");


typedef union {
    struct {
        unsigned int RA0 :1;
        unsigned int RA1 :1;
        unsigned int RA2 :1;
        unsigned int RA3 :1;
        unsigned int RA4 :1;
        unsigned int RA5 :1;
        unsigned int RA6 :1;
        unsigned int RA7 :1;
    };
    struct {
        unsigned int AN0 :1;
        unsigned int AN1 :1;
        unsigned int AN2 :1;
        unsigned int AN3 :1;
        unsigned int :1;
        unsigned int AN4 :1;
    };
    struct {
        unsigned int C12IN0M :1;
        unsigned int C12IN1M :1;
        unsigned int C2INP :1;
        unsigned int C1INP :1;
        unsigned int C1OUT :1;
        unsigned int C2OUT :1;
    };
    struct {
        unsigned int C12IN0N :1;
        unsigned int C12IN1N :1;
        unsigned int VREFM :1;
        unsigned int VREFP :1;
        unsigned int T0CKI :1;
        unsigned int SS :1;
    };
    struct {
        unsigned int :5;
        unsigned int NOT_SS :1;
    };
    struct {
        unsigned int :2;
        unsigned int VREFN :1;
        unsigned int :2;
        unsigned int nSS :1;
    };
    struct {
        unsigned int :2;
        unsigned int CVREF :1;
        unsigned int :2;
        unsigned int LVDIN :1;
    };
    struct {
        unsigned int :5;
        unsigned int HLVDIN :1;
    };
    struct {
        unsigned int ULPWUIN :1;
        unsigned int :6;
        unsigned int RJPU :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0xF80)));
# 772 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char PORTB __attribute__((address(0xF81)));

__asm("PORTB equ 0F81h");


typedef union {
    struct {
        unsigned int RB0 :1;
        unsigned int RB1 :1;
        unsigned int RB2 :1;
        unsigned int RB3 :1;
        unsigned int RB4 :1;
        unsigned int RB5 :1;
        unsigned int RB6 :1;
        unsigned int RB7 :1;
    };
    struct {
        unsigned int INT0 :1;
        unsigned int INT1 :1;
        unsigned int INT2 :1;
        unsigned int CCP2 :1;
        unsigned int KBI0 :1;
        unsigned int KBI1 :1;
        unsigned int KBI2 :1;
        unsigned int KBI3 :1;
    };
    struct {
        unsigned int AN12 :1;
        unsigned int AN10 :1;
        unsigned int AN8 :1;
        unsigned int AN9 :1;
        unsigned int AN11 :1;
        unsigned int PGM :1;
        unsigned int PGC :1;
        unsigned int PGD :1;
    };
    struct {
        unsigned int FLT0 :1;
        unsigned int C12IN3M :1;
        unsigned int :1;
        unsigned int C12IN2M :1;
    };
    struct {
        unsigned int :1;
        unsigned int C12IN3N :1;
        unsigned int :1;
        unsigned int C12IN2N :1;
    };
    struct {
        unsigned int :3;
        unsigned int CCP2_PA2 :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0xF81)));
# 980 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char PORTC __attribute__((address(0xF82)));

__asm("PORTC equ 0F82h");


typedef union {
    struct {
        unsigned int RC0 :1;
        unsigned int RC1 :1;
        unsigned int RC2 :1;
        unsigned int RC3 :1;
        unsigned int RC4 :1;
        unsigned int RC5 :1;
        unsigned int RC6 :1;
        unsigned int RC7 :1;
    };
    struct {
        unsigned int T1OSO :1;
        unsigned int T1OSI :1;
        unsigned int CCP1 :1;
        unsigned int SCK :1;
        unsigned int SDI :1;
        unsigned int SDO :1;
        unsigned int TX :1;
        unsigned int RX :1;
    };
    struct {
        unsigned int T13CKI :1;
        unsigned int CCP2 :1;
        unsigned int P1A :1;
        unsigned int SCL :1;
        unsigned int SDA :1;
        unsigned int :1;
        unsigned int CK :1;
        unsigned int DT :1;
    };
    struct {
        unsigned int T1CKI :1;
    };
    struct {
        unsigned int T3CKI :1;
    };
    struct {
        unsigned int :1;
        unsigned int PA2 :1;
        unsigned int PA1 :1;
    };
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __attribute__((address(0xF82)));
# 1168 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char PORTD __attribute__((address(0xF83)));

__asm("PORTD equ 0F83h");


typedef union {
    struct {
        unsigned int RD0 :1;
        unsigned int RD1 :1;
        unsigned int RD2 :1;
        unsigned int RD3 :1;
        unsigned int RD4 :1;
        unsigned int RD5 :1;
        unsigned int RD6 :1;
        unsigned int RD7 :1;
    };
    struct {
        unsigned int PSP0 :1;
        unsigned int PSP1 :1;
        unsigned int PSP2 :1;
        unsigned int PSP3 :1;
        unsigned int PSP4 :1;
        unsigned int PSP5 :1;
        unsigned int PSP6 :1;
        unsigned int PSP7 :1;
    };
    struct {
        unsigned int :5;
        unsigned int P1B :1;
        unsigned int P1C :1;
        unsigned int P1D :1;
    };
    struct {
        unsigned int :7;
        unsigned int SS2 :1;
    };
} PORTDbits_t;
extern volatile PORTDbits_t PORTDbits __attribute__((address(0xF83)));
# 1310 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char PORTE __attribute__((address(0xF84)));

__asm("PORTE equ 0F84h");


typedef union {
    struct {
        unsigned int RE0 :1;
        unsigned int RE1 :1;
        unsigned int RE2 :1;
        unsigned int RE3 :1;
    };
    struct {
        unsigned int RD :1;
        unsigned int WR :1;
        unsigned int CS :1;
        unsigned int MCLR :1;
    };
    struct {
        unsigned int NOT_RD :1;
    };
    struct {
        unsigned int :1;
        unsigned int NOT_WR :1;
    };
    struct {
        unsigned int :2;
        unsigned int NOT_CS :1;
    };
    struct {
        unsigned int :3;
        unsigned int NOT_MCLR :1;
    };
    struct {
        unsigned int nRD :1;
        unsigned int nWR :1;
        unsigned int nCS :1;
        unsigned int nMCLR :1;
    };
    struct {
        unsigned int :3;
        unsigned int VPP :1;
    };
    struct {
        unsigned int AN5 :1;
        unsigned int AN6 :1;
        unsigned int AN7 :1;
    };
    struct {
        unsigned int PD2 :1;
        unsigned int PC2 :1;
        unsigned int CCP10 :1;
        unsigned int CCP9E :1;
    };
    struct {
        unsigned int RDE :1;
        unsigned int WRE :1;
        unsigned int PB2 :1;
        unsigned int PC3E :1;
    };
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __attribute__((address(0xF84)));
# 1516 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char LATA __attribute__((address(0xF89)));

__asm("LATA equ 0F89h");


typedef union {
    struct {
        unsigned int LATA0 :1;
        unsigned int LATA1 :1;
        unsigned int LATA2 :1;
        unsigned int LATA3 :1;
        unsigned int LATA4 :1;
        unsigned int LATA5 :1;
        unsigned int LATA6 :1;
        unsigned int LATA7 :1;
    };
    struct {
        unsigned int LA0 :1;
        unsigned int LA1 :1;
        unsigned int LA2 :1;
        unsigned int LA3 :1;
        unsigned int LA4 :1;
        unsigned int LA5 :1;
        unsigned int LA6 :1;
        unsigned int LA7 :1;
    };
} LATAbits_t;
extern volatile LATAbits_t LATAbits __attribute__((address(0xF89)));
# 1628 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char LATB __attribute__((address(0xF8A)));

__asm("LATB equ 0F8Ah");


typedef union {
    struct {
        unsigned int LATB0 :1;
        unsigned int LATB1 :1;
        unsigned int LATB2 :1;
        unsigned int LATB3 :1;
        unsigned int LATB4 :1;
        unsigned int LATB5 :1;
        unsigned int LATB6 :1;
        unsigned int LATB7 :1;
    };
    struct {
        unsigned int LB0 :1;
        unsigned int LB1 :1;
        unsigned int LB2 :1;
        unsigned int LB3 :1;
        unsigned int LB4 :1;
        unsigned int LB5 :1;
        unsigned int LB6 :1;
        unsigned int LB7 :1;
    };
} LATBbits_t;
extern volatile LATBbits_t LATBbits __attribute__((address(0xF8A)));
# 1740 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char LATC __attribute__((address(0xF8B)));

__asm("LATC equ 0F8Bh");


typedef union {
    struct {
        unsigned int LATC0 :1;
        unsigned int LATC1 :1;
        unsigned int LATC2 :1;
        unsigned int LATC3 :1;
        unsigned int LATC4 :1;
        unsigned int LATC5 :1;
        unsigned int LATC6 :1;
        unsigned int LATC7 :1;
    };
    struct {
        unsigned int LC0 :1;
        unsigned int LC1 :1;
        unsigned int LC2 :1;
        unsigned int LC3 :1;
        unsigned int LC4 :1;
        unsigned int LC5 :1;
        unsigned int LC6 :1;
        unsigned int LC7 :1;
    };
} LATCbits_t;
extern volatile LATCbits_t LATCbits __attribute__((address(0xF8B)));
# 1852 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char LATD __attribute__((address(0xF8C)));

__asm("LATD equ 0F8Ch");


typedef union {
    struct {
        unsigned int LATD0 :1;
        unsigned int LATD1 :1;
        unsigned int LATD2 :1;
        unsigned int LATD3 :1;
        unsigned int LATD4 :1;
        unsigned int LATD5 :1;
        unsigned int LATD6 :1;
        unsigned int LATD7 :1;
    };
    struct {
        unsigned int LD0 :1;
        unsigned int LD1 :1;
        unsigned int LD2 :1;
        unsigned int LD3 :1;
        unsigned int LD4 :1;
        unsigned int LD5 :1;
        unsigned int LD6 :1;
        unsigned int LD7 :1;
    };
} LATDbits_t;
extern volatile LATDbits_t LATDbits __attribute__((address(0xF8C)));
# 1964 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char LATE __attribute__((address(0xF8D)));

__asm("LATE equ 0F8Dh");


typedef union {
    struct {
        unsigned int LATE0 :1;
        unsigned int LATE1 :1;
        unsigned int LATE2 :1;
    };
    struct {
        unsigned int LE0 :1;
        unsigned int LE1 :1;
        unsigned int LE2 :1;
    };
} LATEbits_t;
extern volatile LATEbits_t LATEbits __attribute__((address(0xF8D)));
# 2016 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char TRISA __attribute__((address(0xF92)));

__asm("TRISA equ 0F92h");


extern volatile unsigned char DDRA __attribute__((address(0xF92)));

__asm("DDRA equ 0F92h");


typedef union {
    struct {
        unsigned int TRISA0 :1;
        unsigned int TRISA1 :1;
        unsigned int TRISA2 :1;
        unsigned int TRISA3 :1;
        unsigned int TRISA4 :1;
        unsigned int TRISA5 :1;
        unsigned int TRISA6 :1;
        unsigned int TRISA7 :1;
    };
    struct {
        unsigned int RA0 :1;
        unsigned int RA1 :1;
        unsigned int RA2 :1;
        unsigned int RA3 :1;
        unsigned int RA4 :1;
        unsigned int RA5 :1;
        unsigned int RA6 :1;
        unsigned int RA7 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0xF92)));
# 2131 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
typedef union {
    struct {
        unsigned int TRISA0 :1;
        unsigned int TRISA1 :1;
        unsigned int TRISA2 :1;
        unsigned int TRISA3 :1;
        unsigned int TRISA4 :1;
        unsigned int TRISA5 :1;
        unsigned int TRISA6 :1;
        unsigned int TRISA7 :1;
    };
    struct {
        unsigned int RA0 :1;
        unsigned int RA1 :1;
        unsigned int RA2 :1;
        unsigned int RA3 :1;
        unsigned int RA4 :1;
        unsigned int RA5 :1;
        unsigned int RA6 :1;
        unsigned int RA7 :1;
    };
} DDRAbits_t;
extern volatile DDRAbits_t DDRAbits __attribute__((address(0xF92)));
# 2238 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char TRISB __attribute__((address(0xF93)));

__asm("TRISB equ 0F93h");


extern volatile unsigned char DDRB __attribute__((address(0xF93)));

__asm("DDRB equ 0F93h");


typedef union {
    struct {
        unsigned int TRISB0 :1;
        unsigned int TRISB1 :1;
        unsigned int TRISB2 :1;
        unsigned int TRISB3 :1;
        unsigned int TRISB4 :1;
        unsigned int TRISB5 :1;
        unsigned int TRISB6 :1;
        unsigned int TRISB7 :1;
    };
    struct {
        unsigned int RB0 :1;
        unsigned int RB1 :1;
        unsigned int RB2 :1;
        unsigned int RB3 :1;
        unsigned int RB4 :1;
        unsigned int RB5 :1;
        unsigned int RB6 :1;
        unsigned int RB7 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0xF93)));
# 2353 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
typedef union {
    struct {
        unsigned int TRISB0 :1;
        unsigned int TRISB1 :1;
        unsigned int TRISB2 :1;
        unsigned int TRISB3 :1;
        unsigned int TRISB4 :1;
        unsigned int TRISB5 :1;
        unsigned int TRISB6 :1;
        unsigned int TRISB7 :1;
    };
    struct {
        unsigned int RB0 :1;
        unsigned int RB1 :1;
        unsigned int RB2 :1;
        unsigned int RB3 :1;
        unsigned int RB4 :1;
        unsigned int RB5 :1;
        unsigned int RB6 :1;
        unsigned int RB7 :1;
    };
} DDRBbits_t;
extern volatile DDRBbits_t DDRBbits __attribute__((address(0xF93)));
# 2460 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char TRISC __attribute__((address(0xF94)));

__asm("TRISC equ 0F94h");


extern volatile unsigned char DDRC __attribute__((address(0xF94)));

__asm("DDRC equ 0F94h");


typedef union {
    struct {
        unsigned int TRISC0 :1;
        unsigned int TRISC1 :1;
        unsigned int TRISC2 :1;
        unsigned int TRISC3 :1;
        unsigned int TRISC4 :1;
        unsigned int TRISC5 :1;
        unsigned int TRISC6 :1;
        unsigned int TRISC7 :1;
    };
    struct {
        unsigned int RC0 :1;
        unsigned int RC1 :1;
        unsigned int RC2 :1;
        unsigned int RC3 :1;
        unsigned int RC4 :1;
        unsigned int RC5 :1;
        unsigned int RC6 :1;
        unsigned int RC7 :1;
    };
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __attribute__((address(0xF94)));
# 2575 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
typedef union {
    struct {
        unsigned int TRISC0 :1;
        unsigned int TRISC1 :1;
        unsigned int TRISC2 :1;
        unsigned int TRISC3 :1;
        unsigned int TRISC4 :1;
        unsigned int TRISC5 :1;
        unsigned int TRISC6 :1;
        unsigned int TRISC7 :1;
    };
    struct {
        unsigned int RC0 :1;
        unsigned int RC1 :1;
        unsigned int RC2 :1;
        unsigned int RC3 :1;
        unsigned int RC4 :1;
        unsigned int RC5 :1;
        unsigned int RC6 :1;
        unsigned int RC7 :1;
    };
} DDRCbits_t;
extern volatile DDRCbits_t DDRCbits __attribute__((address(0xF94)));
# 2682 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char TRISD __attribute__((address(0xF95)));

__asm("TRISD equ 0F95h");


extern volatile unsigned char DDRD __attribute__((address(0xF95)));

__asm("DDRD equ 0F95h");


typedef union {
    struct {
        unsigned int TRISD0 :1;
        unsigned int TRISD1 :1;
        unsigned int TRISD2 :1;
        unsigned int TRISD3 :1;
        unsigned int TRISD4 :1;
        unsigned int TRISD5 :1;
        unsigned int TRISD6 :1;
        unsigned int TRISD7 :1;
    };
    struct {
        unsigned int RD0 :1;
        unsigned int RD1 :1;
        unsigned int RD2 :1;
        unsigned int RD3 :1;
        unsigned int RD4 :1;
        unsigned int RD5 :1;
        unsigned int RD6 :1;
        unsigned int RD7 :1;
    };
} TRISDbits_t;
extern volatile TRISDbits_t TRISDbits __attribute__((address(0xF95)));
# 2797 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
typedef union {
    struct {
        unsigned int TRISD0 :1;
        unsigned int TRISD1 :1;
        unsigned int TRISD2 :1;
        unsigned int TRISD3 :1;
        unsigned int TRISD4 :1;
        unsigned int TRISD5 :1;
        unsigned int TRISD6 :1;
        unsigned int TRISD7 :1;
    };
    struct {
        unsigned int RD0 :1;
        unsigned int RD1 :1;
        unsigned int RD2 :1;
        unsigned int RD3 :1;
        unsigned int RD4 :1;
        unsigned int RD5 :1;
        unsigned int RD6 :1;
        unsigned int RD7 :1;
    };
} DDRDbits_t;
extern volatile DDRDbits_t DDRDbits __attribute__((address(0xF95)));
# 2904 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char TRISE __attribute__((address(0xF96)));

__asm("TRISE equ 0F96h");


extern volatile unsigned char DDRE __attribute__((address(0xF96)));

__asm("DDRE equ 0F96h");


typedef union {
    struct {
        unsigned int TRISE0 :1;
        unsigned int TRISE1 :1;
        unsigned int TRISE2 :1;
        unsigned int :1;
        unsigned int PSPMODE :1;
        unsigned int IBOV :1;
        unsigned int OBF :1;
        unsigned int IBF :1;
    };
    struct {
        unsigned int RE0 :1;
        unsigned int RE1 :1;
        unsigned int RE2 :1;
    };
} TRISEbits_t;
extern volatile TRISEbits_t TRISEbits __attribute__((address(0xF96)));
# 2984 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
typedef union {
    struct {
        unsigned int TRISE0 :1;
        unsigned int TRISE1 :1;
        unsigned int TRISE2 :1;
        unsigned int :1;
        unsigned int PSPMODE :1;
        unsigned int IBOV :1;
        unsigned int OBF :1;
        unsigned int IBF :1;
    };
    struct {
        unsigned int RE0 :1;
        unsigned int RE1 :1;
        unsigned int RE2 :1;
    };
} DDREbits_t;
extern volatile DDREbits_t DDREbits __attribute__((address(0xF96)));
# 3056 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char OSCTUNE __attribute__((address(0xF9B)));

__asm("OSCTUNE equ 0F9Bh");


typedef union {
    struct {
        unsigned int TUN :6;
        unsigned int PLLEN :1;
        unsigned int INTSRC :1;
    };
    struct {
        unsigned int TUN0 :1;
        unsigned int TUN1 :1;
        unsigned int TUN2 :1;
        unsigned int TUN3 :1;
        unsigned int TUN4 :1;
        unsigned int TUN5 :1;
    };
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __attribute__((address(0xF9B)));
# 3126 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0xF9D)));

__asm("PIE1 equ 0F9Dh");


typedef union {
    struct {
        unsigned int TMR1IE :1;
        unsigned int TMR2IE :1;
        unsigned int CCP1IE :1;
        unsigned int SSPIE :1;
        unsigned int TXIE :1;
        unsigned int RCIE :1;
        unsigned int ADIE :1;
        unsigned int PSPIE :1;
    };
    struct {
        unsigned int :4;
        unsigned int TX1IE :1;
        unsigned int RC1IE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0xF9D)));
# 3203 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0xF9E)));

__asm("PIR1 equ 0F9Eh");


typedef union {
    struct {
        unsigned int TMR1IF :1;
        unsigned int TMR2IF :1;
        unsigned int CCP1IF :1;
        unsigned int SSPIF :1;
        unsigned int TXIF :1;
        unsigned int RCIF :1;
        unsigned int ADIF :1;
        unsigned int PSPIF :1;
    };
    struct {
        unsigned int :4;
        unsigned int TX1IF :1;
        unsigned int RC1IF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0xF9E)));
# 3280 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char IPR1 __attribute__((address(0xF9F)));

__asm("IPR1 equ 0F9Fh");


typedef union {
    struct {
        unsigned int TMR1IP :1;
        unsigned int TMR2IP :1;
        unsigned int CCP1IP :1;
        unsigned int SSPIP :1;
        unsigned int TXIP :1;
        unsigned int RCIP :1;
        unsigned int ADIP :1;
        unsigned int PSPIP :1;
    };
    struct {
        unsigned int :4;
        unsigned int TX1IP :1;
        unsigned int RC1IP :1;
    };
} IPR1bits_t;
extern volatile IPR1bits_t IPR1bits __attribute__((address(0xF9F)));
# 3357 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0xFA0)));

__asm("PIE2 equ 0FA0h");


typedef union {
    struct {
        unsigned int CCP2IE :1;
        unsigned int TMR3IE :1;
        unsigned int HLVDIE :1;
        unsigned int BCLIE :1;
        unsigned int EEIE :1;
        unsigned int C2IE :1;
        unsigned int C1IE :1;
        unsigned int OSCFIE :1;
    };
    struct {
        unsigned int :2;
        unsigned int LVDIE :1;
    };
    struct {
        unsigned int :6;
        unsigned int CMIE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0xFA0)));
# 3437 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0xFA1)));

__asm("PIR2 equ 0FA1h");


typedef union {
    struct {
        unsigned int CCP2IF :1;
        unsigned int TMR3IF :1;
        unsigned int HLVDIF :1;
        unsigned int BCLIF :1;
        unsigned int EEIF :1;
        unsigned int C2IF :1;
        unsigned int C1IF :1;
        unsigned int OSCFIF :1;
    };
    struct {
        unsigned int :2;
        unsigned int LVDIF :1;
    };
    struct {
        unsigned int :6;
        unsigned int CMIF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0xFA1)));
# 3517 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char IPR2 __attribute__((address(0xFA2)));

__asm("IPR2 equ 0FA2h");


typedef union {
    struct {
        unsigned int CCP2IP :1;
        unsigned int TMR3IP :1;
        unsigned int HLVDIP :1;
        unsigned int BCLIP :1;
        unsigned int EEIP :1;
        unsigned int C2IP :1;
        unsigned int C1IP :1;
        unsigned int OSCFIP :1;
    };
    struct {
        unsigned int :2;
        unsigned int LVDIP :1;
    };
    struct {
        unsigned int :6;
        unsigned int CMIP :1;
    };
} IPR2bits_t;
extern volatile IPR2bits_t IPR2bits __attribute__((address(0xFA2)));
# 3597 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char EECON1 __attribute__((address(0xFA6)));

__asm("EECON1 equ 0FA6h");


typedef union {
    struct {
        unsigned int RD :1;
        unsigned int WR :1;
        unsigned int WREN :1;
        unsigned int WRERR :1;
        unsigned int FREE :1;
        unsigned int :1;
        unsigned int CFGS :1;
        unsigned int EEPGD :1;
    };
    struct {
        unsigned int :6;
        unsigned int EEFS :1;
    };
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __attribute__((address(0xFA6)));
# 3663 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char EECON2 __attribute__((address(0xFA7)));

__asm("EECON2 equ 0FA7h");




extern volatile unsigned char EEDATA __attribute__((address(0xFA8)));

__asm("EEDATA equ 0FA8h");




extern volatile unsigned char EEADR __attribute__((address(0xFA9)));

__asm("EEADR equ 0FA9h");


typedef union {
    struct {
        unsigned int EEADR0 :1;
        unsigned int EEADR1 :1;
        unsigned int EEADR2 :1;
        unsigned int EEADR3 :1;
        unsigned int EEADR4 :1;
        unsigned int EEADR5 :1;
        unsigned int EEADR6 :1;
        unsigned int EEADR7 :1;
    };
} EEADRbits_t;
extern volatile EEADRbits_t EEADRbits __attribute__((address(0xFA9)));
# 3739 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char EEADRH __attribute__((address(0xFAA)));

__asm("EEADRH equ 0FAAh");


typedef union {
    struct {
        unsigned int EEADR8 :1;
        unsigned int EEADR9 :1;
    };
} EEADRHbits_t;
extern volatile EEADRHbits_t EEADRHbits __attribute__((address(0xFAA)));
# 3765 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char RCSTA __attribute__((address(0xFAB)));

__asm("RCSTA equ 0FABh");


extern volatile unsigned char RCSTA1 __attribute__((address(0xFAB)));

__asm("RCSTA1 equ 0FABh");


typedef union {
    struct {
        unsigned int RX9D :1;
        unsigned int OERR :1;
        unsigned int FERR :1;
        unsigned int ADDEN :1;
        unsigned int CREN :1;
        unsigned int SREN :1;
        unsigned int RX9 :1;
        unsigned int SPEN :1;
    };
    struct {
        unsigned int :3;
        unsigned int ADEN :1;
    };
    struct {
        unsigned int :5;
        unsigned int SRENA :1;
    };
    struct {
        unsigned int :6;
        unsigned int RC8_9 :1;
    };
    struct {
        unsigned int :6;
        unsigned int RC9 :1;
    };
    struct {
        unsigned int RCD8 :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0xFAB)));
# 3874 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
typedef union {
    struct {
        unsigned int RX9D :1;
        unsigned int OERR :1;
        unsigned int FERR :1;
        unsigned int ADDEN :1;
        unsigned int CREN :1;
        unsigned int SREN :1;
        unsigned int RX9 :1;
        unsigned int SPEN :1;
    };
    struct {
        unsigned int :3;
        unsigned int ADEN :1;
    };
    struct {
        unsigned int :5;
        unsigned int SRENA :1;
    };
    struct {
        unsigned int :6;
        unsigned int RC8_9 :1;
    };
    struct {
        unsigned int :6;
        unsigned int RC9 :1;
    };
    struct {
        unsigned int RCD8 :1;
    };
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __attribute__((address(0xFAB)));
# 3975 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char TXSTA __attribute__((address(0xFAC)));

__asm("TXSTA equ 0FACh");


extern volatile unsigned char TXSTA1 __attribute__((address(0xFAC)));

__asm("TXSTA1 equ 0FACh");


typedef union {
    struct {
        unsigned int TX9D :1;
        unsigned int TRMT :1;
        unsigned int BRGH :1;
        unsigned int SENDB :1;
        unsigned int SYNC :1;
        unsigned int TXEN :1;
        unsigned int TX9 :1;
        unsigned int CSRC :1;
    };
    struct {
        unsigned int TX9D1 :1;
        unsigned int TRMT1 :1;
        unsigned int BRGH1 :1;
        unsigned int SENDB1 :1;
        unsigned int SYNC1 :1;
        unsigned int TXEN1 :1;
        unsigned int TX91 :1;
        unsigned int CSRC1 :1;
    };
    struct {
        unsigned int :6;
        unsigned int TX8_9 :1;
    };
    struct {
        unsigned int TXD8 :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0xFAC)));
# 4107 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
typedef union {
    struct {
        unsigned int TX9D :1;
        unsigned int TRMT :1;
        unsigned int BRGH :1;
        unsigned int SENDB :1;
        unsigned int SYNC :1;
        unsigned int TXEN :1;
        unsigned int TX9 :1;
        unsigned int CSRC :1;
    };
    struct {
        unsigned int TX9D1 :1;
        unsigned int TRMT1 :1;
        unsigned int BRGH1 :1;
        unsigned int SENDB1 :1;
        unsigned int SYNC1 :1;
        unsigned int TXEN1 :1;
        unsigned int TX91 :1;
        unsigned int CSRC1 :1;
    };
    struct {
        unsigned int :6;
        unsigned int TX8_9 :1;
    };
    struct {
        unsigned int TXD8 :1;
    };
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __attribute__((address(0xFAC)));
# 4231 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char TXREG __attribute__((address(0xFAD)));

__asm("TXREG equ 0FADh");


extern volatile unsigned char TXREG1 __attribute__((address(0xFAD)));

__asm("TXREG1 equ 0FADh");




extern volatile unsigned char RCREG __attribute__((address(0xFAE)));

__asm("RCREG equ 0FAEh");


extern volatile unsigned char RCREG1 __attribute__((address(0xFAE)));

__asm("RCREG1 equ 0FAEh");




extern volatile unsigned char SPBRG __attribute__((address(0xFAF)));

__asm("SPBRG equ 0FAFh");


extern volatile unsigned char SPBRG1 __attribute__((address(0xFAF)));

__asm("SPBRG1 equ 0FAFh");




extern volatile unsigned char SPBRGH __attribute__((address(0xFB0)));

__asm("SPBRGH equ 0FB0h");




extern volatile unsigned char T3CON __attribute__((address(0xFB1)));

__asm("T3CON equ 0FB1h");


typedef union {
    struct {
        unsigned int :2;
        unsigned int NOT_T3SYNC :1;
    };
    struct {
        unsigned int TMR3ON :1;
        unsigned int TMR3CS :1;
        unsigned int nT3SYNC :1;
        unsigned int T3CCP1 :1;
        unsigned int T3CKPS :2;
        unsigned int T3CCP2 :1;
        unsigned int RD16 :1;
    };
    struct {
        unsigned int :2;
        unsigned int T3SYNC :1;
        unsigned int :1;
        unsigned int T3CKPS0 :1;
        unsigned int T3CKPS1 :1;
    };
    struct {
        unsigned int :3;
        unsigned int SOSCEN3 :1;
        unsigned int :3;
        unsigned int RD163 :1;
    };
    struct {
        unsigned int :7;
        unsigned int T3RD16 :1;
    };
} T3CONbits_t;
extern volatile T3CONbits_t T3CONbits __attribute__((address(0xFB1)));
# 4386 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned short TMR3 __attribute__((address(0xFB2)));

__asm("TMR3 equ 0FB2h");




extern volatile unsigned char TMR3L __attribute__((address(0xFB2)));

__asm("TMR3L equ 0FB2h");




extern volatile unsigned char TMR3H __attribute__((address(0xFB3)));

__asm("TMR3H equ 0FB3h");




extern volatile unsigned char CVRCON2 __attribute__((address(0xFB4)));

__asm("CVRCON2 equ 0FB4h");


typedef union {
    struct {
        unsigned int :6;
        unsigned int FVRST :1;
        unsigned int FVREN :1;
    };
} CVRCON2bits_t;
extern volatile CVRCON2bits_t CVRCON2bits __attribute__((address(0xFB4)));
# 4434 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char CVRCON __attribute__((address(0xFB5)));

__asm("CVRCON equ 0FB5h");


typedef union {
    struct {
        unsigned int CVR :4;
        unsigned int CVRSS :1;
        unsigned int CVRR :1;
        unsigned int CVROE :1;
        unsigned int CVREN :1;
    };
    struct {
        unsigned int CVR0 :1;
        unsigned int CVR1 :1;
        unsigned int CVR2 :1;
        unsigned int CVR3 :1;
    };
    struct {
        unsigned int :6;
        unsigned int CVROEN :1;
    };
} CVRCONbits_t;
extern volatile CVRCONbits_t CVRCONbits __attribute__((address(0xFB5)));
# 4513 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char ECCP1AS __attribute__((address(0xFB6)));

__asm("ECCP1AS equ 0FB6h");


typedef union {
    struct {
        unsigned int PSSBD :2;
        unsigned int PSSAC :2;
        unsigned int ECCPAS :3;
        unsigned int ECCPASE :1;
    };
    struct {
        unsigned int PSSBD0 :1;
        unsigned int PSSBD1 :1;
        unsigned int PSSAC0 :1;
        unsigned int PSSAC1 :1;
        unsigned int ECCPAS0 :1;
        unsigned int ECCPAS1 :1;
        unsigned int ECCPAS2 :1;
    };
} ECCP1ASbits_t;
extern volatile ECCP1ASbits_t ECCP1ASbits __attribute__((address(0xFB6)));
# 4595 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char PWM1CON __attribute__((address(0xFB7)));

__asm("PWM1CON equ 0FB7h");


typedef union {
    struct {
        unsigned int PDC :7;
        unsigned int PRSEN :1;
    };
    struct {
        unsigned int PDC0 :1;
        unsigned int PDC1 :1;
        unsigned int PDC2 :1;
        unsigned int PDC3 :1;
        unsigned int PDC4 :1;
        unsigned int PDC5 :1;
        unsigned int PDC6 :1;
    };
} PWM1CONbits_t;
extern volatile PWM1CONbits_t PWM1CONbits __attribute__((address(0xFB7)));
# 4665 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char BAUDCON __attribute__((address(0xFB8)));

__asm("BAUDCON equ 0FB8h");


extern volatile unsigned char BAUDCTL __attribute__((address(0xFB8)));

__asm("BAUDCTL equ 0FB8h");


typedef union {
    struct {
        unsigned int ABDEN :1;
        unsigned int WUE :1;
        unsigned int :1;
        unsigned int BRG16 :1;
        unsigned int CKTXP :1;
        unsigned int DTRXP :1;
        unsigned int RCIDL :1;
        unsigned int ABDOVF :1;
    };
    struct {
        unsigned int :4;
        unsigned int SCKP :1;
    };
    struct {
        unsigned int :5;
        unsigned int RXCKP :1;
    };
    struct {
        unsigned int :1;
        unsigned int W4E :1;
    };
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __attribute__((address(0xFB8)));
# 4752 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
typedef union {
    struct {
        unsigned int ABDEN :1;
        unsigned int WUE :1;
        unsigned int :1;
        unsigned int BRG16 :1;
        unsigned int CKTXP :1;
        unsigned int DTRXP :1;
        unsigned int RCIDL :1;
        unsigned int ABDOVF :1;
    };
    struct {
        unsigned int :4;
        unsigned int SCKP :1;
    };
    struct {
        unsigned int :5;
        unsigned int RXCKP :1;
    };
    struct {
        unsigned int :1;
        unsigned int W4E :1;
    };
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __attribute__((address(0xFB8)));
# 4831 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char PSTRCON __attribute__((address(0xFB9)));

__asm("PSTRCON equ 0FB9h");


typedef union {
    struct {
        unsigned int STRA :1;
        unsigned int STRB :1;
        unsigned int STRC :1;
        unsigned int STRD :1;
        unsigned int STRSYNC :1;
    };
} PSTRCONbits_t;
extern volatile PSTRCONbits_t PSTRCONbits __attribute__((address(0xFB9)));
# 4875 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char CCP2CON __attribute__((address(0xFBA)));

__asm("CCP2CON equ 0FBAh");


typedef union {
    struct {
        unsigned int CCP2M :4;
        unsigned int DC2B :2;
    };
    struct {
        unsigned int CCP2M0 :1;
        unsigned int CCP2M1 :1;
        unsigned int CCP2M2 :1;
        unsigned int CCP2M3 :1;
        unsigned int DC2B0 :1;
        unsigned int DC2B1 :1;
    };
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __attribute__((address(0xFBA)));
# 4939 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned short CCPR2 __attribute__((address(0xFBB)));

__asm("CCPR2 equ 0FBBh");




extern volatile unsigned char CCPR2L __attribute__((address(0xFBB)));

__asm("CCPR2L equ 0FBBh");




extern volatile unsigned char CCPR2H __attribute__((address(0xFBC)));

__asm("CCPR2H equ 0FBCh");




extern volatile unsigned char CCP1CON __attribute__((address(0xFBD)));

__asm("CCP1CON equ 0FBDh");


typedef union {
    struct {
        unsigned int CCP1M :4;
        unsigned int DC1B :2;
        unsigned int P1M :2;
    };
    struct {
        unsigned int CCP1M0 :1;
        unsigned int CCP1M1 :1;
        unsigned int CCP1M2 :1;
        unsigned int CCP1M3 :1;
        unsigned int DC1B0 :1;
        unsigned int DC1B1 :1;
        unsigned int P1M0 :1;
        unsigned int P1M1 :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0xFBD)));
# 5042 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned short CCPR1 __attribute__((address(0xFBE)));

__asm("CCPR1 equ 0FBEh");




extern volatile unsigned char CCPR1L __attribute__((address(0xFBE)));

__asm("CCPR1L equ 0FBEh");




extern volatile unsigned char CCPR1H __attribute__((address(0xFBF)));

__asm("CCPR1H equ 0FBFh");




extern volatile unsigned char ADCON2 __attribute__((address(0xFC0)));

__asm("ADCON2 equ 0FC0h");


typedef union {
    struct {
        unsigned int ADCS :3;
        unsigned int ACQT :3;
        unsigned int :1;
        unsigned int ADFM :1;
    };
    struct {
        unsigned int ADCS0 :1;
        unsigned int ADCS1 :1;
        unsigned int ADCS2 :1;
        unsigned int ACQT0 :1;
        unsigned int ACQT1 :1;
        unsigned int ACQT2 :1;
    };
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __attribute__((address(0xFC0)));
# 5134 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char ADCON1 __attribute__((address(0xFC1)));

__asm("ADCON1 equ 0FC1h");


typedef union {
    struct {
        unsigned int :4;
        unsigned int VCFG :2;
    };
    struct {
        unsigned int :4;
        unsigned int VCFG0 :1;
        unsigned int VCFG1 :1;
    };
    struct {
        unsigned int :4;
        unsigned int VCFG01 :1;
        unsigned int VCFG11 :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0xFC1)));
# 5185 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char ADCON0 __attribute__((address(0xFC2)));

__asm("ADCON0 equ 0FC2h");


typedef union {
    struct {
        unsigned int :1;
        unsigned int GO_NOT_DONE :1;
    };
    struct {
        unsigned int ADON :1;
        unsigned int GO_nDONE :1;
        unsigned int CHS :4;
    };
    struct {
        unsigned int :1;
        unsigned int DONE :1;
        unsigned int CHS0 :1;
        unsigned int CHS1 :1;
        unsigned int CHS2 :1;
        unsigned int CHS3 :1;
    };
    struct {
        unsigned int :1;
        unsigned int NOT_DONE :1;
    };
    struct {
        unsigned int :1;
        unsigned int nDONE :1;
    };
    struct {
        unsigned int :1;
        unsigned int GO_DONE :1;
    };
    struct {
        unsigned int :1;
        unsigned int GO :1;
    };
    struct {
        unsigned int :1;
        unsigned int GODONE :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0xFC2)));
# 5304 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned short ADRES __attribute__((address(0xFC3)));

__asm("ADRES equ 0FC3h");




extern volatile unsigned char ADRESL __attribute__((address(0xFC3)));

__asm("ADRESL equ 0FC3h");




extern volatile unsigned char ADRESH __attribute__((address(0xFC4)));

__asm("ADRESH equ 0FC4h");




extern volatile unsigned char SSPCON2 __attribute__((address(0xFC5)));

__asm("SSPCON2 equ 0FC5h");


typedef union {
    struct {
        unsigned int SEN :1;
        unsigned int RSEN :1;
        unsigned int PEN :1;
        unsigned int RCEN :1;
        unsigned int ACKEN :1;
        unsigned int ACKDT :1;
        unsigned int ACKSTAT :1;
        unsigned int GCEN :1;
    };
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __attribute__((address(0xFC5)));
# 5387 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char SSPCON1 __attribute__((address(0xFC6)));

__asm("SSPCON1 equ 0FC6h");


typedef union {
    struct {
        unsigned int SSPM :4;
        unsigned int CKP :1;
        unsigned int SSPEN :1;
        unsigned int SSPOV :1;
        unsigned int WCOL :1;
    };
    struct {
        unsigned int SSPM0 :1;
        unsigned int SSPM1 :1;
        unsigned int SSPM2 :1;
        unsigned int SSPM3 :1;
    };
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __attribute__((address(0xFC6)));
# 5457 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char SSPSTAT __attribute__((address(0xFC7)));

__asm("SSPSTAT equ 0FC7h");


typedef union {
    struct {
        unsigned int :2;
        unsigned int R_NOT_W :1;
    };
    struct {
        unsigned int :5;
        unsigned int D_NOT_A :1;
    };
    struct {
        unsigned int BF :1;
        unsigned int UA :1;
        unsigned int R_nW :1;
        unsigned int S :1;
        unsigned int P :1;
        unsigned int D_nA :1;
        unsigned int CKE :1;
        unsigned int SMP :1;
    };
    struct {
        unsigned int :2;
        unsigned int R :1;
        unsigned int :2;
        unsigned int D :1;
    };
    struct {
        unsigned int :2;
        unsigned int W :1;
        unsigned int :2;
        unsigned int A :1;
    };
    struct {
        unsigned int :2;
        unsigned int nW :1;
        unsigned int :2;
        unsigned int nA :1;
    };
    struct {
        unsigned int :2;
        unsigned int R_W :1;
        unsigned int :2;
        unsigned int D_A :1;
    };
    struct {
        unsigned int :2;
        unsigned int NOT_WRITE :1;
    };
    struct {
        unsigned int :5;
        unsigned int NOT_ADDRESS :1;
    };
    struct {
        unsigned int :2;
        unsigned int nWRITE :1;
        unsigned int :2;
        unsigned int nADDRESS :1;
    };
    struct {
        unsigned int :3;
        unsigned int START :1;
        unsigned int STOP :1;
    };
    struct {
        unsigned int :2;
        unsigned int RW :1;
        unsigned int :2;
        unsigned int DA :1;
    };
    struct {
        unsigned int :2;
        unsigned int NOT_W :1;
        unsigned int :2;
        unsigned int NOT_A :1;
    };
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __attribute__((address(0xFC7)));
# 5682 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char SSPADD __attribute__((address(0xFC8)));

__asm("SSPADD equ 0FC8h");




extern volatile unsigned char SSPBUF __attribute__((address(0xFC9)));

__asm("SSPBUF equ 0FC9h");




extern volatile unsigned char T2CON __attribute__((address(0xFCA)));

__asm("T2CON equ 0FCAh");


typedef union {
    struct {
        unsigned int T2CKPS :2;
        unsigned int TMR2ON :1;
        unsigned int T2OUTPS :4;
    };
    struct {
        unsigned int T2CKPS0 :1;
        unsigned int T2CKPS1 :1;
        unsigned int :1;
        unsigned int T2OUTPS0 :1;
        unsigned int T2OUTPS1 :1;
        unsigned int T2OUTPS2 :1;
        unsigned int T2OUTPS3 :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0xFCA)));
# 5767 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char PR2 __attribute__((address(0xFCB)));

__asm("PR2 equ 0FCBh");


extern volatile unsigned char MEMCON __attribute__((address(0xFCB)));

__asm("MEMCON equ 0FCBh");


typedef union {
    struct {
        unsigned int :7;
        unsigned int EBDIS :1;
    };
    struct {
        unsigned int :4;
        unsigned int WAIT0 :1;
    };
    struct {
        unsigned int :5;
        unsigned int WAIT1 :1;
    };
    struct {
        unsigned int WM0 :1;
    };
    struct {
        unsigned int :1;
        unsigned int WM1 :1;
    };
} PR2bits_t;
extern volatile PR2bits_t PR2bits __attribute__((address(0xFCB)));
# 5826 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
typedef union {
    struct {
        unsigned int :7;
        unsigned int EBDIS :1;
    };
    struct {
        unsigned int :4;
        unsigned int WAIT0 :1;
    };
    struct {
        unsigned int :5;
        unsigned int WAIT1 :1;
    };
    struct {
        unsigned int WM0 :1;
    };
    struct {
        unsigned int :1;
        unsigned int WM1 :1;
    };
} MEMCONbits_t;
extern volatile MEMCONbits_t MEMCONbits __attribute__((address(0xFCB)));
# 5877 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char TMR2 __attribute__((address(0xFCC)));

__asm("TMR2 equ 0FCCh");




extern volatile unsigned char T1CON __attribute__((address(0xFCD)));

__asm("T1CON equ 0FCDh");


typedef union {
    struct {
        unsigned int :2;
        unsigned int NOT_T1SYNC :1;
    };
    struct {
        unsigned int TMR1ON :1;
        unsigned int TMR1CS :1;
        unsigned int nT1SYNC :1;
        unsigned int T1OSCEN :1;
        unsigned int T1CKPS :2;
        unsigned int T1RUN :1;
        unsigned int RD16 :1;
    };
    struct {
        unsigned int :2;
        unsigned int T1SYNC :1;
        unsigned int :1;
        unsigned int T1CKPS0 :1;
        unsigned int T1CKPS1 :1;
    };
    struct {
        unsigned int :3;
        unsigned int SOSCEN :1;
        unsigned int :3;
        unsigned int T1RD16 :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0xFCD)));
# 5987 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0xFCE)));

__asm("TMR1 equ 0FCEh");




extern volatile unsigned char TMR1L __attribute__((address(0xFCE)));

__asm("TMR1L equ 0FCEh");




extern volatile unsigned char TMR1H __attribute__((address(0xFCF)));

__asm("TMR1H equ 0FCFh");




extern volatile unsigned char RCON __attribute__((address(0xFD0)));

__asm("RCON equ 0FD0h");


typedef union {
    struct {
        unsigned int NOT_BOR :1;
    };
    struct {
        unsigned int :1;
        unsigned int NOT_POR :1;
    };
    struct {
        unsigned int :2;
        unsigned int NOT_PD :1;
    };
    struct {
        unsigned int :3;
        unsigned int NOT_TO :1;
    };
    struct {
        unsigned int :4;
        unsigned int NOT_RI :1;
    };
    struct {
        unsigned int nBOR :1;
        unsigned int nPOR :1;
        unsigned int nPD :1;
        unsigned int nTO :1;
        unsigned int nRI :1;
        unsigned int :1;
        unsigned int SBOREN :1;
        unsigned int IPEN :1;
    };
    struct {
        unsigned int BOR :1;
        unsigned int POR :1;
        unsigned int PD :1;
        unsigned int TO :1;
        unsigned int RI :1;
    };
} RCONbits_t;
extern volatile RCONbits_t RCONbits __attribute__((address(0xFD0)));
# 6141 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char WDTCON __attribute__((address(0xFD1)));

__asm("WDTCON equ 0FD1h");


typedef union {
    struct {
        unsigned int SWDTEN :1;
    };
    struct {
        unsigned int SWDTE :1;
    };
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __attribute__((address(0xFD1)));
# 6169 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char HLVDCON __attribute__((address(0xFD2)));

__asm("HLVDCON equ 0FD2h");


extern volatile unsigned char LVDCON __attribute__((address(0xFD2)));

__asm("LVDCON equ 0FD2h");


typedef union {
    struct {
        unsigned int HLVDL :4;
        unsigned int HLVDEN :1;
        unsigned int IRVST :1;
        unsigned int :1;
        unsigned int VDIRMAG :1;
    };
    struct {
        unsigned int HLVDL0 :1;
        unsigned int HLVDL1 :1;
        unsigned int HLVDL2 :1;
        unsigned int HLVDL3 :1;
    };
    struct {
        unsigned int LVDL0 :1;
        unsigned int LVDL1 :1;
        unsigned int LVDL2 :1;
        unsigned int LVDL3 :1;
        unsigned int LVDEN :1;
        unsigned int IVRST :1;
    };
    struct {
        unsigned int LVV0 :1;
        unsigned int LVV1 :1;
        unsigned int LVV2 :1;
        unsigned int LVV3 :1;
        unsigned int :1;
        unsigned int BGST :1;
    };
} HLVDCONbits_t;
extern volatile HLVDCONbits_t HLVDCONbits __attribute__((address(0xFD2)));
# 6308 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
typedef union {
    struct {
        unsigned int HLVDL :4;
        unsigned int HLVDEN :1;
        unsigned int IRVST :1;
        unsigned int :1;
        unsigned int VDIRMAG :1;
    };
    struct {
        unsigned int HLVDL0 :1;
        unsigned int HLVDL1 :1;
        unsigned int HLVDL2 :1;
        unsigned int HLVDL3 :1;
    };
    struct {
        unsigned int LVDL0 :1;
        unsigned int LVDL1 :1;
        unsigned int LVDL2 :1;
        unsigned int LVDL3 :1;
        unsigned int LVDEN :1;
        unsigned int IVRST :1;
    };
    struct {
        unsigned int LVV0 :1;
        unsigned int LVV1 :1;
        unsigned int LVV2 :1;
        unsigned int LVV3 :1;
        unsigned int :1;
        unsigned int BGST :1;
    };
} LVDCONbits_t;
extern volatile LVDCONbits_t LVDCONbits __attribute__((address(0xFD2)));
# 6439 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char OSCCON __attribute__((address(0xFD3)));

__asm("OSCCON equ 0FD3h");


typedef union {
    struct {
        unsigned int SCS :2;
        unsigned int IOFS :1;
        unsigned int OSTS :1;
        unsigned int IRCF :3;
        unsigned int IDLEN :1;
    };
    struct {
        unsigned int SCS0 :1;
        unsigned int SCS1 :1;
        unsigned int :2;
        unsigned int IRCF0 :1;
        unsigned int IRCF1 :1;
        unsigned int IRCF2 :1;
    };
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __attribute__((address(0xFD3)));
# 6516 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char T0CON __attribute__((address(0xFD5)));

__asm("T0CON equ 0FD5h");


typedef union {
    struct {
        unsigned int T0PS :3;
        unsigned int PSA :1;
        unsigned int T0SE :1;
        unsigned int T0CS :1;
        unsigned int T08BIT :1;
        unsigned int TMR0ON :1;
    };
    struct {
        unsigned int T0PS0 :1;
        unsigned int T0PS1 :1;
        unsigned int T0PS2 :1;
    };
} T0CONbits_t;
extern volatile T0CONbits_t T0CONbits __attribute__((address(0xFD5)));
# 6586 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned short TMR0 __attribute__((address(0xFD6)));

__asm("TMR0 equ 0FD6h");




extern volatile unsigned char TMR0L __attribute__((address(0xFD6)));

__asm("TMR0L equ 0FD6h");




extern volatile unsigned char TMR0H __attribute__((address(0xFD7)));

__asm("TMR0H equ 0FD7h");




extern volatile unsigned char STATUS __attribute__((address(0xFD8)));

__asm("STATUS equ 0FD8h");


typedef union {
    struct {
        unsigned int C :1;
        unsigned int DC :1;
        unsigned int Z :1;
        unsigned int OV :1;
        unsigned int N :1;
    };
    struct {
        unsigned int CARRY :1;
        unsigned int :1;
        unsigned int ZERO :1;
        unsigned int OVERFLOW :1;
        unsigned int NEGATIVE :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0xFD8)));
# 6678 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned short FSR2 __attribute__((address(0xFD9)));

__asm("FSR2 equ 0FD9h");




extern volatile unsigned char FSR2L __attribute__((address(0xFD9)));

__asm("FSR2L equ 0FD9h");




extern volatile unsigned char FSR2H __attribute__((address(0xFDA)));

__asm("FSR2H equ 0FDAh");




extern volatile unsigned char PLUSW2 __attribute__((address(0xFDB)));

__asm("PLUSW2 equ 0FDBh");




extern volatile unsigned char PREINC2 __attribute__((address(0xFDC)));

__asm("PREINC2 equ 0FDCh");




extern volatile unsigned char POSTDEC2 __attribute__((address(0xFDD)));

__asm("POSTDEC2 equ 0FDDh");




extern volatile unsigned char POSTINC2 __attribute__((address(0xFDE)));

__asm("POSTINC2 equ 0FDEh");




extern volatile unsigned char INDF2 __attribute__((address(0xFDF)));

__asm("INDF2 equ 0FDFh");




extern volatile unsigned char BSR __attribute__((address(0xFE0)));

__asm("BSR equ 0FE0h");




extern volatile unsigned short FSR1 __attribute__((address(0xFE1)));

__asm("FSR1 equ 0FE1h");




extern volatile unsigned char FSR1L __attribute__((address(0xFE1)));

__asm("FSR1L equ 0FE1h");




extern volatile unsigned char FSR1H __attribute__((address(0xFE2)));

__asm("FSR1H equ 0FE2h");




extern volatile unsigned char PLUSW1 __attribute__((address(0xFE3)));

__asm("PLUSW1 equ 0FE3h");




extern volatile unsigned char PREINC1 __attribute__((address(0xFE4)));

__asm("PREINC1 equ 0FE4h");




extern volatile unsigned char POSTDEC1 __attribute__((address(0xFE5)));

__asm("POSTDEC1 equ 0FE5h");




extern volatile unsigned char POSTINC1 __attribute__((address(0xFE6)));

__asm("POSTINC1 equ 0FE6h");




extern volatile unsigned char INDF1 __attribute__((address(0xFE7)));

__asm("INDF1 equ 0FE7h");




extern volatile unsigned char WREG __attribute__((address(0xFE8)));

__asm("WREG equ 0FE8h");
# 6809 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned short FSR0 __attribute__((address(0xFE9)));

__asm("FSR0 equ 0FE9h");




extern volatile unsigned char FSR0L __attribute__((address(0xFE9)));

__asm("FSR0L equ 0FE9h");




extern volatile unsigned char FSR0H __attribute__((address(0xFEA)));

__asm("FSR0H equ 0FEAh");




extern volatile unsigned char PLUSW0 __attribute__((address(0xFEB)));

__asm("PLUSW0 equ 0FEBh");




extern volatile unsigned char PREINC0 __attribute__((address(0xFEC)));

__asm("PREINC0 equ 0FECh");




extern volatile unsigned char POSTDEC0 __attribute__((address(0xFED)));

__asm("POSTDEC0 equ 0FEDh");




extern volatile unsigned char POSTINC0 __attribute__((address(0xFEE)));

__asm("POSTINC0 equ 0FEEh");




extern volatile unsigned char INDF0 __attribute__((address(0xFEF)));

__asm("INDF0 equ 0FEFh");




extern volatile unsigned char INTCON3 __attribute__((address(0xFF0)));

__asm("INTCON3 equ 0FF0h");


typedef union {
    struct {
        unsigned int INT1IF :1;
        unsigned int INT2IF :1;
        unsigned int :1;
        unsigned int INT1IE :1;
        unsigned int INT2IE :1;
        unsigned int :1;
        unsigned int INT1IP :1;
        unsigned int INT2IP :1;
    };
    struct {
        unsigned int INT1F :1;
        unsigned int INT2F :1;
        unsigned int :1;
        unsigned int INT1E :1;
        unsigned int INT2E :1;
        unsigned int :1;
        unsigned int INT1P :1;
        unsigned int INT2P :1;
    };
} INTCON3bits_t;
extern volatile INTCON3bits_t INTCON3bits __attribute__((address(0xFF0)));
# 6957 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char INTCON2 __attribute__((address(0xFF1)));

__asm("INTCON2 equ 0FF1h");


typedef union {
    struct {
        unsigned int :7;
        unsigned int NOT_RBPU :1;
    };
    struct {
        unsigned int RBIP :1;
        unsigned int :1;
        unsigned int TMR0IP :1;
        unsigned int :1;
        unsigned int INTEDG2 :1;
        unsigned int INTEDG1 :1;
        unsigned int INTEDG0 :1;
        unsigned int nRBPU :1;
    };
    struct {
        unsigned int :7;
        unsigned int RBPU :1;
    };
} INTCON2bits_t;
extern volatile INTCON2bits_t INTCON2bits __attribute__((address(0xFF1)));
# 7027 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned char INTCON __attribute__((address(0xFF2)));

__asm("INTCON equ 0FF2h");


typedef union {
    struct {
        unsigned int RBIF :1;
        unsigned int INT0IF :1;
        unsigned int TMR0IF :1;
        unsigned int RBIE :1;
        unsigned int INT0IE :1;
        unsigned int TMR0IE :1;
        unsigned int PEIE_GIEL :1;
        unsigned int GIE_GIEH :1;
    };
    struct {
        unsigned int :1;
        unsigned int INT0F :1;
        unsigned int T0IF :1;
        unsigned int :1;
        unsigned int INT0E :1;
        unsigned int T0IE :1;
        unsigned int PEIE :1;
        unsigned int GIE :1;
    };
    struct {
        unsigned int :6;
        unsigned int GIEL :1;
        unsigned int GIEH :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0xFF2)));
# 7144 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile unsigned short PROD __attribute__((address(0xFF3)));

__asm("PROD equ 0FF3h");




extern volatile unsigned char PRODL __attribute__((address(0xFF3)));

__asm("PRODL equ 0FF3h");




extern volatile unsigned char PRODH __attribute__((address(0xFF4)));

__asm("PRODH equ 0FF4h");




extern volatile unsigned char TABLAT __attribute__((address(0xFF5)));

__asm("TABLAT equ 0FF5h");





extern volatile __uint24 TBLPTR __attribute__((address(0xFF6)));


__asm("TBLPTR equ 0FF6h");




extern volatile unsigned char TBLPTRL __attribute__((address(0xFF6)));

__asm("TBLPTRL equ 0FF6h");




extern volatile unsigned char TBLPTRH __attribute__((address(0xFF7)));

__asm("TBLPTRH equ 0FF7h");




extern volatile unsigned char TBLPTRU __attribute__((address(0xFF8)));

__asm("TBLPTRU equ 0FF8h");





extern volatile __uint24 PCLAT __attribute__((address(0xFF9)));


__asm("PCLAT equ 0FF9h");



extern volatile __uint24 PC __attribute__((address(0xFF9)));


__asm("PC equ 0FF9h");




extern volatile unsigned char PCL __attribute__((address(0xFF9)));

__asm("PCL equ 0FF9h");




extern volatile unsigned char PCLATH __attribute__((address(0xFFA)));

__asm("PCLATH equ 0FFAh");




extern volatile unsigned char PCLATU __attribute__((address(0xFFB)));

__asm("PCLATU equ 0FFBh");




extern volatile unsigned char STKPTR __attribute__((address(0xFFC)));

__asm("STKPTR equ 0FFCh");


typedef union {
    struct {
        unsigned int STKPTR :5;
        unsigned int :1;
        unsigned int STKUNF :1;
        unsigned int STKFUL :1;
    };
    struct {
        unsigned int SP0 :1;
        unsigned int SP1 :1;
        unsigned int SP2 :1;
        unsigned int SP3 :1;
        unsigned int SP4 :1;
        unsigned int :2;
        unsigned int STKOVF :1;
    };
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __attribute__((address(0xFFC)));
# 7312 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile __uint24 TOS __attribute__((address(0xFFD)));


__asm("TOS equ 0FFDh");




extern volatile unsigned char TOSL __attribute__((address(0xFFD)));

__asm("TOSL equ 0FFDh");




extern volatile unsigned char TOSH __attribute__((address(0xFFE)));

__asm("TOSH equ 0FFEh");




extern volatile unsigned char TOSU __attribute__((address(0xFFF)));

__asm("TOSU equ 0FFFh");





extern const unsigned char _CONFIGs[14] __attribute__((address(0x300000)));

extern const unsigned char _CONFIG1H __attribute__((address(0x300001)));

typedef union {
    struct {
        unsigned int FOSC :4;
        unsigned int :2;
        unsigned int FCMEN :1;
        unsigned int IESO :1;
    };
} _CONFIG1Hbits_t;
extern const _CONFIG1Hbits_t _CONFIG1Hbits __attribute__((address(0x300001)));


extern const unsigned char _CONFIG2L __attribute__((address(0x300002)));

typedef union {
    struct {
        unsigned int PWRTEN :1;
        unsigned int BOREN :2;
        unsigned int BORV :2;
    };
} _CONFIG2Lbits_t;
extern const _CONFIG2Lbits_t _CONFIG2Lbits __attribute__((address(0x300002)));


extern const unsigned char _CONFIG2H __attribute__((address(0x300003)));

typedef union {
    struct {
        unsigned int WDTEN :1;
        unsigned int WDTPS :4;
    };
} _CONFIG2Hbits_t;
extern const _CONFIG2Hbits_t _CONFIG2Hbits __attribute__((address(0x300003)));


extern const unsigned char _CONFIG3H __attribute__((address(0x300005)));

typedef union {
    struct {
        unsigned int CCP2MX :1;
        unsigned int PBADEN :1;
        unsigned int LPT1OSC :1;
        unsigned int HFOFST :1;
        unsigned int :3;
        unsigned int MCLRE :1;
    };
} _CONFIG3Hbits_t;
extern const _CONFIG3Hbits_t _CONFIG3Hbits __attribute__((address(0x300005)));


extern const unsigned char _CONFIG4L __attribute__((address(0x300006)));

typedef union {
    struct {
        unsigned int STVREN :1;
        unsigned int :1;
        unsigned int LVP :1;
        unsigned int :3;
        unsigned int XINST :1;
        unsigned int _DEBUG :1;
    };
} _CONFIG4Lbits_t;
extern const _CONFIG4Lbits_t _CONFIG4Lbits __attribute__((address(0x300006)));


extern const unsigned char _CONFIG5L __attribute__((address(0x300008)));

typedef union {
    struct {
        unsigned int CP0 :1;
        unsigned int CP1 :1;
        unsigned int CP2 :1;
        unsigned int CP3 :1;
    };
} _CONFIG5Lbits_t;
extern const _CONFIG5Lbits_t _CONFIG5Lbits __attribute__((address(0x300008)));


extern const unsigned char _CONFIG5H __attribute__((address(0x300009)));

typedef union {
    struct {
        unsigned int :6;
        unsigned int CPB :1;
        unsigned int CPD :1;
    };
} _CONFIG5Hbits_t;
extern const _CONFIG5Hbits_t _CONFIG5Hbits __attribute__((address(0x300009)));


extern const unsigned char _CONFIG6L __attribute__((address(0x30000A)));

typedef union {
    struct {
        unsigned int WRT0 :1;
        unsigned int WRT1 :1;
        unsigned int WRT2 :1;
        unsigned int WRT3 :1;
    };
} _CONFIG6Lbits_t;
extern const _CONFIG6Lbits_t _CONFIG6Lbits __attribute__((address(0x30000A)));


extern const unsigned char _CONFIG6H __attribute__((address(0x30000B)));

typedef union {
    struct {
        unsigned int :5;
        unsigned int WRTC :1;
        unsigned int WRTB :1;
        unsigned int WRTD :1;
    };
} _CONFIG6Hbits_t;
extern const _CONFIG6Hbits_t _CONFIG6Hbits __attribute__((address(0x30000B)));


extern const unsigned char _CONFIG7L __attribute__((address(0x30000C)));

typedef union {
    struct {
        unsigned int EBTR0 :1;
        unsigned int EBTR1 :1;
        unsigned int EBTR2 :1;
        unsigned int EBTR3 :1;
    };
} _CONFIG7Lbits_t;
extern const _CONFIG7Lbits_t _CONFIG7Lbits __attribute__((address(0x30000C)));


extern const unsigned char _CONFIG7H __attribute__((address(0x30000D)));

typedef union {
    struct {
        unsigned int :6;
        unsigned int EBTRB :1;
    };
} _CONFIG7Hbits_t;
extern const _CONFIG7Hbits_t _CONFIG7Hbits __attribute__((address(0x30000D)));

extern const unsigned char _IDLOCs[8] __attribute__((address(0x200000)));

extern const unsigned char _IDLOC0 __attribute__((address(0x200000)));


extern const unsigned char _IDLOC1 __attribute__((address(0x200001)));


extern const unsigned char _IDLOC2 __attribute__((address(0x200002)));


extern const unsigned char _IDLOC3 __attribute__((address(0x200003)));


extern const unsigned char _IDLOC4 __attribute__((address(0x200004)));


extern const unsigned char _IDLOC5 __attribute__((address(0x200005)));


extern const unsigned char _IDLOC6 __attribute__((address(0x200006)));


extern const unsigned char _IDLOC7 __attribute__((address(0x200007)));




extern const unsigned short _DEVID __attribute__((address(0x3FFFFE)));
# 7526 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include\\proc/pic18f46k20.h" 3
extern volatile __bit ABDEN __attribute__((address(0x7DC0)));


extern volatile __bit ABDOVF __attribute__((address(0x7DC7)));


extern volatile __bit ACKDT __attribute__((address(0x7E2D)));


extern volatile __bit ACKEN __attribute__((address(0x7E2C)));


extern volatile __bit ACKSTAT __attribute__((address(0x7E2E)));


extern volatile __bit ACQT0 __attribute__((address(0x7E03)));


extern volatile __bit ACQT1 __attribute__((address(0x7E04)));


extern volatile __bit ACQT2 __attribute__((address(0x7E05)));


extern volatile __bit ADCS0 __attribute__((address(0x7E00)));


extern volatile __bit ADCS1 __attribute__((address(0x7E01)));


extern volatile __bit ADCS2 __attribute__((address(0x7E02)));


extern volatile __bit ADDEN __attribute__((address(0x7D5B)));


extern volatile __bit ADEN __attribute__((address(0x7D5B)));


extern volatile __bit ADFM __attribute__((address(0x7E07)));


extern volatile __bit ADIE __attribute__((address(0x7CEE)));


extern volatile __bit ADIF __attribute__((address(0x7CF6)));


extern volatile __bit ADIP __attribute__((address(0x7CFE)));


extern volatile __bit ADON __attribute__((address(0x7E10)));


extern volatile __bit AN0 __attribute__((address(0x7C00)));


extern volatile __bit AN1 __attribute__((address(0x7C01)));


extern volatile __bit AN10 __attribute__((address(0x7C09)));


extern volatile __bit AN11 __attribute__((address(0x7C0C)));


extern volatile __bit AN12 __attribute__((address(0x7C08)));


extern volatile __bit AN2 __attribute__((address(0x7C02)));


extern volatile __bit AN3 __attribute__((address(0x7C03)));


extern volatile __bit AN4 __attribute__((address(0x7C05)));


extern volatile __bit AN5 __attribute__((address(0x7C20)));


extern volatile __bit AN6 __attribute__((address(0x7C21)));


extern volatile __bit AN7 __attribute__((address(0x7C22)));


extern volatile __bit AN8 __attribute__((address(0x7C0A)));


extern volatile __bit AN9 __attribute__((address(0x7C0B)));


extern volatile __bit ANS0 __attribute__((address(0x7BF0)));


extern volatile __bit ANS1 __attribute__((address(0x7BF1)));


extern volatile __bit ANS10 __attribute__((address(0x7BFA)));


extern volatile __bit ANS11 __attribute__((address(0x7BFB)));


extern volatile __bit ANS12 __attribute__((address(0x7BFC)));


extern volatile __bit ANS2 __attribute__((address(0x7BF2)));


extern volatile __bit ANS3 __attribute__((address(0x7BF3)));


extern volatile __bit ANS4 __attribute__((address(0x7BF4)));


extern volatile __bit ANS5 __attribute__((address(0x7BF5)));


extern volatile __bit ANS6 __attribute__((address(0x7BF6)));


extern volatile __bit ANS7 __attribute__((address(0x7BF7)));


extern volatile __bit ANS8 __attribute__((address(0x7BF8)));


extern volatile __bit ANS9 __attribute__((address(0x7BF9)));


extern volatile __bit BCLIE __attribute__((address(0x7D03)));


extern volatile __bit BCLIF __attribute__((address(0x7D0B)));


extern volatile __bit BCLIP __attribute__((address(0x7D13)));


extern volatile __bit BF __attribute__((address(0x7E38)));


extern volatile __bit BGST __attribute__((address(0x7E95)));


extern volatile __bit BOR __attribute__((address(0x7E80)));


extern volatile __bit BRG16 __attribute__((address(0x7DC3)));


extern volatile __bit BRGH __attribute__((address(0x7D62)));


extern volatile __bit BRGH1 __attribute__((address(0x7D62)));


extern volatile __bit C12IN0M __attribute__((address(0x7C00)));


extern volatile __bit C12IN0N __attribute__((address(0x7C00)));


extern volatile __bit C12IN1M __attribute__((address(0x7C01)));


extern volatile __bit C12IN1N __attribute__((address(0x7C01)));


extern volatile __bit C12IN2M __attribute__((address(0x7C0B)));


extern volatile __bit C12IN2N __attribute__((address(0x7C0B)));


extern volatile __bit C12IN3M __attribute__((address(0x7C09)));


extern volatile __bit C12IN3N __attribute__((address(0x7C09)));


extern volatile __bit C1CH0 __attribute__((address(0x7BD8)));


extern volatile __bit C1CH1 __attribute__((address(0x7BD9)));


extern volatile __bit C1IE __attribute__((address(0x7D06)));


extern volatile __bit C1IF __attribute__((address(0x7D0E)));


extern volatile __bit C1INP __attribute__((address(0x7C03)));


extern volatile __bit C1IP __attribute__((address(0x7D16)));


extern volatile __bit C1OE __attribute__((address(0x7BDD)));


extern volatile __bit C1ON __attribute__((address(0x7BDF)));


extern volatile __bit __attribute__((__deprecated__)) C1OUT __attribute__((address(0x7BDE)));


extern volatile __bit C1POL __attribute__((address(0x7BDC)));


extern volatile __bit C1R __attribute__((address(0x7BDA)));


extern volatile __bit C1RSEL __attribute__((address(0x7BCD)));


extern volatile __bit C1SP __attribute__((address(0x7BDB)));


extern volatile __bit C2CH0 __attribute__((address(0x7BD0)));


extern volatile __bit C2CH1 __attribute__((address(0x7BD1)));


extern volatile __bit C2IE __attribute__((address(0x7D05)));


extern volatile __bit C2IF __attribute__((address(0x7D0D)));


extern volatile __bit C2INP __attribute__((address(0x7C02)));


extern volatile __bit C2IP __attribute__((address(0x7D15)));


extern volatile __bit C2OE __attribute__((address(0x7BD5)));


extern volatile __bit C2ON __attribute__((address(0x7BD7)));


extern volatile __bit __attribute__((__deprecated__)) C2OUT __attribute__((address(0x7BD6)));


extern volatile __bit C2POL __attribute__((address(0x7BD4)));


extern volatile __bit C2R __attribute__((address(0x7BD2)));


extern volatile __bit C2RSEL __attribute__((address(0x7BCC)));


extern volatile __bit C2SP __attribute__((address(0x7BD3)));


extern volatile __bit CARRY __attribute__((address(0x7EC0)));


extern volatile __bit CCP1 __attribute__((address(0x7C12)));


extern volatile __bit CCP10 __attribute__((address(0x7C22)));


extern volatile __bit CCP1IE __attribute__((address(0x7CEA)));


extern volatile __bit CCP1IF __attribute__((address(0x7CF2)));


extern volatile __bit CCP1IP __attribute__((address(0x7CFA)));


extern volatile __bit CCP1M0 __attribute__((address(0x7DE8)));


extern volatile __bit CCP1M1 __attribute__((address(0x7DE9)));


extern volatile __bit CCP1M2 __attribute__((address(0x7DEA)));


extern volatile __bit CCP1M3 __attribute__((address(0x7DEB)));


extern volatile __bit CCP2IE __attribute__((address(0x7D00)));


extern volatile __bit CCP2IF __attribute__((address(0x7D08)));


extern volatile __bit CCP2IP __attribute__((address(0x7D10)));


extern volatile __bit CCP2M0 __attribute__((address(0x7DD0)));


extern volatile __bit CCP2M1 __attribute__((address(0x7DD1)));


extern volatile __bit CCP2M2 __attribute__((address(0x7DD2)));


extern volatile __bit CCP2M3 __attribute__((address(0x7DD3)));


extern volatile __bit CCP2_PA2 __attribute__((address(0x7C0B)));


extern volatile __bit CCP9E __attribute__((address(0x7C23)));


extern volatile __bit CFGS __attribute__((address(0x7D36)));


extern volatile __bit CHS0 __attribute__((address(0x7E12)));


extern volatile __bit CHS1 __attribute__((address(0x7E13)));


extern volatile __bit CHS2 __attribute__((address(0x7E14)));


extern volatile __bit CHS3 __attribute__((address(0x7E15)));


extern volatile __bit CK __attribute__((address(0x7C16)));


extern volatile __bit CKE __attribute__((address(0x7E3E)));


extern volatile __bit CKP __attribute__((address(0x7E34)));


extern volatile __bit CKTXP __attribute__((address(0x7DC4)));


extern volatile __bit CMIE __attribute__((address(0x7D06)));


extern volatile __bit CMIF __attribute__((address(0x7D0E)));


extern volatile __bit CMIP __attribute__((address(0x7D16)));


extern volatile __bit CREN __attribute__((address(0x7D5C)));


extern volatile __bit CS __attribute__((address(0x7C22)));


extern volatile __bit CSRC __attribute__((address(0x7D67)));


extern volatile __bit CSRC1 __attribute__((address(0x7D67)));


extern volatile __bit CVR0 __attribute__((address(0x7DA8)));


extern volatile __bit CVR1 __attribute__((address(0x7DA9)));


extern volatile __bit CVR2 __attribute__((address(0x7DAA)));


extern volatile __bit CVR3 __attribute__((address(0x7DAB)));


extern volatile __bit CVREF __attribute__((address(0x7C02)));


extern volatile __bit CVREN __attribute__((address(0x7DAF)));


extern volatile __bit CVROE __attribute__((address(0x7DAE)));


extern volatile __bit CVROEN __attribute__((address(0x7DAE)));


extern volatile __bit CVRR __attribute__((address(0x7DAD)));


extern volatile __bit CVRSS __attribute__((address(0x7DAC)));


extern volatile __bit DA __attribute__((address(0x7E3D)));


extern volatile __bit DC __attribute__((address(0x7EC1)));


extern volatile __bit DC1B0 __attribute__((address(0x7DEC)));


extern volatile __bit DC1B1 __attribute__((address(0x7DED)));


extern volatile __bit DC2B0 __attribute__((address(0x7DD4)));


extern volatile __bit DC2B1 __attribute__((address(0x7DD5)));


extern volatile __bit DONE __attribute__((address(0x7E11)));


extern volatile __bit DT __attribute__((address(0x7C17)));


extern volatile __bit DTRXP __attribute__((address(0x7DC5)));


extern volatile __bit D_A __attribute__((address(0x7E3D)));


extern volatile __bit D_NOT_A __attribute__((address(0x7E3D)));


extern volatile __bit D_nA __attribute__((address(0x7E3D)));


extern volatile __bit EBDIS __attribute__((address(0x7E5F)));


extern volatile __bit ECCPAS0 __attribute__((address(0x7DB4)));


extern volatile __bit ECCPAS1 __attribute__((address(0x7DB5)));


extern volatile __bit ECCPAS2 __attribute__((address(0x7DB6)));


extern volatile __bit ECCPASE __attribute__((address(0x7DB7)));


extern volatile __bit EEADR0 __attribute__((address(0x7D48)));


extern volatile __bit EEADR1 __attribute__((address(0x7D49)));


extern volatile __bit EEADR2 __attribute__((address(0x7D4A)));


extern volatile __bit EEADR3 __attribute__((address(0x7D4B)));


extern volatile __bit EEADR4 __attribute__((address(0x7D4C)));


extern volatile __bit EEADR5 __attribute__((address(0x7D4D)));


extern volatile __bit EEADR6 __attribute__((address(0x7D4E)));


extern volatile __bit EEADR7 __attribute__((address(0x7D4F)));


extern volatile __bit EEADR8 __attribute__((address(0x7D50)));


extern volatile __bit EEADR9 __attribute__((address(0x7D51)));


extern volatile __bit EEFS __attribute__((address(0x7D36)));


extern volatile __bit EEIE __attribute__((address(0x7D04)));


extern volatile __bit EEIF __attribute__((address(0x7D0C)));


extern volatile __bit EEIP __attribute__((address(0x7D14)));


extern volatile __bit EEPGD __attribute__((address(0x7D37)));


extern volatile __bit FERR __attribute__((address(0x7D5A)));


extern volatile __bit FLT0 __attribute__((address(0x7C08)));


extern volatile __bit FREE __attribute__((address(0x7D34)));


extern volatile __bit FVREN __attribute__((address(0x7DA7)));


extern volatile __bit FVRST __attribute__((address(0x7DA6)));


extern volatile __bit GCEN __attribute__((address(0x7E2F)));


extern volatile __bit GIE __attribute__((address(0x7F97)));


extern volatile __bit GIEH __attribute__((address(0x7F97)));


extern volatile __bit GIEL __attribute__((address(0x7F96)));


extern volatile __bit GIE_GIEH __attribute__((address(0x7F97)));


extern volatile __bit GO __attribute__((address(0x7E11)));


extern volatile __bit GODONE __attribute__((address(0x7E11)));


extern volatile __bit GO_DONE __attribute__((address(0x7E11)));


extern volatile __bit GO_NOT_DONE __attribute__((address(0x7E11)));


extern volatile __bit GO_nDONE __attribute__((address(0x7E11)));


extern volatile __bit HLVDEN __attribute__((address(0x7E94)));


extern volatile __bit HLVDIE __attribute__((address(0x7D02)));


extern volatile __bit HLVDIF __attribute__((address(0x7D0A)));


extern volatile __bit HLVDIN __attribute__((address(0x7C05)));


extern volatile __bit HLVDIP __attribute__((address(0x7D12)));


extern volatile __bit HLVDL0 __attribute__((address(0x7E90)));


extern volatile __bit HLVDL1 __attribute__((address(0x7E91)));


extern volatile __bit HLVDL2 __attribute__((address(0x7E92)));


extern volatile __bit HLVDL3 __attribute__((address(0x7E93)));


extern volatile __bit IBF __attribute__((address(0x7CB7)));


extern volatile __bit IBOV __attribute__((address(0x7CB5)));


extern volatile __bit IDLEN __attribute__((address(0x7E9F)));


extern volatile __bit INT0 __attribute__((address(0x7C08)));


extern volatile __bit INT0E __attribute__((address(0x7F94)));


extern volatile __bit INT0F __attribute__((address(0x7F91)));


extern volatile __bit INT0IE __attribute__((address(0x7F94)));


extern volatile __bit INT0IF __attribute__((address(0x7F91)));


extern volatile __bit INT1 __attribute__((address(0x7C09)));


extern volatile __bit INT1E __attribute__((address(0x7F83)));


extern volatile __bit INT1F __attribute__((address(0x7F80)));


extern volatile __bit INT1IE __attribute__((address(0x7F83)));


extern volatile __bit INT1IF __attribute__((address(0x7F80)));


extern volatile __bit INT1IP __attribute__((address(0x7F86)));


extern volatile __bit INT1P __attribute__((address(0x7F86)));


extern volatile __bit INT2 __attribute__((address(0x7C0A)));


extern volatile __bit INT2E __attribute__((address(0x7F84)));


extern volatile __bit INT2F __attribute__((address(0x7F81)));


extern volatile __bit INT2IE __attribute__((address(0x7F84)));


extern volatile __bit INT2IF __attribute__((address(0x7F81)));


extern volatile __bit INT2IP __attribute__((address(0x7F87)));


extern volatile __bit INT2P __attribute__((address(0x7F87)));


extern volatile __bit INTEDG0 __attribute__((address(0x7F8E)));


extern volatile __bit INTEDG1 __attribute__((address(0x7F8D)));


extern volatile __bit INTEDG2 __attribute__((address(0x7F8C)));


extern volatile __bit INTSRC __attribute__((address(0x7CDF)));


extern volatile __bit IOCB4 __attribute__((address(0x7BEC)));


extern volatile __bit IOCB5 __attribute__((address(0x7BED)));


extern volatile __bit IOCB6 __attribute__((address(0x7BEE)));


extern volatile __bit IOCB7 __attribute__((address(0x7BEF)));


extern volatile __bit IOFS __attribute__((address(0x7E9A)));


extern volatile __bit IPEN __attribute__((address(0x7E87)));


extern volatile __bit IRCF0 __attribute__((address(0x7E9C)));


extern volatile __bit IRCF1 __attribute__((address(0x7E9D)));


extern volatile __bit IRCF2 __attribute__((address(0x7E9E)));


extern volatile __bit IRVST __attribute__((address(0x7E95)));


extern volatile __bit IVRST __attribute__((address(0x7E95)));


extern volatile __bit KBI0 __attribute__((address(0x7C0C)));


extern volatile __bit KBI1 __attribute__((address(0x7C0D)));


extern volatile __bit KBI2 __attribute__((address(0x7C0E)));


extern volatile __bit KBI3 __attribute__((address(0x7C0F)));


extern volatile __bit LA0 __attribute__((address(0x7C48)));


extern volatile __bit LA1 __attribute__((address(0x7C49)));


extern volatile __bit LA2 __attribute__((address(0x7C4A)));


extern volatile __bit LA3 __attribute__((address(0x7C4B)));


extern volatile __bit LA4 __attribute__((address(0x7C4C)));


extern volatile __bit LA5 __attribute__((address(0x7C4D)));


extern volatile __bit LA6 __attribute__((address(0x7C4E)));


extern volatile __bit LA7 __attribute__((address(0x7C4F)));


extern volatile __bit LATA0 __attribute__((address(0x7C48)));


extern volatile __bit LATA1 __attribute__((address(0x7C49)));


extern volatile __bit LATA2 __attribute__((address(0x7C4A)));


extern volatile __bit LATA3 __attribute__((address(0x7C4B)));


extern volatile __bit LATA4 __attribute__((address(0x7C4C)));


extern volatile __bit LATA5 __attribute__((address(0x7C4D)));


extern volatile __bit LATA6 __attribute__((address(0x7C4E)));


extern volatile __bit LATA7 __attribute__((address(0x7C4F)));


extern volatile __bit LATB0 __attribute__((address(0x7C50)));


extern volatile __bit LATB1 __attribute__((address(0x7C51)));


extern volatile __bit LATB2 __attribute__((address(0x7C52)));


extern volatile __bit LATB3 __attribute__((address(0x7C53)));


extern volatile __bit LATB4 __attribute__((address(0x7C54)));


extern volatile __bit LATB5 __attribute__((address(0x7C55)));


extern volatile __bit LATB6 __attribute__((address(0x7C56)));


extern volatile __bit LATB7 __attribute__((address(0x7C57)));


extern volatile __bit LATC0 __attribute__((address(0x7C58)));


extern volatile __bit LATC1 __attribute__((address(0x7C59)));


extern volatile __bit LATC2 __attribute__((address(0x7C5A)));


extern volatile __bit LATC3 __attribute__((address(0x7C5B)));


extern volatile __bit LATC4 __attribute__((address(0x7C5C)));


extern volatile __bit LATC5 __attribute__((address(0x7C5D)));


extern volatile __bit LATC6 __attribute__((address(0x7C5E)));


extern volatile __bit LATC7 __attribute__((address(0x7C5F)));


extern volatile __bit LATD0 __attribute__((address(0x7C60)));


extern volatile __bit LATD1 __attribute__((address(0x7C61)));


extern volatile __bit LATD2 __attribute__((address(0x7C62)));


extern volatile __bit LATD3 __attribute__((address(0x7C63)));


extern volatile __bit LATD4 __attribute__((address(0x7C64)));


extern volatile __bit LATD5 __attribute__((address(0x7C65)));


extern volatile __bit LATD6 __attribute__((address(0x7C66)));


extern volatile __bit LATD7 __attribute__((address(0x7C67)));


extern volatile __bit LATE0 __attribute__((address(0x7C68)));


extern volatile __bit LATE1 __attribute__((address(0x7C69)));


extern volatile __bit LATE2 __attribute__((address(0x7C6A)));


extern volatile __bit LB0 __attribute__((address(0x7C50)));


extern volatile __bit LB1 __attribute__((address(0x7C51)));


extern volatile __bit LB2 __attribute__((address(0x7C52)));


extern volatile __bit LB3 __attribute__((address(0x7C53)));


extern volatile __bit LB4 __attribute__((address(0x7C54)));


extern volatile __bit LB5 __attribute__((address(0x7C55)));


extern volatile __bit LB6 __attribute__((address(0x7C56)));


extern volatile __bit LB7 __attribute__((address(0x7C57)));


extern volatile __bit LC0 __attribute__((address(0x7C58)));


extern volatile __bit LC1 __attribute__((address(0x7C59)));


extern volatile __bit LC2 __attribute__((address(0x7C5A)));


extern volatile __bit LC3 __attribute__((address(0x7C5B)));


extern volatile __bit LC4 __attribute__((address(0x7C5C)));


extern volatile __bit LC5 __attribute__((address(0x7C5D)));


extern volatile __bit LC6 __attribute__((address(0x7C5E)));


extern volatile __bit LC7 __attribute__((address(0x7C5F)));


extern volatile __bit LD0 __attribute__((address(0x7C60)));


extern volatile __bit LD1 __attribute__((address(0x7C61)));


extern volatile __bit LD2 __attribute__((address(0x7C62)));


extern volatile __bit LD3 __attribute__((address(0x7C63)));


extern volatile __bit LD4 __attribute__((address(0x7C64)));


extern volatile __bit LD5 __attribute__((address(0x7C65)));


extern volatile __bit LD6 __attribute__((address(0x7C66)));


extern volatile __bit LD7 __attribute__((address(0x7C67)));


extern volatile __bit LE0 __attribute__((address(0x7C68)));


extern volatile __bit LE1 __attribute__((address(0x7C69)));


extern volatile __bit LE2 __attribute__((address(0x7C6A)));


extern volatile __bit LVDEN __attribute__((address(0x7E94)));


extern volatile __bit LVDIE __attribute__((address(0x7D02)));


extern volatile __bit LVDIF __attribute__((address(0x7D0A)));


extern volatile __bit LVDIN __attribute__((address(0x7C05)));


extern volatile __bit LVDIP __attribute__((address(0x7D12)));


extern volatile __bit LVDL0 __attribute__((address(0x7E90)));


extern volatile __bit LVDL1 __attribute__((address(0x7E91)));


extern volatile __bit LVDL2 __attribute__((address(0x7E92)));


extern volatile __bit LVDL3 __attribute__((address(0x7E93)));


extern volatile __bit LVV0 __attribute__((address(0x7E90)));


extern volatile __bit LVV1 __attribute__((address(0x7E91)));


extern volatile __bit LVV2 __attribute__((address(0x7E92)));


extern volatile __bit LVV3 __attribute__((address(0x7E93)));


extern volatile __bit MC1OUT __attribute__((address(0x7BCF)));


extern volatile __bit MC2OUT __attribute__((address(0x7BCE)));


extern volatile __bit MCLR __attribute__((address(0x7C23)));


extern volatile __bit MSK0 __attribute__((address(0x7BB8)));


extern volatile __bit MSK1 __attribute__((address(0x7BB9)));


extern volatile __bit MSK2 __attribute__((address(0x7BBA)));


extern volatile __bit MSK3 __attribute__((address(0x7BBB)));


extern volatile __bit MSK4 __attribute__((address(0x7BBC)));


extern volatile __bit MSK5 __attribute__((address(0x7BBD)));


extern volatile __bit MSK6 __attribute__((address(0x7BBE)));


extern volatile __bit MSK7 __attribute__((address(0x7BBF)));


extern volatile __bit NEGATIVE __attribute__((address(0x7EC4)));


extern volatile __bit NOT_A __attribute__((address(0x7E3D)));


extern volatile __bit NOT_ADDRESS __attribute__((address(0x7E3D)));


extern volatile __bit NOT_BOR __attribute__((address(0x7E80)));


extern volatile __bit NOT_CS __attribute__((address(0x7C22)));


extern volatile __bit NOT_DONE __attribute__((address(0x7E11)));


extern volatile __bit NOT_MCLR __attribute__((address(0x7C23)));


extern volatile __bit NOT_PD __attribute__((address(0x7E82)));


extern volatile __bit NOT_POR __attribute__((address(0x7E81)));


extern volatile __bit NOT_RBPU __attribute__((address(0x7F8F)));


extern volatile __bit NOT_RD __attribute__((address(0x7C20)));


extern volatile __bit NOT_RI __attribute__((address(0x7E84)));


extern volatile __bit NOT_SS __attribute__((address(0x7C05)));


extern volatile __bit NOT_T1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit NOT_T3SYNC __attribute__((address(0x7D8A)));


extern volatile __bit NOT_TO __attribute__((address(0x7E83)));


extern volatile __bit NOT_W __attribute__((address(0x7E3A)));


extern volatile __bit NOT_WR __attribute__((address(0x7C21)));


extern volatile __bit NOT_WRITE __attribute__((address(0x7E3A)));


extern volatile __bit OBF __attribute__((address(0x7CB6)));


extern volatile __bit OERR __attribute__((address(0x7D59)));


extern volatile __bit OSCFIE __attribute__((address(0x7D07)));


extern volatile __bit OSCFIF __attribute__((address(0x7D0F)));


extern volatile __bit OSCFIP __attribute__((address(0x7D17)));


extern volatile __bit OSTS __attribute__((address(0x7E9B)));


extern volatile __bit OV __attribute__((address(0x7EC3)));


extern volatile __bit OVERFLOW __attribute__((address(0x7EC3)));


extern volatile __bit P1A __attribute__((address(0x7C12)));


extern volatile __bit P1B __attribute__((address(0x7C1D)));


extern volatile __bit P1C __attribute__((address(0x7C1E)));


extern volatile __bit P1D __attribute__((address(0x7C1F)));


extern volatile __bit P1M0 __attribute__((address(0x7DEE)));


extern volatile __bit P1M1 __attribute__((address(0x7DEF)));


extern volatile __bit PA1 __attribute__((address(0x7C12)));


extern volatile __bit PA2 __attribute__((address(0x7C11)));


extern volatile __bit PB2 __attribute__((address(0x7C22)));


extern volatile __bit PC2 __attribute__((address(0x7C21)));


extern volatile __bit PC3E __attribute__((address(0x7C23)));


extern volatile __bit PD __attribute__((address(0x7E82)));


extern volatile __bit PD2 __attribute__((address(0x7C20)));


extern volatile __bit PDC0 __attribute__((address(0x7DB8)));


extern volatile __bit PDC1 __attribute__((address(0x7DB9)));


extern volatile __bit PDC2 __attribute__((address(0x7DBA)));


extern volatile __bit PDC3 __attribute__((address(0x7DBB)));


extern volatile __bit PDC4 __attribute__((address(0x7DBC)));


extern volatile __bit PDC5 __attribute__((address(0x7DBD)));


extern volatile __bit PDC6 __attribute__((address(0x7DBE)));


extern volatile __bit PEIE __attribute__((address(0x7F96)));


extern volatile __bit PEIE_GIEL __attribute__((address(0x7F96)));


extern volatile __bit PEN __attribute__((address(0x7E2A)));


extern volatile __bit PGC __attribute__((address(0x7C0E)));


extern volatile __bit PGD __attribute__((address(0x7C0F)));


extern volatile __bit PGM __attribute__((address(0x7C0D)));


extern volatile __bit PLLEN __attribute__((address(0x7CDE)));


extern volatile __bit POR __attribute__((address(0x7E81)));


extern volatile __bit PRSEN __attribute__((address(0x7DBF)));


extern volatile __bit PSA __attribute__((address(0x7EAB)));


extern volatile __bit PSP0 __attribute__((address(0x7C18)));


extern volatile __bit PSP1 __attribute__((address(0x7C19)));


extern volatile __bit PSP2 __attribute__((address(0x7C1A)));


extern volatile __bit PSP3 __attribute__((address(0x7C1B)));


extern volatile __bit PSP4 __attribute__((address(0x7C1C)));


extern volatile __bit PSP5 __attribute__((address(0x7C1D)));


extern volatile __bit PSP6 __attribute__((address(0x7C1E)));


extern volatile __bit PSP7 __attribute__((address(0x7C1F)));


extern volatile __bit PSPIE __attribute__((address(0x7CEF)));


extern volatile __bit PSPIF __attribute__((address(0x7CF7)));


extern volatile __bit PSPIP __attribute__((address(0x7CFF)));


extern volatile __bit PSPMODE __attribute__((address(0x7CB4)));


extern volatile __bit PSSAC0 __attribute__((address(0x7DB2)));


extern volatile __bit PSSAC1 __attribute__((address(0x7DB3)));


extern volatile __bit PSSBD0 __attribute__((address(0x7DB0)));


extern volatile __bit PSSBD1 __attribute__((address(0x7DB1)));


extern volatile __bit __attribute__((__deprecated__)) RA0 __attribute__((address(0x7C00)));


extern volatile __bit __attribute__((__deprecated__)) RA1 __attribute__((address(0x7C01)));


extern volatile __bit __attribute__((__deprecated__)) RA2 __attribute__((address(0x7C02)));


extern volatile __bit __attribute__((__deprecated__)) RA3 __attribute__((address(0x7C03)));


extern volatile __bit __attribute__((__deprecated__)) RA4 __attribute__((address(0x7C04)));


extern volatile __bit __attribute__((__deprecated__)) RA5 __attribute__((address(0x7C05)));


extern volatile __bit __attribute__((__deprecated__)) RA6 __attribute__((address(0x7C06)));


extern volatile __bit __attribute__((__deprecated__)) RA7 __attribute__((address(0x7C07)));


extern volatile __bit __attribute__((__deprecated__)) RB0 __attribute__((address(0x7C08)));


extern volatile __bit __attribute__((__deprecated__)) RB1 __attribute__((address(0x7C09)));


extern volatile __bit __attribute__((__deprecated__)) RB2 __attribute__((address(0x7C0A)));


extern volatile __bit __attribute__((__deprecated__)) RB3 __attribute__((address(0x7C0B)));


extern volatile __bit __attribute__((__deprecated__)) RB4 __attribute__((address(0x7C0C)));


extern volatile __bit __attribute__((__deprecated__)) RB5 __attribute__((address(0x7C0D)));


extern volatile __bit __attribute__((__deprecated__)) RB6 __attribute__((address(0x7C0E)));


extern volatile __bit __attribute__((__deprecated__)) RB7 __attribute__((address(0x7C0F)));


extern volatile __bit RBIE __attribute__((address(0x7F93)));


extern volatile __bit RBIF __attribute__((address(0x7F90)));


extern volatile __bit RBIP __attribute__((address(0x7F88)));


extern volatile __bit RBPU __attribute__((address(0x7F8F)));


extern volatile __bit __attribute__((__deprecated__)) RC0 __attribute__((address(0x7C10)));


extern volatile __bit __attribute__((__deprecated__)) RC1 __attribute__((address(0x7C11)));


extern volatile __bit RC1IE __attribute__((address(0x7CED)));


extern volatile __bit RC1IF __attribute__((address(0x7CF5)));


extern volatile __bit RC1IP __attribute__((address(0x7CFD)));


extern volatile __bit __attribute__((__deprecated__)) RC2 __attribute__((address(0x7C12)));


extern volatile __bit __attribute__((__deprecated__)) RC3 __attribute__((address(0x7C13)));


extern volatile __bit __attribute__((__deprecated__)) RC4 __attribute__((address(0x7C14)));


extern volatile __bit __attribute__((__deprecated__)) RC5 __attribute__((address(0x7C15)));


extern volatile __bit __attribute__((__deprecated__)) RC6 __attribute__((address(0x7C16)));


extern volatile __bit __attribute__((__deprecated__)) RC7 __attribute__((address(0x7C17)));


extern volatile __bit RC8_9 __attribute__((address(0x7D5E)));


extern volatile __bit RC9 __attribute__((address(0x7D5E)));


extern volatile __bit RCD8 __attribute__((address(0x7D58)));


extern volatile __bit RCEN __attribute__((address(0x7E2B)));


extern volatile __bit RCIDL __attribute__((address(0x7DC6)));


extern volatile __bit RCIE __attribute__((address(0x7CED)));


extern volatile __bit RCIF __attribute__((address(0x7CF5)));


extern volatile __bit RCIP __attribute__((address(0x7CFD)));


extern volatile __bit __attribute__((__deprecated__)) RD __attribute__((address(0x7D30)));


extern volatile __bit __attribute__((__deprecated__)) RD0 __attribute__((address(0x7C18)));


extern volatile __bit __attribute__((__deprecated__)) RD1 __attribute__((address(0x7C19)));


extern volatile __bit RD163 __attribute__((address(0x7D8F)));


extern volatile __bit __attribute__((__deprecated__)) RD2 __attribute__((address(0x7C1A)));


extern volatile __bit __attribute__((__deprecated__)) RD3 __attribute__((address(0x7C1B)));


extern volatile __bit __attribute__((__deprecated__)) RD4 __attribute__((address(0x7C1C)));


extern volatile __bit __attribute__((__deprecated__)) RD5 __attribute__((address(0x7C1D)));


extern volatile __bit __attribute__((__deprecated__)) RD6 __attribute__((address(0x7C1E)));


extern volatile __bit __attribute__((__deprecated__)) RD7 __attribute__((address(0x7C1F)));


extern volatile __bit RDE __attribute__((address(0x7C20)));


extern volatile __bit __attribute__((__deprecated__)) RE0 __attribute__((address(0x7C20)));


extern volatile __bit __attribute__((__deprecated__)) RE1 __attribute__((address(0x7C21)));


extern volatile __bit __attribute__((__deprecated__)) RE2 __attribute__((address(0x7C22)));


extern volatile __bit RE3 __attribute__((address(0x7C23)));


extern volatile __bit RI __attribute__((address(0x7E84)));


extern volatile __bit RJPU __attribute__((address(0x7C07)));


extern volatile __bit RSEN __attribute__((address(0x7E29)));


extern volatile __bit RW __attribute__((address(0x7E3A)));


extern volatile __bit RX __attribute__((address(0x7C17)));


extern volatile __bit RX9 __attribute__((address(0x7D5E)));


extern volatile __bit RX9D __attribute__((address(0x7D58)));


extern volatile __bit RXCKP __attribute__((address(0x7DC5)));


extern volatile __bit R_NOT_W __attribute__((address(0x7E3A)));


extern volatile __bit R_W __attribute__((address(0x7E3A)));


extern volatile __bit R_nW __attribute__((address(0x7E3A)));


extern volatile __bit SBOREN __attribute__((address(0x7E86)));


extern volatile __bit SCK __attribute__((address(0x7C13)));


extern volatile __bit SCKP __attribute__((address(0x7DC4)));


extern volatile __bit SCL __attribute__((address(0x7C13)));


extern volatile __bit SCS0 __attribute__((address(0x7E98)));


extern volatile __bit SCS1 __attribute__((address(0x7E99)));


extern volatile __bit SDA __attribute__((address(0x7C14)));


extern volatile __bit SDI __attribute__((address(0x7C14)));


extern volatile __bit SDO __attribute__((address(0x7C15)));


extern volatile __bit SEN __attribute__((address(0x7E28)));


extern volatile __bit SENDB __attribute__((address(0x7D63)));


extern volatile __bit SENDB1 __attribute__((address(0x7D63)));


extern volatile __bit SLRA __attribute__((address(0x7BC0)));


extern volatile __bit SLRB __attribute__((address(0x7BC1)));


extern volatile __bit SLRC __attribute__((address(0x7BC2)));


extern volatile __bit SLRD __attribute__((address(0x7BC3)));


extern volatile __bit SLRE __attribute__((address(0x7BC4)));


extern volatile __bit SMP __attribute__((address(0x7E3F)));


extern volatile __bit SOSCEN __attribute__((address(0x7E6B)));


extern volatile __bit SOSCEN3 __attribute__((address(0x7D8B)));


extern volatile __bit SP0 __attribute__((address(0x7FE0)));


extern volatile __bit SP1 __attribute__((address(0x7FE1)));


extern volatile __bit SP2 __attribute__((address(0x7FE2)));


extern volatile __bit SP3 __attribute__((address(0x7FE3)));


extern volatile __bit SP4 __attribute__((address(0x7FE4)));


extern volatile __bit SPEN __attribute__((address(0x7D5F)));


extern volatile __bit SREN __attribute__((address(0x7D5D)));


extern volatile __bit SRENA __attribute__((address(0x7D5D)));


extern volatile __bit SS __attribute__((address(0x7C05)));


extern volatile __bit SS2 __attribute__((address(0x7C1F)));


extern volatile __bit SSPEN __attribute__((address(0x7E35)));


extern volatile __bit SSPIE __attribute__((address(0x7CEB)));


extern volatile __bit SSPIF __attribute__((address(0x7CF3)));


extern volatile __bit SSPIP __attribute__((address(0x7CFB)));


extern volatile __bit SSPM0 __attribute__((address(0x7E30)));


extern volatile __bit SSPM1 __attribute__((address(0x7E31)));


extern volatile __bit SSPM2 __attribute__((address(0x7E32)));


extern volatile __bit SSPM3 __attribute__((address(0x7E33)));


extern volatile __bit SSPOV __attribute__((address(0x7E36)));


extern volatile __bit START __attribute__((address(0x7E3B)));


extern volatile __bit STKFUL __attribute__((address(0x7FE7)));


extern volatile __bit STKOVF __attribute__((address(0x7FE7)));


extern volatile __bit STKUNF __attribute__((address(0x7FE6)));


extern volatile __bit STOP __attribute__((address(0x7E3C)));


extern volatile __bit STRA __attribute__((address(0x7DC8)));


extern volatile __bit STRB __attribute__((address(0x7DC9)));


extern volatile __bit STRC __attribute__((address(0x7DCA)));


extern volatile __bit STRD __attribute__((address(0x7DCB)));


extern volatile __bit STRSYNC __attribute__((address(0x7DCC)));


extern volatile __bit SWDTE __attribute__((address(0x7E88)));


extern volatile __bit SWDTEN __attribute__((address(0x7E88)));


extern volatile __bit SYNC __attribute__((address(0x7D64)));


extern volatile __bit SYNC1 __attribute__((address(0x7D64)));


extern volatile __bit T08BIT __attribute__((address(0x7EAE)));


extern volatile __bit T0CKI __attribute__((address(0x7C04)));


extern volatile __bit T0CS __attribute__((address(0x7EAD)));


extern volatile __bit T0IE __attribute__((address(0x7F95)));


extern volatile __bit T0IF __attribute__((address(0x7F92)));


extern volatile __bit T0PS0 __attribute__((address(0x7EA8)));


extern volatile __bit T0PS1 __attribute__((address(0x7EA9)));


extern volatile __bit T0PS2 __attribute__((address(0x7EAA)));


extern volatile __bit T0SE __attribute__((address(0x7EAC)));


extern volatile __bit T13CKI __attribute__((address(0x7C10)));


extern volatile __bit T1CKI __attribute__((address(0x7C10)));


extern volatile __bit T1CKPS0 __attribute__((address(0x7E6C)));


extern volatile __bit T1CKPS1 __attribute__((address(0x7E6D)));


extern volatile __bit T1OSCEN __attribute__((address(0x7E6B)));


extern volatile __bit T1OSI __attribute__((address(0x7C11)));


extern volatile __bit T1OSO __attribute__((address(0x7C10)));


extern volatile __bit T1RD16 __attribute__((address(0x7E6F)));


extern volatile __bit T1RUN __attribute__((address(0x7E6E)));


extern volatile __bit T1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit T2CKPS0 __attribute__((address(0x7E50)));


extern volatile __bit T2CKPS1 __attribute__((address(0x7E51)));


extern volatile __bit T2OUTPS0 __attribute__((address(0x7E53)));


extern volatile __bit T2OUTPS1 __attribute__((address(0x7E54)));


extern volatile __bit T2OUTPS2 __attribute__((address(0x7E55)));


extern volatile __bit T2OUTPS3 __attribute__((address(0x7E56)));


extern volatile __bit T3CCP1 __attribute__((address(0x7D8B)));


extern volatile __bit T3CCP2 __attribute__((address(0x7D8E)));


extern volatile __bit T3CKI __attribute__((address(0x7C10)));


extern volatile __bit T3CKPS0 __attribute__((address(0x7D8C)));


extern volatile __bit T3CKPS1 __attribute__((address(0x7D8D)));


extern volatile __bit T3RD16 __attribute__((address(0x7D8F)));


extern volatile __bit T3SYNC __attribute__((address(0x7D8A)));


extern volatile __bit TMR0IE __attribute__((address(0x7F95)));


extern volatile __bit TMR0IF __attribute__((address(0x7F92)));


extern volatile __bit TMR0IP __attribute__((address(0x7F8A)));


extern volatile __bit TMR0ON __attribute__((address(0x7EAF)));


extern volatile __bit TMR1CS __attribute__((address(0x7E69)));


extern volatile __bit TMR1IE __attribute__((address(0x7CE8)));


extern volatile __bit TMR1IF __attribute__((address(0x7CF0)));


extern volatile __bit TMR1IP __attribute__((address(0x7CF8)));


extern volatile __bit TMR1ON __attribute__((address(0x7E68)));


extern volatile __bit TMR2IE __attribute__((address(0x7CE9)));


extern volatile __bit TMR2IF __attribute__((address(0x7CF1)));


extern volatile __bit TMR2IP __attribute__((address(0x7CF9)));


extern volatile __bit TMR2ON __attribute__((address(0x7E52)));


extern volatile __bit TMR3CS __attribute__((address(0x7D89)));


extern volatile __bit TMR3IE __attribute__((address(0x7D01)));


extern volatile __bit TMR3IF __attribute__((address(0x7D09)));


extern volatile __bit TMR3IP __attribute__((address(0x7D11)));


extern volatile __bit TMR3ON __attribute__((address(0x7D88)));


extern volatile __bit TO __attribute__((address(0x7E83)));


extern volatile __bit TRISA0 __attribute__((address(0x7C90)));


extern volatile __bit TRISA1 __attribute__((address(0x7C91)));


extern volatile __bit TRISA2 __attribute__((address(0x7C92)));


extern volatile __bit TRISA3 __attribute__((address(0x7C93)));


extern volatile __bit TRISA4 __attribute__((address(0x7C94)));


extern volatile __bit TRISA5 __attribute__((address(0x7C95)));


extern volatile __bit TRISA6 __attribute__((address(0x7C96)));


extern volatile __bit TRISA7 __attribute__((address(0x7C97)));


extern volatile __bit TRISB0 __attribute__((address(0x7C98)));


extern volatile __bit TRISB1 __attribute__((address(0x7C99)));


extern volatile __bit TRISB2 __attribute__((address(0x7C9A)));


extern volatile __bit TRISB3 __attribute__((address(0x7C9B)));


extern volatile __bit TRISB4 __attribute__((address(0x7C9C)));


extern volatile __bit TRISB5 __attribute__((address(0x7C9D)));


extern volatile __bit TRISB6 __attribute__((address(0x7C9E)));


extern volatile __bit TRISB7 __attribute__((address(0x7C9F)));


extern volatile __bit TRISC0 __attribute__((address(0x7CA0)));


extern volatile __bit TRISC1 __attribute__((address(0x7CA1)));


extern volatile __bit TRISC2 __attribute__((address(0x7CA2)));


extern volatile __bit TRISC3 __attribute__((address(0x7CA3)));


extern volatile __bit TRISC4 __attribute__((address(0x7CA4)));


extern volatile __bit TRISC5 __attribute__((address(0x7CA5)));


extern volatile __bit TRISC6 __attribute__((address(0x7CA6)));


extern volatile __bit TRISC7 __attribute__((address(0x7CA7)));


extern volatile __bit TRISD0 __attribute__((address(0x7CA8)));


extern volatile __bit TRISD1 __attribute__((address(0x7CA9)));


extern volatile __bit TRISD2 __attribute__((address(0x7CAA)));


extern volatile __bit TRISD3 __attribute__((address(0x7CAB)));


extern volatile __bit TRISD4 __attribute__((address(0x7CAC)));


extern volatile __bit TRISD5 __attribute__((address(0x7CAD)));


extern volatile __bit TRISD6 __attribute__((address(0x7CAE)));


extern volatile __bit TRISD7 __attribute__((address(0x7CAF)));


extern volatile __bit TRISE0 __attribute__((address(0x7CB0)));


extern volatile __bit TRISE1 __attribute__((address(0x7CB1)));


extern volatile __bit TRISE2 __attribute__((address(0x7CB2)));


extern volatile __bit TRMT __attribute__((address(0x7D61)));


extern volatile __bit TRMT1 __attribute__((address(0x7D61)));


extern volatile __bit TUN0 __attribute__((address(0x7CD8)));


extern volatile __bit TUN1 __attribute__((address(0x7CD9)));


extern volatile __bit TUN2 __attribute__((address(0x7CDA)));


extern volatile __bit TUN3 __attribute__((address(0x7CDB)));


extern volatile __bit TUN4 __attribute__((address(0x7CDC)));


extern volatile __bit TUN5 __attribute__((address(0x7CDD)));


extern volatile __bit TX __attribute__((address(0x7C16)));


extern volatile __bit TX1IE __attribute__((address(0x7CEC)));


extern volatile __bit TX1IF __attribute__((address(0x7CF4)));


extern volatile __bit TX1IP __attribute__((address(0x7CFC)));


extern volatile __bit TX8_9 __attribute__((address(0x7D66)));


extern volatile __bit TX9 __attribute__((address(0x7D66)));


extern volatile __bit TX91 __attribute__((address(0x7D66)));


extern volatile __bit TX9D __attribute__((address(0x7D60)));


extern volatile __bit TX9D1 __attribute__((address(0x7D60)));


extern volatile __bit TXD8 __attribute__((address(0x7D60)));


extern volatile __bit TXEN __attribute__((address(0x7D65)));


extern volatile __bit TXEN1 __attribute__((address(0x7D65)));


extern volatile __bit TXIE __attribute__((address(0x7CEC)));


extern volatile __bit TXIF __attribute__((address(0x7CF4)));


extern volatile __bit TXIP __attribute__((address(0x7CFC)));


extern volatile __bit UA __attribute__((address(0x7E39)));


extern volatile __bit ULPWUIN __attribute__((address(0x7C00)));


extern volatile __bit VCFG0 __attribute__((address(0x7E0C)));


extern volatile __bit VCFG01 __attribute__((address(0x7E0C)));


extern volatile __bit VCFG1 __attribute__((address(0x7E0D)));


extern volatile __bit VCFG11 __attribute__((address(0x7E0D)));


extern volatile __bit VDIRMAG __attribute__((address(0x7E97)));


extern volatile __bit VPP __attribute__((address(0x7C23)));


extern volatile __bit VREFM __attribute__((address(0x7C02)));


extern volatile __bit VREFN __attribute__((address(0x7C02)));


extern volatile __bit VREFP __attribute__((address(0x7C03)));


extern volatile __bit W4E __attribute__((address(0x7DC1)));


extern volatile __bit WAIT0 __attribute__((address(0x7E5C)));


extern volatile __bit WAIT1 __attribute__((address(0x7E5D)));


extern volatile __bit WCOL __attribute__((address(0x7E37)));


extern volatile __bit WM0 __attribute__((address(0x7E58)));


extern volatile __bit WM1 __attribute__((address(0x7E59)));


extern volatile __bit WPUB0 __attribute__((address(0x7BE0)));


extern volatile __bit WPUB1 __attribute__((address(0x7BE1)));


extern volatile __bit WPUB2 __attribute__((address(0x7BE2)));


extern volatile __bit WPUB3 __attribute__((address(0x7BE3)));


extern volatile __bit WPUB4 __attribute__((address(0x7BE4)));


extern volatile __bit WPUB5 __attribute__((address(0x7BE5)));


extern volatile __bit WPUB6 __attribute__((address(0x7BE6)));


extern volatile __bit WPUB7 __attribute__((address(0x7BE7)));


extern volatile __bit __attribute__((__deprecated__)) WR __attribute__((address(0x7D31)));


extern volatile __bit WRE __attribute__((address(0x7C21)));


extern volatile __bit WREN __attribute__((address(0x7D32)));


extern volatile __bit WRERR __attribute__((address(0x7D33)));


extern volatile __bit WUE __attribute__((address(0x7DC1)));


extern volatile __bit ZERO __attribute__((address(0x7EC2)));


extern volatile __bit nA __attribute__((address(0x7E3D)));


extern volatile __bit nADDRESS __attribute__((address(0x7E3D)));


extern volatile __bit nBOR __attribute__((address(0x7E80)));


extern volatile __bit nCS __attribute__((address(0x7C22)));


extern volatile __bit nDONE __attribute__((address(0x7E11)));


extern volatile __bit nMCLR __attribute__((address(0x7C23)));


extern volatile __bit nPD __attribute__((address(0x7E82)));


extern volatile __bit nPOR __attribute__((address(0x7E81)));


extern volatile __bit nRBPU __attribute__((address(0x7F8F)));


extern volatile __bit nRD __attribute__((address(0x7C20)));


extern volatile __bit nRI __attribute__((address(0x7E84)));


extern volatile __bit nSS __attribute__((address(0x7C05)));


extern volatile __bit nT1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit nT3SYNC __attribute__((address(0x7D8A)));


extern volatile __bit nTO __attribute__((address(0x7E83)));


extern volatile __bit nW __attribute__((address(0x7E3A)));


extern volatile __bit nWR __attribute__((address(0x7C21)));


extern volatile __bit nWRITE __attribute__((address(0x7E3A)));
# 211 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include/pic18_chip_select.h" 2 3
# 6 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include/pic18.h" 2 3
# 15 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include/pic18.h" 3
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char * a, unsigned int b, __far unsigned char * c);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);






# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/errata.h" 1 3
# 24 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include/pic18.h" 2 3
# 141 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include/pic18.h" 3
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);
# 177 "C:/Users/Moata/.mchp_packs/Microchip/PIC18F-K_DFP/1.17.312/xc8\\pic\\include/pic18.h" 3
unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);
# 34 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/xc.h" 2 3
# 39 "mcc_generated_files/system/src/../pins.h" 2
# 58 "mcc_generated_files/system/src/../pins.h"
void PIN_MANAGER_Initialize (void);







void PIN_MANAGER_IOC(void);
# 36 "mcc_generated_files/system/src/pins.c" 2


void PIN_MANAGER_Initialize(void)
{



    LATA = 0x0;
    LATB = 0x0;
    LATC = 0x0;
    LATD = 0x0;
    LATE = 0x0;







    TRISA = 0xFF;
    TRISB = 0xFF;
    TRISC = 0xFF;
    TRISD = 0xFF;
    TRISE = 0x7;




    ANSELH = 0x1F;




    WPUB = 0xFF;
# 90 "mcc_generated_files/system/src/pins.c"
    IOCB = 0x0;


}

void PIN_MANAGER_IOC(void)
{
}
