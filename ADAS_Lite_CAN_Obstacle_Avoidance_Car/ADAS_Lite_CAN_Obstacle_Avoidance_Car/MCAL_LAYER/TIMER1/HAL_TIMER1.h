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
#include "../INTERRUPT/HAL_INTERRUPT.h"
#include "../GPIO/HAL_GPIO.h"
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

// Compare Output Mode NON_PWM
#define	TIMER1_COMPARE_OUTPUT_NON_PWM_NORMAL_MODE()	do{						      \
														CLEAR_BIT(TCCR1A, COM1A0);\
														CLEAR_BIT(TCCR1A, COM1B0);\
														CLEAR_BIT(TCCR1A, COM1A1);\
														CLEAR_BIT(TCCR1A, COM1B1);\
													}while(0)
#define	TIMER1_COMPARE_OUTPUT_NON_PWM_TOGGLE_MODE()	do{						      \
														SET_BIT(TCCR1A, COM1A0);  \
														SET_BIT(TCCR1A, COM1B0);  \
														CLEAR_BIT(TCCR1A, COM1A1);\
														CLEAR_BIT(TCCR1A, COM1B1);\
													}while(0)
#define	TIMER1_COMPARE_OUTPUT_NON_PWM_CLEAR_SET_OUT_LOW_MODE()	do{				  \
																	CLEAR_BIT(TCCR1A, COM1A0);\
																	CLEAR_BIT(TCCR1A, COM1B0);\
																	SET_BIT(TCCR1A, COM1A1);  \
																	SET_BIT(TCCR1A, COM1B1);  \
																}while(0)
#define	TIMER1_COMPARE_OUTPUT_NON_PWM_SET_SET_OUT_HIGH__MODE()	do{		        \
																	SET_BIT(TCCR1A, COM1A0);\
																	SET_BIT(TCCR1A, COM1B0);\
																	SET_BIT(TCCR1A, COM1A1);\
																	SET_BIT(TCCR1A, COM1B1);\
																}while(0)
// Compare Output Mode FAST_PWM
#define	TIMER1_COMPARE_OUTPUT_FAST_PWM_NORMAL_MODE()	do{						  \
															CLEAR_BIT(TCCR1A, COM1A0);\
															CLEAR_BIT(TCCR1A, COM1B0);\
															CLEAR_BIT(TCCR1A, COM1A1);\
															CLEAR_BIT(TCCR1A, COM1B1);\
														}while(0)
#define	TIMER1_COMPARE_OUTPUT_FAST_PWM_TOGGLE_MODE()	do{						  \
															SET_BIT(TCCR1A, COM1A0);  \
															SET_BIT(TCCR1A, COM1B0);  \
															CLEAR_BIT(TCCR1A, COM1A1);\
															CLEAR_BIT(TCCR1A, COM1B1);\
														}while(0)
#define	TIMER1_COMPARE_OUTPUT_FAST_PWM_CLEAR_SET_AT_BOTTOM_MODE()	do{			  \
																		CLEAR_BIT(TCCR1A, COM1A0);\
																		CLEAR_BIT(TCCR1A, COM1B0);\
																		SET_BIT(TCCR1A, COM1A1);  \
																		SET_BIT(TCCR1A, COM1B1);  \
																	}while(0)
#define	TIMER1_COMPARE_OUTPUT_FAST_PWM_SET_CLEAR_AT_BOTTOM__MODE()	do{		    \
																		SET_BIT(TCCR1A, COM1A0);\
																		SET_BIT(TCCR1A, COM1B0);\
																		SET_BIT(TCCR1A, COM1A1);\
																		SET_BIT(TCCR1A, COM1B1);\
																	}while(0)

// Compare Output Mode Phase Correct and Phase Frequency Correct PWM
#define	TIMER1_COMPARE_OUTPUT_PFC_PWM_NORMAL_MODE()	do{						  \
														CLEAR_BIT(TCCR1A, COM1A0);\
														CLEAR_BIT(TCCR1A, COM1B0);\
														CLEAR_BIT(TCCR1A, COM1A1);\
														CLEAR_BIT(TCCR1A, COM1B1);\
													}while(0)
#define	TIMER1_COMPARE_OUTPUT_PFC_PWM_TOGGLE_MODE()	do{						  \
														SET_BIT(TCCR1A, COM1A0);  \
														SET_BIT(TCCR1A, COM1B0);  \
														CLEAR_BIT(TCCR1A, COM1A1);\
														CLEAR_BIT(TCCR1A, COM1B1);\
													}while(0)
