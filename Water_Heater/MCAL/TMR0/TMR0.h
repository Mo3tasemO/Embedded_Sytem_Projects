/*
 * TMR0.h
 *
 *  Created on: 20 Feb 2026
 *      Author: Mohamed Ashraf
 */

#ifndef MCAL_TMR0_TMR0_H_
#define MCAL_TMR0_TMR0_H_

#define TCCR0  (*(volatile u8*)(0x53))
#define TCNT0  (*(volatile u8*)(0x52))
#define OCR0   (*(volatile u8*)(0x5C))
#define TIMSK  (*(volatile u8*)(0x59))
#define TIFR   (*(volatile u8*)(0x58))
#define SREG   (*(volatile u8*)(0x5F))

#define FOC0   7
#define WGM00  6
#define COM01  5
#define COM00  4
#define WGM01  3
#define CS02   2
#define CS01   1
#define CS00   0

#define OCIE0  1
#define TOIE0  0

#define OCF0   1
#define TOV0   0

#define I_BIT  7

#define TIMER0_PRESCALLER_1     1
#define TIMER0_PRESCALLER_8     8
#define TIMER0_PRESCALLER_64    64
#define TIMER0_PRESCALLER_256   256
#define TIMER0_PRESCALLER_1024  1024


#define TIMER0_OVF            1
#define TIMER0_CTC            2
#define TIMER0_FAST_PWM       3
#define TIMER0_PHASE_CORRECT  4

void Timer0_Init (u32 Prescaller , u8 Mode)  ;
void Timer0_SetDesiredTime (u32 Time , void (*fptr)(void)) ;
void Timer0_GeneratePWM (u8 CompareValue) ;


#endif /* MCAL_TMR0_TMR0_H_ */
