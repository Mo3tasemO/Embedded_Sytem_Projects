/*
 * Application.c
 *
 *  Created on: Nov 12, 2026
 *      Author: Moata
 */

#include "Application.h"



Std_ReturnType ret = E_NOT_OK;




int main(){
	ECU_INITIALIZE();
//	SET_BIT(SREG, I_BIT);
	ret = L298D_H_Bridge_SET_MOTOR_SPEED(60);
	DC_MOTOR_MOVE_FORWARD();
	ret = SERVO_MOTOR_SET_ANGLE(-90);
	while(1){


	}








	return 0;
}