#define	TIMER1_COMPARE_OUTPUT_PFC_PWM_CLEAR_UP_COUNT_SET_DOWN_COUNT_MODE()	do{			  \
																				CLEAR_BIT(TCCR1A, COM1A0);\
																				CLEAR_BIT(TCCR1A, COM1B0);\
																				SET_BIT(TCCR1A, COM1A1);  \
																				SET_BIT(TCCR1A, COM1B1);  \
																			}while(0)
#define	TIMER1_COMPARE_OUTPUT_PFC_PWM_SET_UP_COUNT_CLEAR_DOWN_COUNT_MODE()	do{		    \
																				SET_BIT(TCCR1A, COM1A0);\
																				SET_BIT(TCCR1A, COM1B0);\
																				SET_BIT(TCCR1A, COM1A1);\
																				SET_BIT(TCCR1A, COM1B1);\
																			}while(0)
/*									Enabled only in non PWM Mode								*/
#define TIMER1_FORCE_OUTPUT_COMPARE_ENABLE()		do{		    	   \
												SET_BIT(TCCR1A, FOC1A);\
												SET_BIT(TCCR1A, FOC1B);\
											}while(0)
#define TIMER1_FORCE_OUTPUT_COMPARE_DISABLE()		do{		    	     \
												CLEAR_BIT(TCCR1A, FOC1A);\
												CLEAR_BIT(TCCR1A, FOC1B);\
											}while(0)
/*									Waveform Generation Modes									*/
#define	TIMER1_NORMAL_MODE()	do{						     \
									CLEAR_BIT(TCCR1A, WGM10);\
									CLEAR_BIT(TCCR1A, WGM11);\
									CLEAR_BIT(TCCR1B, WGM12);\
									CLEAR_BIT(TCCR1B, WGM13);\
								}while(0)
#define	TIMER1_PC_PWM_8BIT_MODE()	do{						     \
										SET_BIT(TCCR1A, WGM10);\
										CLEAR_BIT(TCCR1A, WGM11);\
										CLEAR_BIT(TCCR1B, WGM12);\
										CLEAR_BIT(TCCR1B, WGM13);\
									}while(0)
#define	TIMER1_PC_PWM_9BIT_MODE()	do{						     \
										CLEAR_BIT(TCCR1A, WGM10);\
										SET_BIT(TCCR1A, WGM11);\
										CLEAR_BIT(TCCR1B, WGM12);\
										CLEAR_BIT(TCCR1B, WGM13);\
									}while(0)
#define	TIMER1_PC_PWM_10BIT_MODE()	do{						     \
										SET_BIT(TCCR1A, WGM10);\
										SET_BIT(TCCR1A, WGM11);\
										CLEAR_BIT(TCCR1B, WGM12);\
										CLEAR_BIT(TCCR1B, WGM13);\
									}while(0)
#define	TIMER1_CTC_TOP_OCR1A_MODE()	do{						     \
										CLEAR_BIT(TCCR1A, WGM10);\
										CLEAR_BIT(TCCR1A, WGM11);\
										SET_BIT(TCCR1B, WGM12);\
										CLEAR_BIT(TCCR1B, WGM13);\
									}while(0)
#define	TIMER1_FAST_PWM_8BIT_MODE()	do{						     \
										SET_BIT(TCCR1A, WGM10);\
										CLEAR_BIT(TCCR1A, WGM11);\
										SET_BIT(TCCR1B, WGM12);\
										CLEAR_BIT(TCCR1B, WGM13);\
									}while(0)
#define	TIMER1_FAST_PWM_9BIT_MODE()	do{						     \
											CLEAR_BIT(TCCR1A, WGM10);\
											SET_BIT(TCCR1A, WGM11);\
											SET_BIT(TCCR1B, WGM12);\
											CLEAR_BIT(TCCR1B, WGM13);\
										}while(0)
#define	TIMER1_FAST_PWM_10BIT_MODE()	do{						     \
											SET_BIT(TCCR1A, WGM10);\
											SET_BIT(TCCR1A, WGM11);\
											SET_BIT(TCCR1B, WGM12);\
											CLEAR_BIT(TCCR1B, WGM13);\
										}while(0)
#define	TIMER1_PFC_PWM_TOP_ICR1_MODE()	do{						     \
													CLEAR_BIT(TCCR1A, WGM10);  \
													CLEAR_BIT(TCCR1A, WGM11);  \
													CLEAR_BIT(TCCR1B, WGM12);  \
													SET_BIT(TCCR1B, WGM13);\
												}while(0)
