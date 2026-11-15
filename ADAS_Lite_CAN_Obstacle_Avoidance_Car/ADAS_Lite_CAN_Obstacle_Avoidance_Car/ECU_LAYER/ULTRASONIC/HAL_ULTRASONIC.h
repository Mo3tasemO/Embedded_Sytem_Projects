/*
 * HAL_ULTRASONIC.h
 *
 *  Created on: Nov 12, 2026
 *      Author: Moata
 */

#ifndef ECU_LAYER_ULTRASONIC_HAL_ULTRASONIC_H_
#define ECU_LAYER_ULTRASONIC_HAL_ULTRASONIC_H_

/* Section : Includes */
#include "HAL_ULTRASONIC_CFG.h"
#include "../../MCAL_LAYER/TIMER1/HAL_TIMER1.h"
#include "../../MCAL_LAYER/TIMER2/HAL_TIMER2.h"
#include "../SERVO_MOTOR/HAL_SERVO_MOTOR.h"
/* Section: Macro Declarations */
/* Section: Macro Functions Declarations */
/* Section: Data Type Declarations */
extern timer1_obj;
/* Section: Function Declarations */
Std_ReturnType ULTRASONIC_INIT(void);
uint16 ULTRASONIC_MEASURE_DISTANCE(void);
#endif /* ECU_LAYER_ULTRASONIC_HAL_ULTRASONIC_H_ */
