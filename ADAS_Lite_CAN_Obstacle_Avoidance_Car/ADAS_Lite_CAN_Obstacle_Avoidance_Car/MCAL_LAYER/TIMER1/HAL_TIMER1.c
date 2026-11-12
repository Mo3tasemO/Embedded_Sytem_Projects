/*
 * HAL_TIMER1.c
 *
 *  Created on: Nov 12, 2026
 *      Author: Moata
 */

#include "HAL_TIMER1.h"

Std_ReturnType TIMER1_INIT(const TIMER1_T *_Timer){
	Std_ReturnType ret = E_NOT_OK;
	if(NULL == _Timer){
		ret = E_NOT_OK;
	}
	else{


		ret = E_OK;
	}
	return ret;
}
Std_ReturnType TIMER1_DEINIT(const TIMER1_T *_Timer){
	Std_ReturnType ret = E_NOT_OK;
	if(NULL == _Timer){
		ret = E_NOT_OK;
	}
	else{


		ret = E_OK;
	}
	return ret;
}
Std_ReturnType TIMER1_START(const TIMER1_T *_Timer){
	Std_ReturnType ret = E_NOT_OK;
	if(NULL == _Timer){
		ret = E_NOT_OK;
	}
	else{


		ret = E_OK;
	}
	return ret;
}
Std_ReturnType TIMER1_STOP(const TIMER1_T *_Timer){
	Std_ReturnType ret = E_NOT_OK;
	if(NULL == _Timer){
		ret = E_NOT_OK;
	}
	else{


		ret = E_OK;
	}
	return ret;
}
Std_ReturnType TIMER1_WRITE_VALUE(const TIMER1_T *_Timer, uint16 Preload_Val){
	Std_ReturnType ret = E_NOT_OK;
	if(NULL == _Timer){
		ret = E_NOT_OK;
	}
	else{


		ret = E_OK;
	}
	return ret;
}
Std_ReturnType TIMER1_READ_VALUE(const TIMER1_T *_Timer, uint16 *ret_value){
	Std_ReturnType ret = E_NOT_OK;
	if((NULL == _Timer) || (NULL == ret_value)){
		ret = E_NOT_OK;
	}
	else{


		ret = E_OK;
	}
	return ret;
}
Std_ReturnType TIMER1_SET_TOP(const TIMER1_T *_Timer, uint16 Top_Val){
	Std_ReturnType ret = E_NOT_OK;
	if(NULL == _Timer){
		ret = E_NOT_OK;
	}
	else{


		ret = E_OK;
	}
	return ret;
}
Std_ReturnType TIMER1_SET_COMPARE(const TIMER1_T *_Timer, TIMER1_CHANNEL_T Channel, uint16 Compare_Val){
	Std_ReturnType ret = E_NOT_OK;
	if(NULL == _Timer){
		ret = E_NOT_OK;
	}
	else{


		ret = E_OK;
	}
	return ret;
}
Std_ReturnType TIMER1_GENERATE_PWM(const TIMER1_T *_Timer, TIMER1_CHANNEL_T Channel, uint16 OC1_Val){
	Std_ReturnType ret = E_NOT_OK;
	if(NULL == _Timer){
		ret = E_NOT_OK;
	}
	else{


		ret = E_OK;
	}
	return ret;
}
