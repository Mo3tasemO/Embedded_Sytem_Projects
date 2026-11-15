/*
 * HAL_TIMER1.c
 *
 *  Created on: Nov 12, 2026
 *      Author: Moata
 */

#include "HAL_TIMER1.h"

#if TIMER1_INTERRUPT_FEATURE_ENABLE==INTERRUPT_FEATURE_ENABLE
void (*TIMER1_INTERRUPT_OVF)(void) = NULL;
void (*TIMER1_INTERRUPT_COMPA)(void) = NULL;
void (*TIMER1_INTERRUPT_COMPB)(void) = NULL;
void (*TIMER1_INTERRUPT_HANDLER_ICU)(void) = NULL;
#endif

static void TIMER1_MODE_SELECT(const TIMER1_T *_Timer);
static void TIMER1_ICU_CFG_SELECT(const TIMER1_T *_Timer);
static void TIMER1_CLOCK_SELECT_CFG(const TIMER1_T *_Timer);

Std_ReturnType TIMER1_INIT(const TIMER1_T *_Timer) {
	Std_ReturnType ret = E_NOT_OK;
	if (NULL == _Timer) {
		ret = E_NOT_OK;
	} else {
		pin_config_t OC1A_pin = { .port = PORTD_INDEX, .pin = GPIO_PIN5,
				.direction = GPIO_DIRECTION_OUTPUT, .logic = GPIO_LOW };
		pin_config_t OC1B_pin = { .port = PORTD_INDEX, .pin = GPIO_PIN4,
				.direction = GPIO_DIRECTION_OUTPUT, .logic = GPIO_LOW };
		if (0 != _Timer->COM1A_Mode) {
			ret &= GPIO_PIN_INIT(&OC1A_pin);
		}
		if (0 != _Timer->COM1B_Mode) {
			ret &= GPIO_PIN_INIT(&OC1B_pin);
		}
		TIMER1_MODE_SELECT(_Timer);
		TIMER1_ICU_CFG_SELECT(_Timer);
		TCNT1H = (uint8) ((_Timer->Preload) >> 8);
		TCNT1L = (uint8) (_Timer->Preload);
		OCR1AH = (uint8) ((_Timer->Compare_A) >> 8);
		OCR1AL = (uint8) (_Timer->Compare_A);
		OCR1BH = (uint8) ((_Timer->Compare_B) >> 8);
		OCR1BL = (uint8) (_Timer->Compare_B);
		ICR1H = (uint8) ((_Timer->ICU_cfg.ICU_payload) >> 8);
		ICR1L = (uint8) (_Timer->ICU_cfg.ICU_payload);
#if TIMER1_INTERRUPT_FEATURE_ENABLE==INTERRUPT_FEATURE_ENABLE
		TIMER1_INTERRUPT_OVF = _Timer->TIMER1_INTERRUPT_HANDLER_OVF;
		TIMER1_INTERRUPT_COMPA = _Timer->TIMER1_INTERRUPT_HANDLER_COMPA;
		TIMER1_INTERRUPT_COMPB = _Timer->TIMER1_INTERRUPT_HANDLER_COMPB;
		TIMER1_INTERRUPT_HANDLER_ICU = _Timer->TIMER1_INTERRUPT_HANDLER_ICU;
		if (NULL != _Timer->TIMER1_INTERRUPT_HANDLER_OVF) {
			TIMER1_OVERFLOW_INTERRUPT_CLEAR_FLAG();
			TIMER1_OVERFLOW_INTERRUPT_ENABLE();
		}
		if (NULL != _Timer->TIMER1_INTERRUPT_HANDLER_ICU) {
			TIMER1_INPUT_CAPTURE_INTERRUPT_CLEAR_FLAG();
			TIMER1_INPUT_CAPTURE_INTERRUPT_ENABLE();
		}
		if (NULL != _Timer->TIMER1_INTERRUPT_HANDLER_COMPA) {
			TIMER1_OUTPUT_COMPARE_A_MATCH_INTERRUPT_CLEAR_FLAG();
			TIMER1_OUTPUT_COMPARE_A_MATCH_INTERRUPT_ENABLE();
		}
		if (NULL != _Timer->TIMER1_INTERRUPT_HANDLER_COMPB) {
			TIMER1_OUTPUT_COMPARE_B_MATCH_INTERRUPT_CLEAR_FLAG();
			TIMER1_OUTPUT_COMPARE_B_MATCH_INTERRUPT_ENABLE();
		}
#endif
		TIMER1_CLOCK_SELECT_CFG(_Timer);
		ret = E_OK;
	}
	return ret;
}
Std_ReturnType TIMER1_DEINIT(const TIMER1_T *_Timer) {
	Std_ReturnType ret = E_NOT_OK;
	if (NULL == _Timer) {
		ret = E_NOT_OK;
	} else {
		TIMER1_STOP_CLOCK();
#if TIMER1_INTERRUPT_FEATURE_ENABLE==INTERRUPT_FEATURE_ENABLE
		TIMER1_OVERFLOW_INTERRUPT_DISABLE();
		TIMER1_INPUT_CAPTURE_INTERRUPT_DISABLE();
		TIMER1_OUTPUT_COMPARE_A_MATCH_INTERRUPT_DISABLE();
		TIMER1_OUTPUT_COMPARE_B_MATCH_INTERRUPT_DISABLE();
#endif
		ret = E_OK;
	}
	return ret;
}
Std_ReturnType TIMER1_START(const TIMER1_T *_Timer) {
	Std_ReturnType ret = E_NOT_OK;
	if (NULL == _Timer) {
		ret = E_NOT_OK;
	} else {
		TIMER1_CLOCK_SELECT_CFG(_Timer);
		ret = E_OK;
	}
	return ret;
}
Std_ReturnType TIMER1_STOP(const TIMER1_T *_Timer) {
	Std_ReturnType ret = E_NOT_OK;
	if (NULL == _Timer) {
		ret = E_NOT_OK;
	} else {
		TIMER1_STOP_CLOCK();
		ret = E_OK;
	}
	return ret;
}
Std_ReturnType TIMER1_WRITE_VALUE(const TIMER1_T *_Timer, uint16 Preload_Val) {
	Std_ReturnType ret = E_NOT_OK;
	if (NULL == _Timer) {
		ret = E_NOT_OK;
	} else {
		TCNT1H = (uint8) ((Preload_Val) >> 8);
		TCNT1L = (uint8) (Preload_Val);
		ret = E_OK;
	}
	return ret;
}
Std_ReturnType TIMER1_READ_VALUE(const TIMER1_T *_Timer, uint16 *ret_value) {
	Std_ReturnType ret = E_NOT_OK;
	if ((NULL == _Timer) || (NULL == ret_value)) {
		ret = E_NOT_OK;
	} else {
		*ret_value = (uint8) TCNT1L;
		*ret_value |= ((uint16) TCNT1H << 8);
		ret = E_OK;
	}
	return ret;
}
Std_ReturnType TIMER1_SET_TOP(const TIMER1_T *_Timer, uint16 Top_Val) {
	Std_ReturnType ret = E_NOT_OK;
	if (NULL == _Timer) {
		ret = E_NOT_OK;
	} else {
		switch (_Timer->Mode_Select) {
		/* TOP = ICR1 */
		case TIMER1_PFC_PWM_TOP_ICR1:
		case TIMER1_PC_PWM_TOP_ICR1:
		case TIMER1_CTC_TOP_ICR1:
		case TIMER1_FAST_PWM_TOP_ICR1:
			ICR1H = (uint8) (Top_Val >> 8);
			ICR1L = (uint8) (Top_Val);
			ret = E_OK;
			break;
			/* TOP = OCR1A */
		case TIMER1_CTC_TOP_OCR1A:
		case TIMER1_PFC_PWM_TOP_OCR1A:
		case TIMER1_PC_PWM_TOP_OCR1A:
		case TIMER1_FAST_PWM_TOP_OCR1A:
			OCR1AH = (uint8) (Top_Val >> 8);
			OCR1AL = (uint8) (Top_Val);
			ret = E_OK;
			break;
			/* Normal and fixed 8/9/10-bit modes have a fixed TOP */
		default:
			ret = E_NOT_OK;
		}
	}
	return ret;
}
Std_ReturnType TIMER1_SET_COMPARE(const TIMER1_T *_Timer,
		TIMER1_CHANNEL_T Channel, uint16 Compare_Val) {
	Std_ReturnType ret = E_NOT_OK;
	if (NULL == _Timer) {
		ret = E_NOT_OK;
	} else {
		if (TIMER1_CHANNEL_A == Channel) {
			/* OCR1A is the TOP value in these modes so it cannot be a compare value */
			if ((TIMER1_CTC_TOP_OCR1A == _Timer->Mode_Select)
					|| (TIMER1_PFC_PWM_TOP_OCR1A == _Timer->Mode_Select)
					|| (TIMER1_PC_PWM_TOP_OCR1A == _Timer->Mode_Select)
					|| (TIMER1_FAST_PWM_TOP_OCR1A == _Timer->Mode_Select)) {
				ret = E_NOT_OK;
			} else {
				OCR1AH = (uint8) (Compare_Val >> 8);
				OCR1AL = (uint8) (Compare_Val);
				ret = E_OK;
			}
		} else if (TIMER1_CHANNEL_B == Channel) {
			OCR1BH = (uint8) (Compare_Val >> 8);
			OCR1BL = (uint8) (Compare_Val);
			ret = E_OK;
		} else {
			ret = E_NOT_OK;
		}
	}
	return ret;
}
Std_ReturnType TIMER1_GENERATE_PWM(const TIMER1_T *_Timer,
		TIMER1_CHANNEL_T Channel, uint16 OC1_Val) {
	Std_ReturnType ret = E_NOT_OK;
	if (NULL == _Timer) {
		ret = E_NOT_OK;
	} else {
		if (TIMER1_CHANNEL_A == Channel) {
			OCR1AH = (uint8) (OC1_Val >> 8);
			OCR1AL = (uint8) (OC1_Val);
			ret = E_OK;
		} else if (TIMER1_CHANNEL_B == Channel) {
			OCR1BH = (uint8) (OC1_Val >> 8);
			OCR1BL = (uint8) (OC1_Val);
			ret = E_OK;
		} else {
			ret = E_NOT_OK;
		}
	}
	return ret;
}

