/*
 * HAL_SERVO_MOTOR.h
 *
 *  Created on: Nov 12, 2026
 *      Author: Moata
 */

#ifndef ECU_LAYER_SERVO_MOTOR_HAL_SERVO_MOTOR_H_
#define ECU_LAYER_SERVO_MOTOR_HAL_SERVO_MOTOR_H_

/* Section : Includes */
#include "HAL_SERVO_MOTOR_CFG.h"
#include "../../MCAL_LAYER/TIMER1/HAL_TIMER1.h"
/* Section: Macro Declarations */
/* Section: Macro Functions Declarations */
/* Section: Data Type Declarations */
/* Section: Function Declarations */


//Position "0" (1.5 ms pulse) is middle, "90" (~2ms pulse) is middle, ..
//.. is all the way to the right, "-90" (~1ms pulse) is all the way to the left

Std_ReturnType SERVO_MOTOR_INIT(void);
Std_ReturnType SERVO_MOTOR_SET_ANGLE(sint16 Angle);


#endif /* ECU_LAYER_SERVO_MOTOR_HAL_SERVO_MOTOR_H_ */
