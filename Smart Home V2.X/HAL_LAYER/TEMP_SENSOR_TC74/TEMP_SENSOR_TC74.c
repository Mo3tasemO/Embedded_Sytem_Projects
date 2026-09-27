/* 
 * File:   TEMP_SENSOR_TC74.c
 * Author: Moata
 *
 * Created on September 27, 2026, 5:30 PM
 */

#include <stdlib.h>

#include "TEMP_SENSOR_TC74.h"

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




