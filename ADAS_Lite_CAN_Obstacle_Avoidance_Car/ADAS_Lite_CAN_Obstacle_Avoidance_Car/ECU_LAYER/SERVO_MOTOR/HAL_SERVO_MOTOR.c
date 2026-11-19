/*
 * HAL_SERVO_MOTOR.c
 *
 *  Created on: Nov 12, 2026
 *      Author: Moata
 */

#include "HAL_SERVO_MOTOR.h"

void TIMER1_DEFAULT_INTERRUPT_HANDLER_OVF(void);
void TIMER1_DEFAULT_INTERRUPT_HANDLER_ICU(void);
#define TIMER1_PERIOD_TICKS   20000UL      /* TOP = 19999 -> 20000 ticks per wrap */

static volatile uint16 echo_raising = 0;
static volatile uint8 echo_wraps = 0; /* 20 ms wraps since the rising edge */
volatile uint8 echo_ready = 0; /* 1 = a new width is ready */
volatile uint32 timer1_ticks = 0;
volatile uint8 icu_flag = 0;

TIMER1_T timer1_obj = { .Mode_Select = TIMER1_FAST_PWM_TOP_OCR1A, .Prescaler =
		TIMER1_PRESCALER_DIV_8, .FPWM_op = TIMER1_FPWM_NON_INVERTING,
		.Preload = 0, .COM1A_Mode = TIMER1_OC_CLEAR, .COM1B_Mode =
				TIMER1_OC_CLEAR, .Compare_A = 19999, .Compare_B = 1499,
		.TIMER1_INTERRUPT_HANDLER_OVF = TIMER1_DEFAULT_INTERRUPT_HANDLER_OVF,
		.ICU_cfg.Input_Capture_cfg = TIMER1_ICU_ENABLE,
		.ICU_cfg.Input_Capture_Noise_Canceler_cfg =
				TIMER1_ICU_NOISE_CANCLER_ENABLE,
		.ICU_cfg.Input_Capture_Edge_Select = TIMER1_ICU_RAISING_EDGE,
		.TIMER1_INTERRUPT_HANDLER_ICU = TIMER1_DEFAULT_INTERRUPT_HANDLER_ICU

};

/*
 * Angle 0 -> 1.5ms = 1499 ticks
 * Angle 90 -> 2ms = 1999 ticks
 * Angle -90 -> 1ms = 999 ticks
 * */

Std_ReturnType SERVO_MOTOR_INIT(void) {
	return TIMER1_INIT(&timer1_obj);
}

Std_ReturnType SERVO_MOTOR_SET_ANGLE(sint16 Angle) {
	Std_ReturnType ret;
	uint16 compare_value;
	uint8 sreg_backup;

	switch (Angle) {
	case 0:
		compare_value = 1499U;
		break;

	case 90:
		compare_value = 1999U;
		break;

	case -90:
		compare_value = 999U;
		break;

	default:
		return E_NOT_OK ;
	}

	sreg_backup = SREG;
	CLEAR_BIT(SREG, I_BIT);

	ret = TIMER1_GENERATE_PWM(&timer1_obj, TIMER1_CHANNEL_B, compare_value);

	SREG = sreg_backup;

	return ret;
}
void TIMER1_DEFAULT_INTERRUPT_HANDLER_OVF(void) {
	if (icu_flag == 1) {
		if (echo_wraps < 255) {
			echo_wraps++;
		}
	}
}
void TIMER1_DEFAULT_INTERRUPT_HANDLER_ICU(void) {
	uint8 low_byte = ICR1L;
	uint8 high_byte = ICR1H;
	uint16 now = ((uint16) high_byte << 8) | low_byte;
	if (icu_flag == 0) {
		echo_raising = now;
		echo_wraps = 0;
		TIMER1_INPUT_CAPTURE_FALLING_EDGE();
		icu_flag++;
	} else if (icu_flag == 1) {
		timer1_ticks = ((uint32) echo_wraps * TIMER1_PERIOD_TICKS) + now
				- echo_raising;
		echo_ready = 1;
		TIMER1_INPUT_CAPTURE_RAISING_EDGE();
		icu_flag = 0;
	} else {
		icu_flag = 0;
	}
	TIMER1_INPUT_CAPTURE_INTERRUPT_CLEAR_FLAG();
}
void ULTRASONIC_CAPTURE_RESET(void) {
	uint8 sreg_backup = SREG;
	CLEAR_BIT(SREG, I_BIT);
	TIMER1_INPUT_CAPTURE_RAISING_EDGE();
	TIMER1_INPUT_CAPTURE_INTERRUPT_CLEAR_FLAG();
	icu_flag = 0;
	echo_wraps = 0;
	echo_ready = 0;
	SREG = sreg_backup;
}
