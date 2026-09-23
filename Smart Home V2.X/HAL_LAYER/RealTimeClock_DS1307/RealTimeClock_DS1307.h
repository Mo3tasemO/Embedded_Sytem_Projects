/* 
 * File:   RealTimeClock_DS1307.h
 * Author: Moata
 *
 * Created on September 21, 2026, 4:36 PM
 */

#ifndef REALTIMECLOCK_DS1307_H
#define	REALTIMECLOCK_DS1307_H

#include "../../mcc_generated_files/i2c_host/mssp.h"
#include "../EUSART_LoggingDebugData/EUSART_LoggingDebugData.h"
#define DS1307_ADD  0xD0U

typedef struct {
    uint8_t Seconds;
    uint8_t Minutes;
    uint8_t Hours;
    uint8_t Day;
    uint8_t Month;
    uint8_t Year;
}RealTimeClock_DS1307_T;

RealTimeClock_DS1307_T RealTimeClock_DS1307_GET_DATE_TIME(void);
void PRINT_RealTimeClock_DATA(void);
#endif	/* REALTIMECLOCK_DS1307_H */

