/*
 * Application.h
 *
 *  Created on: Feb 6, 2026
 *      Author: Moata
 */

#ifndef APPLICATION_H_
#define APPLICATION_H_

/* Section : Includes */

#include "ECU_LAYER/ECU_INIT.h"
#include "MCAL_LAYER/GPIO/HAL_GPIO.h"
#include "MCAL_LAYER/INTERRUPT/HAL_INTERRUPT.h"
#include "MCAL_LAYER/I2C/HAL_I2C.h"
#include "MCAL_LAYER/ADC/HAL_ADC.h"
#include "MCAL_LAYER/TIMER0/HAL_TIMER0.h"
#include "MCAL_LAYER/TIMER2/HAL_TIMER2.h"
/* Section: Macro Declarations */

/* Section: Macro Functions Declarations */

/* Section: Data Type Declarations */

/* Section: Function Declarations */
void application_init(void);


#endif /* APPLICATION_H_ */




