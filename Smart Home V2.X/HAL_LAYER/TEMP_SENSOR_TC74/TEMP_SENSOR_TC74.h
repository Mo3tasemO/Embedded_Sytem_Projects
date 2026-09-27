/* 
 * File:   TEMP_SENSOR_TC74.h
 * Author: Moata
 *
 * Created on September 27, 2026, 5:30 PM
 */

#ifndef TEMP_SENSOR_TC74_H
#define	TEMP_SENSOR_TC74_H

#include "../../mcc_generated_files/i2c_host/mssp.h"

#define TEMP_SENSOR_TC74_W_ADDRESS    0x9E
#define READ_TEMP_COMMAND           0x00
#define READ_WRITE_CONFIG_COMMAND   0x01


void TEMP_SENSOR_TC74_WRITE_DATA(uint8_t address, uint8_t command, uint8_t data);
uint8_t TEMP_SENSOR_TC74_READ_DATA(uint8_t address, uint8_t command);




#endif	/* TEMP_SENSOR_TC74_H */

