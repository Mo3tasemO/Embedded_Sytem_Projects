/*
 * ECU_LED.c
 *
 *  Created on: Feb 19, 2026
 *      Author: Moata
 */
#include "ECU_LED.h"




Std_ReturnType LED_INIT(const led_config *led_t){
	Std_ReturnType ret = E_OK;
	if(NULL == led_t){
		ret = E_NOT_OK;
	}
	else{
		ret = GPIO_PIN_INIT(&(led_t->led_pin_t));
	}
	return ret;
}
Std_ReturnType LED_ON(const led_config *led_t){
	Std_ReturnType ret = E_OK;
	if(NULL == led_t){
		ret = E_NOT_OK;
	}
	else{
		ret = GPIO_PIN_WRITE_LOGIC(&(led_t->led_pin_t), GPIO_HIGH);

	}
	return ret;
}
Std_ReturnType LED_OFF(const led_config *led_t){
	Std_ReturnType ret = E_OK;
	if(NULL == led_t){
		ret = E_NOT_OK;
	}
	else{
		ret = GPIO_PIN_WRITE_LOGIC(&(led_t->led_pin_t), GPIO_LOW);
	}
	return ret;
}
