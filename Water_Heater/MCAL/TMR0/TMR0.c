/*
 * TMR0.c
 *
 *  Created on: 20 Feb 2026
 *      Author: Mohamed Ashraf
 */

//LIB
#include "STD_TYPES.h"
#include "BIT_MATH.h"

//MCAL
#include "DIO.h"
#include "TMR0.h"

u8 G_Prescaller ;
u32 G_Counts = 0 ;
void (*Timer0_ptr)(void) ;
void Timer0_Init (u32 Prescaller , u8 Mode)
{
	G_Prescaller = Prescaller ;
	switch (Prescaller)
	{
	case TIMER0_PRESCALLER_1    :
		CLR_BIT(TCCR0 , CS02) ;
		CLR_BIT(TCCR0 , CS01) ;
		SET_BIT(TCCR0 , CS00) ;
		break ;
	case TIMER0_PRESCALLER_8    :
		CLR_BIT(TCCR0 , CS02) ;
		SET_BIT(TCCR0 , CS01) ;
		CLR_BIT(TCCR0 , CS00) ;
		break ;
	case TIMER0_PRESCALLER_64   :
		CLR_BIT(TCCR0 , CS02) ;
		SET_BIT(TCCR0 , CS01) ;
		SET_BIT(TCCR0 , CS00) ;
		break ;
	case TIMER0_PRESCALLER_256  :
		SET_BIT(TCCR0 , CS02) ;
		CLR_BIT(TCCR0 , CS01) ;
		CLR_BIT(TCCR0 , CS00) ;
		break ;
	case TIMER0_PRESCALLER_1024 :
		SET_BIT(TCCR0 , CS02) ;
		CLR_BIT(TCCR0 , CS01) ;
		SET_BIT(TCCR0 , CS00) ;
		break ;
	}

	switch (Mode)
	{
	case TIMER0_OVF           :
		CLR_BIT(TCCR0 , WGM00) ;
		CLR_BIT(TCCR0 , WGM01) ;

		SET_BIT(TIMSK , TOIE0) ;
		break ;
	case TIMER0_CTC           :
		CLR_BIT(TCCR0 , WGM00) ;
		SET_BIT(TCCR0 , WGM01) ;

		SET_BIT(TIMSK , TOIE0) ;
		break ;
	case TIMER0_FAST_PWM      :
		SET_BIT(TCCR0 , WGM00) ;
		CLR_BIT(TCCR0 , WGM01) ;

		SET_BIT(TCCR0 , COM01) ;
		SET_BIT(TCCR0 , COM00) ;
		DIO_InitPin(DIO_PORTB, DIO_PIN3, DIO_OUTPUT) ;
		break ;
	case TIMER0_PHASE_CORRECT :
		SET_BIT(TCCR0 , WGM00) ;
		SET_BIT(TCCR0 , WGM01) ;

		SET_BIT(TCCR0 , COM01) ;
		SET_BIT(TCCR0 , COM00) ;
		DIO_InitPin(DIO_PORTB, DIO_PIN3, DIO_OUTPUT) ;
		break ;
	}

	SET_BIT(SREG , I_BIT) ;
}
void Timer0_SetDesiredTime (u32 TimeInMicro , void (*fptr)(void))
{
	f32 OVF_Time = 32*G_Prescaller ;
	f32 Desires_OVF_Counts = TimeInMicro/OVF_Time ;
	u32 Preload ;
	Timer0_ptr = fptr ;
	if (Desires_OVF_Counts < 1.0)
	{
		G_Counts = 1 ;
		Preload = 256-(256*Desires_OVF_Counts);
		TCNT0 = Preload ;
	}
	else if (Desires_OVF_Counts == 1.0)
	{
		G_Counts = 1 ;
	}
	else if (Desires_OVF_Counts > 1.0)
	{
		G_Counts = Desires_OVF_Counts ;
		if ((Desires_OVF_Counts - (u32)Desires_OVF_Counts) !=0.0)
		{
			Preload = 256-(256*(Desires_OVF_Counts - (u32)Desires_OVF_Counts));
			TCNT0 = Preload ;
			G_Counts++;
		}
	}
}
void Timer0_GeneratePWM (u8 CompareValue)
{
	OCR0 =  CompareValue;
}
void __vector_11 (void)__attribute__((signal)) ;
void __vector_11 (void)
{
	static u32 Counter = 0 ;
	Counter++ ;
	if (Counter == G_Counts)
	{
		if (Timer0_ptr != 0)
		{
			Timer0_ptr () ;
			Counter = 0 ;
		}
	}
}
