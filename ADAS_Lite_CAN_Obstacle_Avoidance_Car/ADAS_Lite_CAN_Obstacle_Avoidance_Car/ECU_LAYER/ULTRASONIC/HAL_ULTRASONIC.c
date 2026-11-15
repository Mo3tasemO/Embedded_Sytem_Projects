/*
 * HAL_ULTRASONIC.c
 *
 *  Created on: Nov 12, 2026
 *      Author: Moata
 */


#include "HAL_ULTRASONIC.h"
void TIMER2_DEFAULT_INTERRUPT_HANDLER_OVF(void);

TIMER2_t timer2_obj = {
		.Mode_Select = TIMER2_FAST_PWM,
		.Clock_Select = TIMER2_PRESCALLER_CLOCK_SOURCE,
		.COM_Mode = TIMER2_FAST_PWM_MODE,
		.COM_Operaion = TIMER2_CLEAR_OC2_SELECTED,
		.Prescaler = TIMER2_PRESCALER_DIV_1,
		.Preload = 0,
		.TIMER2_INTERRUPT_HANDLER_OVF = TIMER2_DEFAULT_INTERRUPT_HANDLER_OVF
};


Std_ReturnType ULTRASONIC_INIT(void){
	Std_ReturnType ret = E_NOT_OK;
	ret = TIMER2_INIT(&timer2_obj);
	ret = TIMER2_GENERATE_PWM(79);
	ret = E_OK;
	return ret;
}

uint16 ULTRASONIC_MEASURE_DISTANCE(void){

}

void TIMER2_DEFAULT_INTERRUPT_HANDLER_OVF(void){

}
