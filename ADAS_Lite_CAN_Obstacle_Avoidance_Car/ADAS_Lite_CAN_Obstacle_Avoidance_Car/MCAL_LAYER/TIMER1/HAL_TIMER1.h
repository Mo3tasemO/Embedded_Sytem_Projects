/*
 * HAL_TIMER1.h
 *
 *  Created on: Nov 12, 2026
 *      Author: Moata
 */

#ifndef MCAL_LAYER_TIMER1_HAL_TIMER1_H_
#define MCAL_LAYER_TIMER1_HAL_TIMER1_H_

/* Section : Includes */
#include "HAL_TIMER1_CFG.h"
/* Section: Macro Declarations */

#define	TCCR1A	(*(volatile uint8*)(0x2F))
#define	TCCR1B  (*(volatile uint8*)(0x2E))
#define	TCNT1H  (*(volatile uint8*)(0x2D))
#define	TCNT1L  (*(volatile uint8*)(0x2C))
#define	OCR1AH  (*(volatile uint8*)(0x2B))
#define	OCR1AL	(*(volatile uint8*)(0x2A))
#define	OCR1BH  (*(volatile uint8*)(0x29))
#define	OCR1BL  (*(volatile uint8*)(0x28))
#define	ICR1H   (*(volatile uint8*)(0x27))
#define	ICR1L   (*(volatile uint8*)(0x26))
#define	TIMSK	(*(volatile uint8*)(0x39))
#define	TIFR    (*(volatile uint8*)(0x38))

// Timer/Counter Control Register_BITS

//Timer/Counter1 Control Register A – TCCR1A_BITS
#define	WGM10	0
#define	WGM11	1
#define	FOC1A	3
#define	FOC1B	2
#define	COM1B1	5
#define	COM1B0	4
#define	COM1A1	7
#define	COM1A0	6

//Timer/Counter1 Control Register B – TCCR1B_BITS
#define	CS10	0
#define	CS11	1
#define	CS12	2
#define	WGM12	3
#define	WGM13	4
#define	ICES1	6
#define	ICNC1	7

//Timer/Counter Interrupt Mask Register – TIMSK_BITS
#define	TOIE1	2
#define	OCIE1A	4
#define	OCIE1B	3
#define	TICIE1	5

//Timer/Counter Interrupt Flag Register – TIFR_BITS
#define	TOV1	2
#define	OCF1A	4
#define	OCF1B	3
#define	ICF1	5

/* Section: Macro Functions Declarations */
/* Section: Data Type Declarations */
/* Section: Function Declarations */



#endif /* MCAL_LAYER_TIMER1_HAL_TIMER1_H_ */
