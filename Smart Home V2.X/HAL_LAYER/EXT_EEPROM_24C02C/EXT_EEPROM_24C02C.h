/* 
 * File:   EXT_EEPROM_24C02C.h
 * Author: Moata
 *
 * Created on September 24, 2026, 8:27 PM
 */

#ifndef EXT_EEPROM_24C02C_H
#define	EXT_EEPROM_24C02C_H

#include "../../mcc_generated_files/i2c_host/mssp.h"
#include "../../mcc_generated_files/system/clock.h"
#define SLAVE1_W_ADD  0xA6
#define SLAVE2_W_ADD  0xA2

#define SLAVE1_R_ADD  0xA7
#define SLAVE2_R_ADD  0xA3

void EXT_EEPROM_24C02C_WRITE_BYTE(uint8_t address, uint8_t ee_address, uint8_t data);
void EXT_EEPROM_24C02C_READ_BYTE(uint8_t w_address, uint8_t r_address, uint8_t ee_address, uint8_t *data);



#endif	/* EXT_EEPROM_24C02C_H */

