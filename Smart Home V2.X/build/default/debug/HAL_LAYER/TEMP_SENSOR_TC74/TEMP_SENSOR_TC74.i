# 1 "HAL_LAYER/TEMP_SENSOR_TC74/TEMP_SENSOR_TC74.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 295 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include/language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "HAL_LAYER/TEMP_SENSOR_TC74/TEMP_SENSOR_TC74.c" 2







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
# 9 "HAL_LAYER/TEMP_SENSOR_TC74/TEMP_SENSOR_TC74.c" 2

# 1 "HAL_LAYER/TEMP_SENSOR_TC74/TEMP_SENSOR_TC74.h" 1
# 11 "HAL_LAYER/TEMP_SENSOR_TC74/TEMP_SENSOR_TC74.h"
# 1 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/mssp.h" 1
# 40 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/mssp.h"
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
# 41 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/mssp.h" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stdbool.h" 1 3
# 42 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/mssp.h" 2
# 1 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/i2c_host_event_types.h" 1
# 40 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/i2c_host_event_types.h"
# 1 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/i2c_host_types.h" 1
# 45 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/i2c_host_types.h"
typedef enum
{
    I2C_ERROR_NONE,
    I2C_ERROR_ADDR_NACK,
    I2C_ERROR_DATA_NACK,
    I2C_ERROR_BUS_COLLISION,
} i2c_host_error_t;
# 63 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/i2c_host_types.h"
typedef struct i2c_transfer_setup
{
    uint32_t clkSpeed;
} i2c_host_transfer_setup_t;
# 41 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/i2c_host_event_types.h" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stddef.h" 1 3
# 19 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stddef.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 1 3
# 138 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/bits/alltypes.h" 3
typedef int ptrdiff_t;
# 20 "C:\\Program Files\\Microchip\\xc8\\v3.10\\pic\\include\\c99/stddef.h" 2 3
# 42 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/i2c_host_event_types.h" 2





typedef enum
{
    I2C_STATE_IDLE = 0,
    I2C_STATE_SEND_RD_ADDR,
    I2C_STATE_SEND_WR_ADDR,
    I2C_STATE_TX,
    I2C_STATE_RX,
    I2C_STATE_NACK,
    I2C_STATE_ERROR,
    I2C_STATE_STOP,
    I2C_STATE_RESET
} i2c_host_event_states_t;






typedef struct
{
    _Bool busy;
    uint16_t address;
    uint8_t *writePtr;
    size_t writeLength;
    uint8_t *readPtr;
    size_t readLength;
    _Bool switchToRead;
    i2c_host_error_t errorState;
    i2c_host_event_states_t state;
} i2c_host_event_status_t;
# 43 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/mssp.h" 2
# 1 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/i2c_host_interface.h" 1
# 49 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/i2c_host_interface.h"
typedef struct
{



    void (*Initialize)(void);




    void (*Deinitialize)(void);




    _Bool (*Write)(uint16_t address, uint8_t *data, size_t dataLength);




    _Bool (*Read)(uint16_t address, uint8_t *data, size_t dataLength);




    _Bool (*WriteRead)(uint16_t address, uint8_t *writeData, size_t writeLength, uint8_t *readData, size_t readLength);




    _Bool (*TransferSetup)(struct i2c_transfer_setup* setup, uint32_t srcClkFreq);




    i2c_host_error_t (*ErrorGet)(void);




    _Bool (*IsBusy)(void);




    void (*CallbackRegister)(void (*callback)(void));




    void (*Tasks)(void);
}i2c_host_interface_t;
# 44 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/mssp.h" 2
# 63 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/mssp.h"
extern const i2c_host_interface_t I2C1_Host;
# 72 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/mssp.h"
void I2C1_Initialize(void);







void I2C1_Deinitialize(void);
# 109 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/mssp.h"
_Bool I2C1_Write(uint16_t address, uint8_t *data, size_t dataLength);
# 138 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/mssp.h"
_Bool I2C1_Read(uint16_t address, uint8_t *data, size_t dataLength);
# 169 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/mssp.h"
_Bool I2C1_WriteRead(uint16_t address, uint8_t *writeData, size_t writeLength, uint8_t *readData, size_t readLength);
# 182 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/mssp.h"
i2c_host_error_t I2C1_ErrorGet(void);
# 193 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/mssp.h"
_Bool I2C1_IsBusy(void);







void I2C1_CallbackRegister(void (*callback)(void));
# 211 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/mssp.h"
void I2C1_ISR(void);
# 221 "HAL_LAYER/TEMP_SENSOR_TC74/../../mcc_generated_files/i2c_host/mssp.h"
void I2C1_ERROR_ISR(void);
# 12 "HAL_LAYER/TEMP_SENSOR_TC74/TEMP_SENSOR_TC74.h" 2






void TEMP_SENSOR_TC74_WRITE_DATA(uint8_t address, uint8_t command, uint8_t data);
uint8_t TEMP_SENSOR_TC74_READ_DATA(uint8_t address, uint8_t command);
# 11 "HAL_LAYER/TEMP_SENSOR_TC74/TEMP_SENSOR_TC74.c" 2

uint16_t temp_sensor_data_buffer = 0;

void TEMP_SENSOR_TC74_WRITE_DATA(uint8_t address, uint8_t command, uint8_t data){
    temp_sensor_data_buffer = command + (data << 8);
    I2C1_Write(address, &temp_sensor_data_buffer, 2);
    while(I2C1_IsBusy());
}
uint8_t TEMP_SENSOR_TC74_READ_DATA(uint8_t address, uint8_t command){
    uint8_t TEMP_value = 0;
    I2C1_Write(address, &command, 1);
    while(I2C1_IsBusy());
    I2C1_Read(address, &TEMP_value, 1);
    while(I2C1_IsBusy());
    return TEMP_value;
}
