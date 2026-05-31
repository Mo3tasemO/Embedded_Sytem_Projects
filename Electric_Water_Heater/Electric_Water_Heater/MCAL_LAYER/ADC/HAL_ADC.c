/*
 * HAL_ADC.c
 *
 *  Created on: Feb 7, 2026
 *      Author: Moata
 */
#include "HAL_ADC.h"


static Std_ReturnType ADC_CHANNEL_SELECT(ADC_CHANNEL_SELECT_T Channel);
static Std_ReturnType ADC_PRESCALER_SELECT(ADC_PRESCALER_SELECT_T Prescaler);
static Std_ReturnType ADC_VOLTAGE_REFERENCE_CONFIG(ADC_VOLTAGE_REFERENCE_CONFIG_T Voltage_config);
static void (*ADC_InterruptHandler)(void) = NULL;




/**
 * @author Mo3
 * @brief This Function Initialize the ADC Peripheral And Adjust
 * The Configuration of the ADC Depending On the User Selection
 * @param ADC_T-> Struct Has The Configuration of ADC
 * @return	ret-> if it E_OK (means function succeeded), E_NOT_OK (means function doesnt succeeded)
 * */
Std_ReturnType ADC_INIT(const ADC_CONFIG_T *ADC_T){
	Std_ReturnType ret = E_OK;
	if(NULL == ADC_T){
		ret = E_NOT_OK;
	}
	else{

	}
	return ret;
}
/**
 * @author Mo3
 * @brief This Function Deinitialize the ADC Peripheral
 * @param ADC_T-> Struct Has The Configuration of ADC
 * @return	ret-> if it E_OK (means function succeeded), E_NOT_OK (means function doesnt succeeded)
 * */
Std_ReturnType ADC_DEINIT(const ADC_CONFIG_T *ADC_T){
	Std_ReturnType ret = E_OK;
	if(NULL == ADC_T){
		ret = E_NOT_OK;
	}
	else{

	}
	return ret;
}
/**
 * @author Mo3
 * @brief This Function Start The Conversion Of ADC
 * @param ADC_T-> Struct Has The Configuration of ADC
 * @return	ret-> if it E_OK (means function succeeded), E_NOT_OK (means function doesnt succeeded)
 * */
Std_ReturnType ADC_StartConversion(const ADC_CONFIG_T *ADC_T){
	Std_ReturnType ret = E_OK;
	if(NULL == ADC_T){
		ret = E_NOT_OK;
	}
	else{

	}
	return ret;
}
/**
 * @author Mo3
 * @brief This Function Tells You If The Conversion Completed Or Not
 * @param ADC_T-> Struct Has The Configuration of ADC
 * @param Conversion_Status-> Pointer, Points to the Return Value From the ADC_Start_Converion_BIT
 * @return	ret-> if it E_OK (means function succeeded), E_NOT_OK (means function doesnt succeeded)
 * */
Std_ReturnType ADC_IS_CONVERSION_DONE(const ADC_CONFIG_T *ADC_T, uint8 *Conversion_Status){
	Std_ReturnType ret = E_OK;
	if((NULL == ADC_T) || (NULL == Conversion_Status)){
		ret = E_NOT_OK;
	}
	else{

	}
	return ret;
}

/**
 * @author Mo3
 * @brief This Function gets the result of conversion from ADCH/ADCL
 * @param ADC_T-> Struct Has The Configuration of ADC
 * @return	ret-> if it E_OK (means function succeeded), E_NOT_OK (means function doesnt succeeded)
 * */
Std_ReturnType ADC_GET_CONVERSION_RESULT(const ADC_CONFIG_T *ADC_T, uint16 *Conversion_Result){
	Std_ReturnType ret = E_OK;
	if((NULL == ADC_T) || (NULL == Conversion_Result)){
		ret = E_NOT_OK;
	}
	else{

	}
	return ret;
}












static Std_ReturnType ADC_CHANNEL_SELECT(ADC_CHANNEL_SELECT_T Channel){

};
static Std_ReturnType ADC_PRESCALER_SELECT(ADC_PRESCALER_SELECT_T Prescaler){

};
static Std_ReturnType ADC_VOLTAGE_REFERENCE_CONFIG(ADC_VOLTAGE_REFERENCE_CONFIG_T Voltage_config){

};