static void TIMER1_MODE_SELECT(const TIMER1_T *_Timer) {
	switch (_Timer->Mode_Select) {
	case TIMER1_NORMAL:
		TIMER1_NORMAL_MODE();
		if ((_Timer->COM1A_Mode == TIMER1_OC_NORMAL)
				|| (_Timer->COM1B_Mode == TIMER1_OC_NORMAL)) {
			TIMER1_COMPARE_OUTPUT_NON_PWM_NORMAL_MODE();
		} else if ((_Timer->COM1A_Mode == TIMER1_OC_TOGGLE)
				|| (_Timer->COM1B_Mode == TIMER1_OC_TOGGLE)) {
			TIMER1_COMPARE_OUTPUT_NON_PWM_TOGGLE_MODE();
		} else if ((_Timer->COM1A_Mode == TIMER1_OC_CLEAR)
				|| (_Timer->COM1B_Mode == TIMER1_OC_CLEAR)) {
			TIMER1_COMPARE_OUTPUT_NON_PWM_CLEAR_SET_OUT_LOW_MODE();
		} else if ((_Timer->COM1A_Mode == TIMER1_OC_SET)
				|| (_Timer->COM1B_Mode == TIMER1_OC_SET)) {
			TIMER1_COMPARE_OUTPUT_NON_PWM_SET_SET_OUT_HIGH__MODE();
		} else if ((_Timer->COM1A_Mode == TIMER1_OC_FORCE)
				|| (_Timer->COM1B_Mode == TIMER1_OC_FORCE)) {
			TIMER1_FORCE_OUTPUT_COMPARE_ENABLE();
		} else {
			/* Nothing */
		}
		break;
	case TIMER1_PC_PWM_8BIT:
		TIMER1_PC_PWM_8BIT_MODE();
		if (TIMER1_PCPWM_NORMAL == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_NORMAL_MODE();
		} else if (TIMER1_PCPWM_TOGGLE_OC1A == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_TOGGLE_MODE();
		} else if (TIMER1_PCPWM_NON_INVERTING == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_CLEAR_SET_AT_BOTTOM_MODE();
		} else if (TIMER1_PCPWM_INVERTING == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_SET_CLEAR_AT_BOTTOM__MODE();
		} else {
			/* Nothing */
		}
		break;
	case TIMER1_PC_PWM_9BIT:
		TIMER1_PC_PWM_9BIT_MODE();
		if (TIMER1_PCPWM_NORMAL == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_NORMAL_MODE();
		} else if (TIMER1_PCPWM_TOGGLE_OC1A == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_TOGGLE_MODE();
		} else if (TIMER1_PCPWM_NON_INVERTING == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_CLEAR_SET_AT_BOTTOM_MODE();
		} else if (TIMER1_PCPWM_INVERTING == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_SET_CLEAR_AT_BOTTOM__MODE();
		} else {
			/* Nothing */
		}
		break;
	case TIMER1_PC_PWM_10BIT:
		TIMER1_PC_PWM_10BIT_MODE();
		if (TIMER1_PCPWM_NORMAL == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_NORMAL_MODE();
		} else if (TIMER1_PCPWM_TOGGLE_OC1A == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_TOGGLE_MODE();
		} else if (TIMER1_PCPWM_NON_INVERTING == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_CLEAR_SET_AT_BOTTOM_MODE();
		} else if (TIMER1_PCPWM_INVERTING == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_SET_CLEAR_AT_BOTTOM__MODE();
		} else {
			/* Nothing */
		}
		break;
	case TIMER1_CTC_TOP_OCR1A:
		TIMER1_CTC_TOP_OCR1A_MODE();
		if ((_Timer->COM1A_Mode == TIMER1_OC_NORMAL)
				|| (_Timer->COM1B_Mode == TIMER1_OC_NORMAL)) {
			TIMER1_COMPARE_OUTPUT_NON_PWM_NORMAL_MODE();
		} else if ((_Timer->COM1A_Mode == TIMER1_OC_TOGGLE)
				|| (_Timer->COM1B_Mode == TIMER1_OC_TOGGLE)) {
			TIMER1_COMPARE_OUTPUT_NON_PWM_TOGGLE_MODE();
		} else if ((_Timer->COM1A_Mode == TIMER1_OC_CLEAR)
				|| (_Timer->COM1B_Mode == TIMER1_OC_CLEAR)) {
			TIMER1_COMPARE_OUTPUT_NON_PWM_CLEAR_SET_OUT_LOW_MODE();
		} else if ((_Timer->COM1A_Mode == TIMER1_OC_SET)
				|| (_Timer->COM1B_Mode == TIMER1_OC_SET)) {
			TIMER1_COMPARE_OUTPUT_NON_PWM_SET_SET_OUT_HIGH__MODE();
		} else if ((_Timer->COM1A_Mode == TIMER1_OC_FORCE)
				|| (_Timer->COM1B_Mode == TIMER1_OC_FORCE)) {
			TIMER1_FORCE_OUTPUT_COMPARE_ENABLE();
		} else {
			/* Nothing */
		}
		break;
	case TIMER1_FAST_PWM_8BIT:
		TIMER1_FAST_PWM_8BIT_MODE();
		if (TIMER1_FPWM_NORMAL == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_NORMAL_MODE();
		} else if (TIMER1_FPWM_TOGGLE_OC1A == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_TOGGLE_MODE();
		} else if (TIMER1_FPWM_NON_INVERTING == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_CLEAR_SET_AT_BOTTOM_MODE();
		} else if (TIMER1_FPWM_INVERTING == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_SET_CLEAR_AT_BOTTOM__MODE();
		} else {
			/* Nothing */
		}
		break;
	case TIMER1_FAST_PWM_9BIT:
		TIMER1_FAST_PWM_9BIT_MODE();
		if (TIMER1_FPWM_NORMAL == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_NORMAL_MODE();
		} else if (TIMER1_FPWM_TOGGLE_OC1A == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_TOGGLE_MODE();
		} else if (TIMER1_FPWM_NON_INVERTING == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_CLEAR_SET_AT_BOTTOM_MODE();
		} else if (TIMER1_FPWM_INVERTING == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_SET_CLEAR_AT_BOTTOM__MODE();
		} else {
			/* Nothing */
		}
		break;
	case TIMER1_FAST_PWM_10BIT:
		TIMER1_FAST_PWM_10BIT_MODE();
		if (TIMER1_FPWM_NORMAL == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_NORMAL_MODE();
		} else if (TIMER1_FPWM_TOGGLE_OC1A == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_TOGGLE_MODE();
		} else if (TIMER1_FPWM_NON_INVERTING == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_CLEAR_SET_AT_BOTTOM_MODE();
		} else if (TIMER1_FPWM_INVERTING == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_SET_CLEAR_AT_BOTTOM__MODE();
		} else {
			/* Nothing */
		}
		break;
	case TIMER1_PFC_PWM_TOP_ICR1:
		TIMER1_PFC_PWM_TOP_ICR1_MODE();
		if (TIMER1_PCPWM_NORMAL == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_NORMAL_MODE();
		} else if (TIMER1_PCPWM_TOGGLE_OC1A == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_TOGGLE_MODE();
		} else if (TIMER1_PCPWM_NON_INVERTING == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_CLEAR_SET_AT_BOTTOM_MODE();
		} else if (TIMER1_PCPWM_INVERTING == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_SET_CLEAR_AT_BOTTOM__MODE();
		} else {
			/* Nothing */
		}
		break;
	case TIMER1_PFC_PWM_TOP_OCR1A:
		TIMER1_PFC_PWM_TOP_OCR1A_MODE();
		if (TIMER1_PCPWM_NORMAL == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_NORMAL_MODE();
		} else if (TIMER1_PCPWM_TOGGLE_OC1A == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_TOGGLE_MODE();
		} else if (TIMER1_PCPWM_NON_INVERTING == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_CLEAR_SET_AT_BOTTOM_MODE();
		} else if (TIMER1_PCPWM_INVERTING == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_SET_CLEAR_AT_BOTTOM__MODE();
		} else {
			/* Nothing */
		}
		break;
	case TIMER1_PC_PWM_TOP_ICR1:
		TIMER1_PC_PWM_TOP_ICR1_MODE();
		if (TIMER1_PCPWM_NORMAL == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_NORMAL_MODE();
		} else if (TIMER1_PCPWM_TOGGLE_OC1A == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_TOGGLE_MODE();
		} else if (TIMER1_PCPWM_NON_INVERTING == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_CLEAR_SET_AT_BOTTOM_MODE();
		} else if (TIMER1_PCPWM_INVERTING == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_SET_CLEAR_AT_BOTTOM__MODE();
		} else {
			/* Nothing */
		}
		break;
	case TIMER1_PC_PWM_TOP_OCR1A:
		TIMER1_PC_PWM_TOP_OCR1A_MODE();
		if (TIMER1_PCPWM_NORMAL == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_NORMAL_MODE();
		} else if (TIMER1_PCPWM_TOGGLE_OC1A == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_TOGGLE_MODE();
		} else if (TIMER1_PCPWM_NON_INVERTING == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_CLEAR_SET_AT_BOTTOM_MODE();
		} else if (TIMER1_PCPWM_INVERTING == _Timer->PC_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_SET_CLEAR_AT_BOTTOM__MODE();
		} else {
			/* Nothing */
		}
		break;
	case TIMER1_CTC_TOP_ICR1:
		TIMER1_CTC_TOP_ICR1_MODE();
		if ((_Timer->COM1A_Mode == TIMER1_OC_NORMAL)
				|| (_Timer->COM1B_Mode == TIMER1_OC_NORMAL)) {
			TIMER1_COMPARE_OUTPUT_NON_PWM_NORMAL_MODE();
		} else if ((_Timer->COM1A_Mode == TIMER1_OC_TOGGLE)
				|| (_Timer->COM1B_Mode == TIMER1_OC_TOGGLE)) {
			TIMER1_COMPARE_OUTPUT_NON_PWM_TOGGLE_MODE();
		} else if ((_Timer->COM1A_Mode == TIMER1_OC_CLEAR)
				|| (_Timer->COM1B_Mode == TIMER1_OC_CLEAR)) {
			TIMER1_COMPARE_OUTPUT_NON_PWM_CLEAR_SET_OUT_LOW_MODE();
		} else if ((_Timer->COM1A_Mode == TIMER1_OC_SET)
				|| (_Timer->COM1B_Mode == TIMER1_OC_SET)) {
			TIMER1_COMPARE_OUTPUT_NON_PWM_SET_SET_OUT_HIGH__MODE();
		} else if ((_Timer->COM1A_Mode == TIMER1_OC_FORCE)
				|| (_Timer->COM1B_Mode == TIMER1_OC_FORCE)) {
			TIMER1_FORCE_OUTPUT_COMPARE_ENABLE();
		} else {
			/* Nothing */
		}
		break;
	case TIMER1_FAST_PWM_TOP_ICR1:
		TIMER1_FAST_PWM_TOP_ICR1_MODE();
		if (TIMER1_FPWM_NORMAL == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_NORMAL_MODE();
		} else if (TIMER1_FPWM_TOGGLE_OC1A == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_TOGGLE_MODE();
		} else if (TIMER1_FPWM_NON_INVERTING == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_CLEAR_SET_AT_BOTTOM_MODE();
		} else if (TIMER1_FPWM_INVERTING == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_SET_CLEAR_AT_BOTTOM__MODE();
		} else {
			/* Nothing */
		}
		break;
	case TIMER1_FAST_PWM_TOP_OCR1A:
		TIMER1_FAST_PWM_TOP_OCR1A_MODE();
		if (TIMER1_FPWM_NORMAL == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_NORMAL_MODE();
		} else if (TIMER1_FPWM_TOGGLE_OC1A == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_TOGGLE_MODE();
		} else if (TIMER1_FPWM_NON_INVERTING == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_CLEAR_SET_AT_BOTTOM_MODE();
		} else if (TIMER1_FPWM_INVERTING == _Timer->FPWM_op) {
			TIMER1_COMPARE_OUTPUT_FAST_PWM_SET_CLEAR_AT_BOTTOM__MODE();
		} else {
			/* Nothing */
		}
		break;
	default:
		TIMER1_NORMAL_MODE();
	}
}
static void TIMER1_ICU_CFG_SELECT(const TIMER1_T *_Timer) {
	if (TIMER1_ICU_ENABLE == _Timer->ICU_cfg.Input_Capture_cfg) {
		if (TIMER1_ICU_NOISE_CANCLER_ENABLE
				== _Timer->ICU_cfg.Input_Capture_Noise_Canceler_cfg) {
			TIMER1_INPUT_CAPTURE_NOISE_CANCLER_ENABLE();
		} else if (TIMER1_ICU_NOISE_CANCLER_DISABLE
				== _Timer->ICU_cfg.Input_Capture_Noise_Canceler_cfg) {
			TIMER1_INPUT_CAPTURE_NOISE_CANCLER_DISABLE();
		} else {
			/* Nothing */
		}
		if (TIMER1_ICU_FALLING_EDGE
				== _Timer->ICU_cfg.Input_Capture_Edge_Select) {
			TIMER1_INPUT_CAPTURE_FALLING_EDGE();
		} else if (TIMER1_ICU_RAISING_EDGE
				== _Timer->ICU_cfg.Input_Capture_Edge_Select) {
			TIMER1_INPUT_CAPTURE_RAISING_EDGE();
		} else {
			/* Nothing */
		}
	} else if (TIMER1_ICU_DISABLE == _Timer->ICU_cfg.Input_Capture_cfg) {
		/* FIX: removed TIMER1_PC_PWM_TOP_ICR1_MODE() here, it silently overwrote the WGM bits chosen in MODE_SELECT */
	} else {
		/* Nothing */
	}
}
static void TIMER1_CLOCK_SELECT_CFG(const TIMER1_T *_Timer) {
	switch (_Timer->Prescaler) {
	case TIMER1_NO_CLOCK_SOURCE:
		CLEAR_BIT(TCCR1B, CS10);
		CLEAR_BIT(TCCR1B, CS11);
		CLEAR_BIT(TCCR1B, CS12);
		break;
	case TIMER1_NO_PRESCALING_DIV_1:
		SET_BIT(TCCR1B, CS10);
		CLEAR_BIT(TCCR1B, CS11);
		CLEAR_BIT(TCCR1B, CS12);
		break;
	case TIMER1_PRESCALER_DIV_8:
		CLEAR_BIT(TCCR1B, CS10);
		SET_BIT(TCCR1B, CS11);
		CLEAR_BIT(TCCR1B, CS12);
		break;
	case TIMER1_PRESCALER_DIV_64:
		SET_BIT(TCCR1B, CS10);
		SET_BIT(TCCR1B, CS11);
		CLEAR_BIT(TCCR1B, CS12);
		break;
	case TIMER1_PRESCALER_DIV_256:
		CLEAR_BIT(TCCR1B, CS10);
		CLEAR_BIT(TCCR1B, CS11);
		SET_BIT(TCCR1B, CS12);
		break;
	case TIMER1_PRESCALER_DIV_1024:
		SET_BIT(TCCR1B, CS10);
		CLEAR_BIT(TCCR1B, CS11);
		SET_BIT(TCCR1B, CS12);
		break;
	case TIMER1_EXT_CLOCK_FALLING_EDGE:
		CLEAR_BIT(TCCR1B, CS10);
		SET_BIT(TCCR1B, CS11);
		SET_BIT(TCCR1B, CS12);
		break;
	case TIMER1_EXT_CLOCK_RAISING_EDGE:
		SET_BIT(TCCR1B, CS10);
		SET_BIT(TCCR1B, CS11);
		SET_BIT(TCCR1B, CS12);
		break;
	default:
		SET_BIT(TCCR1B, CS10);
		CLEAR_BIT(TCCR1B, CS11);
		CLEAR_BIT(TCCR1B, CS12);
	}
}

#if TIMER1_INTERRUPT_FEATURE_ENABLE==INTERRUPT_FEATURE_ENABLE
void __vector_6(void)__attribute__((signal));
void __vector_6(void) {
	if (NULL != TIMER1_INTERRUPT_HANDLER_ICU) {
		TIMER1_INTERRUPT_HANDLER_ICU();
	}
}
void __vector_7(void)__attribute__((signal));
void __vector_7(void) {
	if (NULL != TIMER1_INTERRUPT_COMPA) {
		TIMER1_INTERRUPT_COMPA();
	}
}
void __vector_8(void)__attribute__((signal));
void __vector_8(void) {
	if (NULL != TIMER1_INTERRUPT_COMPB) {
		TIMER1_INTERRUPT_COMPB();
	}
}
void __vector_9(void)__attribute__((signal));
void __vector_9(void) {
	if (NULL != TIMER1_INTERRUPT_OVF) {
		TIMER1_INTERRUPT_OVF();
	}
}
#endif

