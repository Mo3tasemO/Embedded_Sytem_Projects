/*
 * Application.c
 *
 *  Created on: Feb 6, 2026
 *      Author: Moata
 */

#include "Application.h"
void application_init(void);
void ADC_DefaultInterruptHandler(void);
uint16 ADC_Result = 0, Temp_Celsius = 0;
uint8 Send_Data_Seven_Seg[2] = "45";
uint8 Recieved_Data[2];
uint8 digits[2];
ADC_CONFIG_T Adc_1 = {
		.ADC_InterruptHandler = ADC_DefaultInterruptHandler,
		.ADC_Source_Config = SINGLE_CONVERSION,
		.Channel_Select = ADC_CHANNEL_0,
		.Prescaler_Select = ADC_PRESCALER_DIV_4,
		.Result_Format = ADC_RESULT_RIGHT_ADJUST,
		.Voltage_Config = INTERNAL_VOLTAGE_REFERENCE_ON
};

int main(){
	Std_ReturnType ret = E_OK;

	application_init();
	while(1){
		ret = ADC_StartConversion(&Adc_1);
		ret = LM35_Conversion(ADC_Result, &Temp_Celsius);
		ret = SEVEN_SEGMENT_WRITE_NUMBER(&seg1, Temp_Celsius);
	}



	return 0;
}


void application_init(void){
	Std_ReturnType ret = E_OK;
	//	SET_BIT(SREG, I_BIT);	//SET I_BIT -> 1, Global Interrupt
	ECU_LAYER_INIT();

	ret = SEVEN_SEGMENT_INIT(&seg1);
	ret = ADC_INIT(&Adc_1);
	ret = LED_INIT(&led1);
	ret = EXT_EEPROM_INIT(100000);
	ret = EXT_EEPROM_WRITE(0x10, Send_Data_Seven_Seg, 2);
	_delay_ms(100);

	ret = EXT_EEPROM_WRITE(0x20, "35", 2);

	_delay_ms(100);
	ret = EXT_EEPROM_READ_BYTE(0x20, Recieved_Data, 2);
	digits[1] = Recieved_Data[0] - '0';
	digits[0] = Recieved_Data[1] - '0';

}
void ADC_DefaultInterruptHandler(void){
	ADC_GET_CONVERSION_RESULT(&Adc_1, &ADC_Result);
}

