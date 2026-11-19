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
#define ULTRASONIC_NO_ECHO       65535U
#define ULTRASONIC_OUT_OF_RANGE  65534U
/* Section: Macro Functions Declarations */
/* Section: Data Type Declarations */
extern volatile uint32 timer1_ticks;
extern volatile uint8 echo_ready;
extern volatile uint8 icu_flag;

/* Section: Function Declarations */
void ULTRASONIC_INIT(void);
uint16 ULTRASONIC_MEASURE_DISTANCE(void);
void ULTRASONIC_CAPTURE_RESET(void);
uint16 ULTRASONIC_MEASURE_DISTANCE_MEDIAN(void);
#endif /* ECU_LAYER_ULTRASONIC_HAL_ULTRASONIC_H_ */
