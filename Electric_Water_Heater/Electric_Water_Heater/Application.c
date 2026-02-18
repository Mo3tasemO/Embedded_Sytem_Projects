/*
 * Application.c
 *
 *  Created on: Feb 6, 2026
 *      Author: Moata
 */

#include "Application.h"
void application_init(void);

pin_config_t TEST_PIN ={
		.port = PORTC_INDEX,
		.pin = GPIO_PIN1,
		.direction = GPIO_DIRECTION_OUTPUT,
		.logic = GPIO_LOW
};

uint8 Data_Seven_Seg[3];
uint8 digits[3];


int main(){
	Std_ReturnType ret = E_OK;

	application_init();
	while(1){

		ret = SEVEN_SEGMENT_2_DIGIT_WRITE(&seg1, digits);

	}



	return 0;
}


void application_init(void){
	Std_ReturnType ret = E_OK;
	//	SET_BIT(SREG, I_BIT);	//SET I_BIT -> 1, Global Interrupt
	ECU_LAYER_INIT();

	ret = GPIO_PIN_INIT(&TEST_PIN);
	ret = SEVEN_SEGMENT_INIT(&seg1);
	ret = EXT_EEPROM_INIT(100000);
	ret = EXT_EEPROM_WRITE(0x10, "35", 2);
	_delay_ms(100);

	ret = EXT_EEPROM_WRITE(0x20, "45", 2);

	_delay_ms(100);
	ret = EXT_EEPROM_READ_BYTE(0x20, Data_Seven_Seg, 2);
	digits[0] = Data_Seven_Seg[0] - '0';
	digits[1] = Data_Seven_Seg[1] - '0';

}

//void __vector_2 (void)__attribute__((signal)) ;	// Vector2(address) -> ISR of interrupt 1 in vector table
//void __vector_2 (void)
//{
//	GPIO_PIN_WRITE_LOGIC(&led1, GPIO_HIGH);
//	_delay_ms(2000);
//	GPIO_PIN_WRITE_LOGIC(&led1, GPIO_LOW);
//}
