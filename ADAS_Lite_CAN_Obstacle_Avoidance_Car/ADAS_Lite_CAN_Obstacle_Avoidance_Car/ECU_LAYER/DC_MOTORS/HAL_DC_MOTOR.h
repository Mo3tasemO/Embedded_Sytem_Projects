/*
 * HAL_DC_MOTOR.h
 *
 *  Created on: Nov 12, 2026
 *      Author: Moata
 */

#ifndef ECU_LAYER_DC_MOTORS_HAL_DC_MOTOR_H_
#define ECU_LAYER_DC_MOTORS_HAL_DC_MOTOR_H_

/* Section : Includes */
#include "HAL_DC_MOTOR_CFG.h"
#include "../../MCAL_LAYER/GPIO/HAL_GPIO.h"
/* Section: Macro Declarations */
/* Section: Macro Functions Declarations */
/* Section: Data Type Declarations */

/* Section: Function Declarations */
void DC_MOTOR_INIT(void);
void DC_MOTOR_MOVE_FORWARD(void);
void DC_MOTOR_MOVE_BACKWARD(void);
void DC_MOTOR_MOVE_RIGHT(void);
void DC_MOTOR_MOVE_LEFT(void);
void DC_MOTOR_STOP(void);

#endif /* ECU_LAYER_DC_MOTORS_HAL_DC_MOTOR_H_ */
