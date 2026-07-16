/*
 * Application.c
 *
 *  Created on: Feb 6, 2026
 *      Author: Moata
 */

#include "Application.h"
void application_init(void);
void ADC_DefaultInterruptHandler(void);
void TIMER0_DefaultInterruptHandler(void);
void TIMER2_DefaultInterruptHandler_OVF(void);
void TIMER2_DefaultInterruptHandler_COMP(void);
volatile uint8 compare_flag = 0;
//uint16 ADC_Result = 0, Temp_Celsius = 0;
//uint8 Send_Data_Seven_Seg[2] = "45";
//uint8 Recieved_Data[2];
//uint8 digits[2];
//ADC_CONFIG_T Adc_1 = {
//		.ADC_InterruptHandler = ADC_DefaultInterruptHandler,
//		.ADC_Source_Config = SINGLE_CONVERSION,
//		.Channel_Select = ADC_CHANNEL_0,
//		.Prescaler_Select = ADC_PRESCALER_DIV_4,
//		.Result_Format = ADC_RESULT_RIGHT_ADJUST,
//		.Voltage_Config = INTERNAL_VOLTAGE_REFERENCE_ON
//};
led_config led1 = {
		.led_pin_t.port = PORTD_INDEX,
		.led_pin_t.pin = GPIO_PIN5,
		.led_pin_t.direction = GPIO_DIRECTION_OUTPUT,
		.led_pin_t.logic = GPIO_HIGH,
};
//TIMER0_t timer0_obj = {
//		.TIMER0_INTERRUPT_HANDLER_OVF = TIMER0_DefaultInterruptHandler,
//		.TIMER0_INTERRUPT_HANDLER_COMP = TIMER0_DefaultInterruptHandler,
//		.Mode_Select = TIMER0_FAST_PWM,
//		.COM_Mode = TIMER0_FAST_PWM_MODE,
//		.COM_Operaion = TIMER0_CLEAR_OC0_SELECTED,
//		.Clock_Select = TIMER0_PRESCALLER_CLOCK_SOURCE,
//		.Prescaler = TIMER0_PRESCALER_DIV_1,
//		.Preload = 0
//};
TIMER2_t timer2_obj = {
		.TIMER2_INTERRUPT_HANDLER_OVF = TIMER2_DefaultInterruptHandler_OVF,
		.TIMER2_INTERRUPT_HANDLER_COMP = TIMER2_DefaultInterruptHandler_COMP,
		.Mode_Select = TIMER2_CLEAR_TIMER_ON_COMPARE_MATCH,
		.COM_Mode = TIMER2_PWM_PHASE_CORRECT_MODE,
		.COM_Operaion = TIMER2_TOGGLE_OC2_SELECTED,
		.Clock_Select = TIMER2_PRESCALLER_CLOCK_SOURCE,
		.Prescaler = TIMER2_PRESCALER_DIV_8,
		.Preload = 0,
		.oc2_pin.port = PORTD_INDEX,
		.oc2_pin.pin = GPIO_PIN7,
		.oc2_pin.direction = GPIO_DIRECTION_OUTPUT,
		.oc2_pin.logic = GPIO_LOW,
};
int main(){
	Std_ReturnType ret = E_OK;

	application_init();
	while(1){
//		ret = ADC_StartConversion(&Adc_1);
//		ret = LM35_Conversion(ADC_Result, &Temp_Celsius);
//		ret = SEVEN_SEGMENT_WRITE_NUMBER(&seg1, Temp_Celsius);
	}



	return 0;
}


void application_init(void){
	Std_ReturnType ret = E_OK;
	//	SET_BIT(SREG, I_BIT);	//SET I_BIT -> 1, Global Interrupt
	ECU_LAYER_INIT();
	ret = TIMER2_INIT(&timer2_obj);
	TIMER2_GENERATE_PWM(100);
//	ret = TIMER0_INIT(&timer0_obj);
//	TIMER0_GENERATE_PWM(200);
//	ret = SEVEN_SEGMENT_INIT(&seg1);
//	ret = ADC_INIT(&Adc_1);
	ret = LED_INIT(&led1);
//	ret = EXT_EEPROM_INIT(100000);
//	ret = EXT_EEPROM_WRITE(0x10, Send_Data_Seven_Seg, 2);
//	_delay_ms(100);

//	ret = EXT_EEPROM_WRITE(0x20, "35", 2);

//	_delay_ms(100);
//	ret = EXT_EEPROM_READ_BYTE(0x20, Recieved_Data, 2);
//	digits[1] = Recieved_Data[0] - '0';
//	digits[0] = Recieved_Data[1] - '0';

}
void ADC_DefaultInterruptHandler(void){
//	ADC_GET_CONVERSION_RESULT(&Adc_1, &ADC_Result);
}
void TIMER0_DefaultInterruptHandler(void){

}
void TIMER2_DefaultInterruptHandler_OVF(void){
	compare_flag++;
	if(compare_flag == 1){
		TIMER2_GENERATE_PWM(200);
		LED_ON(&led1);
	}
	else if(compare_flag == 2){
		LED_OFF(&led1);
		compare_flag = 0;
	}
}
void TIMER2_DefaultInterruptHandler_COMP(void){

}