#define	TIMER1_PFC_PWM_TOP_OCR1A_MODE()	do{						     \
													SET_BIT(TCCR1A, WGM10);  \
													CLEAR_BIT(TCCR1A, WGM11);  \
													CLEAR_BIT(TCCR1B, WGM12);  \
													SET_BIT(TCCR1B, WGM13);\
												}while(0)
#define	TIMER1_PC_PWM_TOP_ICR1_MODE()	do{						     \
													CLEAR_BIT(TCCR1A, WGM10);  \
													SET_BIT(TCCR1A, WGM11);  \
													CLEAR_BIT(TCCR1B, WGM12);  \
													SET_BIT(TCCR1B, WGM13);\
												}while(0)
#define	TIMER1_PC_PWM_TOP_OCR1A_MODE()	do{						     \
													SET_BIT(TCCR1A, WGM10);  \
													SET_BIT(TCCR1A, WGM11);  \
													CLEAR_BIT(TCCR1B, WGM12);  \
													SET_BIT(TCCR1B, WGM13);\
												}while(0)
#define	TIMER1_CTC_TOP_ICR1_MODE()	do{						     \
													CLEAR_BIT(TCCR1A, WGM10);  \
													CLEAR_BIT(TCCR1A, WGM11);  \
													SET_BIT(TCCR1B, WGM12);  \
													SET_BIT(TCCR1B, WGM13);\
												}while(0)
#define	TIMER1_FAST_PWM_TOP_ICR1_MODE()	do{						     \
													CLEAR_BIT(TCCR1A, WGM10);  \
													SET_BIT(TCCR1A, WGM11);  \
													SET_BIT(TCCR1B, WGM12);  \
													SET_BIT(TCCR1B, WGM13);\
												}while(0)
#define	TIMER1_FAST_PWM_TOP_OCR1A_MODE()	do{						     \
													SET_BIT(TCCR1A, WGM10);  \
													SET_BIT(TCCR1A, WGM11);  \
													SET_BIT(TCCR1B, WGM12);  \
													SET_BIT(TCCR1B, WGM13);\
												}while(0)

#define TIMER1_INPUT_CAPTURE_NOISE_CANCLER_ENABLE()		(SET_BIT(TCCR1B, ICNC1))

#define TIMER1_INPUT_CAPTURE_FALLING_EDGE()				(CLEAR_BIT(TCCR1B, ICES1))
																					// ICR1 is used as TOP value for Edge Selection
#define TIMER1_INPUT_CAPTURE_RAISING_EDGE()				(SET_BIT(TCCR1B, ICES1))

#if TIMER1_INTERRUPT_FEATURE_ENABLE==INTERRUPT_FEATURE_ENABLE

#define TIMER1_INPUT_CAPTURE_INTERRUPT_ENABLE()				(SET_BIT(TIMSK, TICIE1))
#define TIMER1_OUTPUT_COMPARE_A_MATCH_INTERRUPT_ENABLE()	(SET_BIT(TIMSK, OCIE1A))
#define TIMER1_OUTPUT_COMPARE_B_MATCH_INTERRUPT_ENABLE()	(SET_BIT(TIMSK, OCIE1B))
#define TIMER1_OVERFLOW_INTERRUPT_ENABLE()					(SET_BIT(TIMSK, TOIE1))


#define TIMER1_INPUT_CAPTURE_INTERRUPT_CLEAR_FLAG()				(SET_BIT(TIFR, ICF1))
#define TIMER1_OUTPUT_COMPARE_A_MATCH_INTERRUPT_CLEAR_FLAG()	(SET_BIT(TIFR, OCF1A))
#define TIMER1_OUTPUT_COMPARE_B_MATCH_INTERRUPT_CLEAR_FLAG()	(SET_BIT(TIFR, OCF1B))
#define TIMER1_OVERFLOW_INTERRUPT_CLEAR_FLAG()				    (SET_BIT(TIFR, TOV1))


#endif

/* Section: Data Type Declarations */

/*	 					Clock Select 					*/
typedef enum{
	TIMER1_NO_CLOCK_SOURCE = 0,
	TIMER1_NO_PRESCALING_DIV_1,
	TIMER1_PRESCALER_DIV_8,
	TIMER1_PRESCALER_DIV_64,
	TIMER1_PRESCALER_DIV_256,
	TIMER1_PRESCALER_DIV_1024,
	TIMER1_EXT_CLOCK_FALLING_EDGE,
	TIMER1_EXT_CLOCK_RAISING_EDGE
}TIMER1_CLOCK_SELECT;

