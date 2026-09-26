/* 
 * File:   EXT_EEPROM_24C02C.c
 * Author: Moata
 *
 * Created on September 24, 2026, 8:27 PM
 */


#include <builtins.h>

#include "EXT_EEPROM_24C02C.h"

uint16_t data_buffer = 0;

void EXT_EEPROM_24C02C_WRITE_BYTE(uint8_t address, uint8_t ee_address, uint8_t data){
    data_buffer = ee_address + (data << 8);
    I2C1_Write(address, &data_buffer, 2);    // Control Byte and buffer of uint16_t that its first byte is the EEPROM location \
    and the second byte is the data that will be transmitted
    while(I2C1_IsBusy());
}
void EXT_EEPROM_24C02C_READ_BYTE(uint8_t w_address, uint8_t r_address, uint8_t ee_address, uint8_t *data){
    I2C1_Write(w_address, &ee_address, 1);    // Control Byte
    while(I2C1_IsBusy());
    I2C1_Read(r_address, data, 1);
    while(I2C1_IsBusy()); 
}



