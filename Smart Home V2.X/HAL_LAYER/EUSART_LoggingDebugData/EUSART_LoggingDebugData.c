/* 
 * File:   EUSART_LoggingDebugData.c
 * Author: Moata
 *
 * Created on September 23, 2026, 1:40 PM
 */
#include "EUSART_LoggingDebugData.h"




void EUSART_LoggingDebugData_Send_String(uint8_t *String, uint16_t String_len){
    uint16_t L_str_len = 0;
    for(L_str_len = 0; L_str_len < String_len; L_str_len++){
        while(!EUSART_IsTxReady());
        EUSART_Write(*(String + L_str_len));
    } 
}

