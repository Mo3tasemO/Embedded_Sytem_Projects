/*
 * Application.c
 *
 *  Created on: Nov 12, 2026
 *      Author: Moata
 */


/*
 * Application.c
 */

#include "Application.h"

#define OBSTACLE_STOP_DISTANCE_CM  50U
#define MOTOR_SPEED               80U
#define SERVO_SETTLE_MS           800U
#define TURN_TIME_MS              500U

Std_ReturnType ret = E_NOT_OK;

volatile uint16 Distance = ULTRASONIC_NO_ECHO;
volatile uint16 Distance_r = ULTRASONIC_NO_ECHO;
volatile uint16 Distance_l = ULTRASONIC_NO_ECHO;

static uint8 PATH_IS_CLEAR(uint16 distance_cm)
{
    return (distance_cm != ULTRASONIC_NO_ECHO) &&
           (distance_cm != ULTRASONIC_OUT_OF_RANGE) &&
           (distance_cm > OBSTACLE_STOP_DISTANCE_CM);
}

int main(void)
{
    uint8 right_clear;
    uint8 left_clear;

    ECU_INITIALIZE();
    DC_MOTOR_STOP();

    ret = L298D_H_Bridge_SET_MOTOR_SPEED(MOTOR_SPEED);
    ret = SERVO_MOTOR_SET_ANGLE(0);
    _delay_ms(SERVO_SETTLE_MS);

    while (1) {
        Distance = ULTRASONIC_MEASURE_DISTANCE();

        if (PATH_IS_CLEAR(Distance)) {
            DC_MOTOR_MOVE_FORWARD();
            _delay_ms(60);
            continue;
        }

        DC_MOTOR_STOP();

        if (Distance == ULTRASONIC_NO_ECHO) {
            _delay_ms(60);
            continue;
        }

        ret = SERVO_MOTOR_SET_ANGLE(-90);
        _delay_ms(SERVO_SETTLE_MS);
        Distance_l = ULTRASONIC_MEASURE_DISTANCE();

        ret = SERVO_MOTOR_SET_ANGLE(90);
        _delay_ms(SERVO_SETTLE_MS);
        Distance_r = ULTRASONIC_MEASURE_DISTANCE();

        ret = SERVO_MOTOR_SET_ANGLE(0);
        _delay_ms(SERVO_SETTLE_MS);

        left_clear = PATH_IS_CLEAR(Distance_l);
        right_clear = PATH_IS_CLEAR(Distance_r);

        if (left_clear &&
            (!right_clear || Distance_l > Distance_r)) {
            DC_MOTOR_MOVE_LEFT();
            _delay_ms(TURN_TIME_MS);
            DC_MOTOR_STOP();
        } else if (right_clear) {
            DC_MOTOR_MOVE_RIGHT();
            _delay_ms(TURN_TIME_MS);
            DC_MOTOR_STOP();
        } else {
            DC_MOTOR_MOVE_FORWARD();
        }

        _delay_ms(60);
    }
}
