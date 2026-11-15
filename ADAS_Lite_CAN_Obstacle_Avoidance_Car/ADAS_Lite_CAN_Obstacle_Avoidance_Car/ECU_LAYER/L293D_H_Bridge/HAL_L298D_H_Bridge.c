/*
 * HAL_L298D_H_Bridge.c
 *
 *  Created on: Nov 12, 2026
 *      Author: Moata
 */

#include "HAL_L298D_H_Bridge.h"
void TIMER0_DEFAULT_INTERRUPT_HANDLER_OVF(void);

TIMER0_t timer0_obj = { .Mode_Select = TIMER0_FAST_PWM, .Clock_Select =
		TIMER0_PRESCALLER_CLOCK_SOURCE, .COM_Mode = TIMER0_FAST_PWM_MODE,
		.COM_Operaion = TIMER0_CLEAR_OC0_SELECTED, .Prescaler =
				TIMER0_PRESCALER_DIV_8, .Preload = 0,
		.TIMER0_INTERRUPT_HANDLER_OVF = TIMER0_DEFAULT_INTERRUPT_HANDLER_OVF };

Std_ReturnType L298D_H_Bridge_INIT(void) {
	Std_ReturnType ret = E_NOT_OK;
	ret = TIMER0_INIT(&timer0_obj);
	return ret;
}

Std_ReturnType L298D_H_Bridge_SET_MOTOR_SPEED(uint8 speed_val) {
	Std_ReturnType ret = E_NOT_OK;
	if (speed_val > 100) {
		speed_val = 100;
	}
	TIMER0_GENERATE_PWM((uint8) (((uint16) speed_val * 255) / 100));
	ret = E_OK;
	return ret;
}

void TIMER0_DEFAULT_INTERRUPT_HANDLER_OVF(void) {

}