typedef enum {
    TIMER1_NORMAL = 0,
    TIMER1_PC_PWM_8BIT,
    TIMER1_PC_PWM_9BIT,
    TIMER1_PC_PWM_10BIT,
    TIMER1_CTC_TOP_OCR1A,
    TIMER1_FAST_PWM_8BIT,
    TIMER1_FAST_PWM_9BIT,
    TIMER1_FAST_PWM_10BIT,
    TIMER1_PFC_PWM_TOP_ICR1,
    TIMER1_PFC_PWM_TOP_OCR1A,
    TIMER1_PC_PWM_TOP_ICR1,
    TIMER1_PC_PWM_TOP_OCR1A,
    TIMER1_CTC_TOP_ICR1,
    TIMER1_FAST_PWM_TOP_ICR1 = 14,
    TIMER1_FAST_PWM_TOP_OCR1A
} TIMER1_MODE_SELECT_T;

typedef enum {
    TIMER1_OC_NORMAL = 0,
    TIMER1_OC_TOGGLE,
    TIMER1_OC_CLEAR ,
    TIMER1_OC_SET
} TIMER1_COMPARE_OUTPUT_MODE_T;

typedef enum {
    TIMER1_FPWM_NORMAL = 0,
    TIMER1_FPWM_TOGGLE_OC1A,
    TIMER1_FPWM_NON_INVERTING,
    TIMER1_FPWM_INVERTING
} TIMER1_FAST_PWM_OUTPUT_MODE_T;

typedef struct {
	uint8 Input_Capture_Noise_Canceler_cfg : 1;
	uint8 Input_Capture_Edge_Select : 1;
	uint8 Reserved : 6;
}TIMER1_INPUT_CAPTURE_CFG_T;
typedef enum {
    TIMER1_PCPWM_NORMAL = 0,
    TIMER1_PCPWM_TOGGLE_OC1A,
    TIMER1_PCPWM_NON_INVERTING,
    TIMER1_PCPWM_INVERTING
} TIMER1_PHASE_CORRECT_OUTPUT_MODE_T;
typedef enum {
	TIMER1_CHANNEL_A,
	TIMER1_CHANNEL_B
} TIMER1_CHANNEL_T;


typedef struct {
#if TIMER1_INTERRUPT_FEATURE_ENABLE==INTERRUPT_FEATURE_ENABLE
	void (*TIMER1_INTERRUPT_HANDLER_OVF)(void);
	void (*TIMER1_INTERRUPT_HANDLER_COMPA)(void);
	void (*TIMER1_INTERRUPT_HANDLER_COMPB)(void);
	void (*TIMER1_INTERRUPT_HANDLER_INPUT_CAP)(void);
#endif
	uint16 Preload;				/* initial TCNT1 value                                    */
	uint16 Top;					/* ICR1 or OCR1A, depending on the selected mode          */
	uint16 Compare_A;			/* OCR1A (ignored in modes where OCR1A is TOP)            */
	uint16 Compare_B;			/* OCR1B                                                  */
	TIMER1_MODE_SELECT_T Mode_Select;
	TIMER1_CLOCK_SELECT Prescaler;
	uint8 COM1A_Mode : 2;
	uint8 COM1B_Mode : 2;
	uint8 Timer1_Reserved : 4;
	TIMER1_INPUT_CAPTURE_CFG_T	IN_CAP_cfg;
}TIMER1_T;

/* Section: Function Declarations */

Std_ReturnType TIMER1_INIT(const TIMER1_T *_Timer);
Std_ReturnType TIMER1_DEINIT(const TIMER1_T *_Timer);
Std_ReturnType TIMER1_START(const TIMER1_T *_Timer);
Std_ReturnType TIMER1_STOP(const TIMER1_T *_Timer);
Std_ReturnType TIMER1_WRITE_VALUE(const TIMER1_T *_Timer, uint16 Preload_Val);
Std_ReturnType TIMER1_READ_VALUE(const TIMER1_T *_Timer, uint16 *ret_value);
Std_ReturnType TIMER1_SET_TOP(const TIMER1_T *_Timer, uint16 Top_Val);
Std_ReturnType TIMER1_SET_COMPARE(const TIMER1_T *_Timer, TIMER1_CHANNEL_T Channel, uint16 Compare_Val);
Std_ReturnType TIMER1_GENERATE_PWM(const TIMER1_T *_Timer, TIMER1_CHANNEL_T Channel, uint16 OC1_Val);


#endif /* MCAL_LAYER_TIMER1_HAL_TIMER1_H_ */
