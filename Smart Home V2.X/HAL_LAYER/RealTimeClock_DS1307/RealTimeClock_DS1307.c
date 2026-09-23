/* 
 * File:   RealTimeClock_DS1307.c
 * Author: Moata
 *
 * Created on September 21, 2026, 4:36 PM
 */

#include "RealTimeClock_DS1307.h"

static RealTimeClock_DS1307_T RealTimeClock_DS1307;
static uint8_t RealTimeClock_DS1307_GET_SECONDS(void);
static uint8_t RealTimeClock_DS1307_GET_MINUTES(void);
uint8_t ret_seconds = 0, ret_minutes = 0, ret_hours = 0, ret_day = 0, ret_month = 0, ret_year = 0;
uint8_t Real_Time_Clock_Frame[15]; // 23/9/26
uint8_t DS1307_Reg[] = {0x00, 0x01, 0x02, 0x04, 0x05, 0x06};

static uint8_t RealTimeClock_DS1307_GET_SECONDS(void){
    I2C1_WriteRead(DS1307_ADD, DS1307_Reg, 1, &ret_seconds, 1);
    while(I2C1_IsBusy());
    return ret_seconds;
}
static uint8_t RealTimeClock_DS1307_GET_MINUTES(void){
    I2C1_WriteRead(DS1307_ADD, DS1307_Reg + 1, 1, &ret_minutes, 1);
    while(I2C1_IsBusy());
    return ret_minutes;
}
static uint8_t RealTimeClock_DS1307_GET_HOURS(void){
    I2C1_WriteRead(DS1307_ADD, DS1307_Reg + 2, 1, &ret_hours, 1);
    while(I2C1_IsBusy());
    return ret_hours;
}
static uint8_t RealTimeClock_DS1307_GET_DAY(void){
    I2C1_WriteRead(DS1307_ADD, DS1307_Reg + 3, 1, &ret_day, 1);
    while(I2C1_IsBusy());
    return ret_day;
}
static uint8_t RealTimeClock_DS1307_GET_MONTH(void){
    I2C1_WriteRead(DS1307_ADD, DS1307_Reg + 4, 1, &ret_month, 1);
    while(I2C1_IsBusy());
    return ret_month;
}
static uint8_t RealTimeClock_DS1307_GET_YEAR(void){
    I2C1_WriteRead(DS1307_ADD, DS1307_Reg + 5, 1, &ret_year, 1);
    while(I2C1_IsBusy());
    return ret_year;
}
RealTimeClock_DS1307_T RealTimeClock_DS1307_GET_DATE_TIME(void){
    RealTimeClock_DS1307.Seconds = RealTimeClock_DS1307_GET_SECONDS();
    RealTimeClock_DS1307.Minutes = RealTimeClock_DS1307_GET_MINUTES();
    RealTimeClock_DS1307.Hours = RealTimeClock_DS1307_GET_HOURS();
    RealTimeClock_DS1307.Day = RealTimeClock_DS1307_GET_DAY();
    RealTimeClock_DS1307.Month = RealTimeClock_DS1307_GET_MONTH();
    RealTimeClock_DS1307.Year = RealTimeClock_DS1307_GET_YEAR();
    return RealTimeClock_DS1307;
}

void PRINT_RealTimeClock_DATA(void){
    EUSART_LoggingDebugData_Send_String("Date: ", 7);
    Real_Time_Clock_Frame[0] = ((RealTimeClock_DS1307.Day >> 4) + 0x30);
    Real_Time_Clock_Frame[1] = ((RealTimeClock_DS1307.Day & 0x0F) + 0x30);
    Real_Time_Clock_Frame[2] = '//';
    Real_Time_Clock_Frame[3] = ((RealTimeClock_DS1307.Month >> 4) + 0x30);
    Real_Time_Clock_Frame[4] = ((RealTimeClock_DS1307.Month & 0x0F) + 0x30);
    Real_Time_Clock_Frame[5] = '//';
    Real_Time_Clock_Frame[6] = ((RealTimeClock_DS1307.Year >> 4) + 0x30);
    Real_Time_Clock_Frame[7] = ((RealTimeClock_DS1307.Year & 0x0F) + 0x30);
    Real_Time_Clock_Frame[8] = '\r';
    EUSART_LoggingDebugData_Send_String(Real_Time_Clock_Frame, 9);
}