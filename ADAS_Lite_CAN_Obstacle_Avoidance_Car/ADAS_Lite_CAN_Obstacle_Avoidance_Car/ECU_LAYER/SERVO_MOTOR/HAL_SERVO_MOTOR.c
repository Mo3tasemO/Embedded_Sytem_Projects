/*
 * HAL_SERVO_MOTOR.c
 *
 *  Created on: Nov 12, 2026
 *      Author: Moata
 */


#include "HAL_SERVO_MOTOR.h"

void TIMER1_DEFAULT_INTERRUPT_HANDLER_OVF(void);


TIMER1_T timer1_obj = {
		.Mode_Select = TIMER1_FAST_PWM_TOP_OCR1A,
		.Prescaler = TIMER1_PRESCALER_DIV_8,
		.FPWM_op = TIMER1_PCPWM_NON_INVERTING,
		.Preload = 0,
		.COM1A_Mode = TIMER1_OC_CLEAR,
		.COM1B_Mode = TIMER1_OC_CLEAR,
		.Compare_A = 19999,
		.Compare_B = 1499,
		.TIMER1_INTERRUPT_HANDLER_OVF = TIMER1_DEFAULT_INTERRUPT_HANDLER_OVF,
		.ICU_cfg.Input_Capture_cfg = TIMER1_ICU_ENABLE,
		.ICU_cfg.Input_Capture_Noise_Canceler_cfg = TIMER1_ICU_NOISE_CANCLER_ENABLE,
		.ICU_cfg.Input_Capture_Edge_Select = TIMER1_ICU_FALLING_EDGE,

};

/*
 * Angle 0 -> 1.5ms = 1499 ticks
 * Angle 90 -> 2ms = 1999 ticks
 * Angle -90 -> 1ms = 999 ticks
 * */


Std_ReturnType SERVO_MOTOR_INIT(void){
	Std_ReturnType ret = E_NOT_OK;
	ret = TIMER1_INIT(&timer1_obj);
	ret = E_OK;
	return ret;
}

Std_ReturnType SERVO_MOTOR_SET_ANGLE(sint16 Angle){
	Std_ReturnType ret = E_NOT_OK;
	if(Angle == 0){
		ret = TIMER1_GENERATE_PWM(&timer1_obj, TIMER1_CHANNEL_B, 1499);
		ret = E_OK;
	}
	else if(Angle == 90){
		ret = TIMER1_GENERATE_PWM(&timer1_obj, TIMER1_CHANNEL_B, 1999);
		ret = E_OK;
	}
	else if(Angle == -90){
		ret = TIMER1_GENERATE_PWM(&timer1_obj, TIMER1_CHANNEL_B, 999);
		ret = E_OK;
	}
	else {
		/* Nothing */
		ret = E_NOT_OK;
	}
	return ret;
}
void TIMER1_DEFAULT_INTERRUPT_HANDLER_OVF(void){

}

