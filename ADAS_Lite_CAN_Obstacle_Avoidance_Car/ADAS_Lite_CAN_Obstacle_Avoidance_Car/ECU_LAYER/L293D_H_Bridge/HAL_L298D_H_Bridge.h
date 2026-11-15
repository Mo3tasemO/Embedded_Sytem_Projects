/*
 * HAL_L298D_H_Bridge.h
 *
 *  Created on: Nov 12, 2026
 *      Author: Moata
 */

#ifndef ECU_LAYER_L293D_H_BRIDGE_HAL_L298D_H_BRIDGE_H_
#define ECU_LAYER_L293D_H_BRIDGE_HAL_L298D_H_BRIDGE_H_


/* Section : Includes */
#include "HAL_L298D_H_Bridge_CFG.h"
#include "../../MCAL_LAYER/TIMER0/HAL_TIMER0.h"
/* Section: Macro Declarations */
/* Section: Macro Functions Declarations */
/* Section: Data Type Declarations */
/* Section: Function Declarations */
Std_ReturnType L298D_H_Bridge_INIT(void);
Std_ReturnType L298D_H_Bridge_SET_MOTOR_SPEED(uint8 speed_val);


#endif /* ECU_LAYER_L293D_H_BRIDGE_HAL_L298D_H_BRIDGE_H_ */
