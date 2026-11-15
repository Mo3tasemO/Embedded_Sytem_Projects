/*
 * Application.h
 *
 *  Created on: Nov 12, 2026
 *      Author: Moata
 */

#ifndef APPLICATION_H_
#define APPLICATION_H_


/* Section : Includes */
#include "ECU_LAYER/DC_MOTORS/HAL_DC_MOTOR.h"
#include "ECU_LAYER/L293D_H_Bridge/HAL_L298D_H_Bridge.h"
#include "ECU_LAYER/SERVO_MOTOR/HAL_SERVO_MOTOR.h"



void ECU_INITIALIZE(void){
	L298D_H_Bridge_INIT();
	DC_MOTOR_INIT();
	SERVO_MOTOR_INIT();

}






#endif /* APPLICATION_H_ */
