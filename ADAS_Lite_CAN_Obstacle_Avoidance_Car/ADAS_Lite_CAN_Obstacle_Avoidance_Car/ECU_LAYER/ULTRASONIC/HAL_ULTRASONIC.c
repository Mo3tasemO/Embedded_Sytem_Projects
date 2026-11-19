/*
 * HAL_ULTRASONIC.c
 *
 *  Created on: Nov 12, 2026
 *      Author: Moata
 */

#include "HAL_ULTRASONIC.h"

#define ULTRASONIC_TIMER1_PRESCALER   8UL

static void ULTRASONIC_TRIGER(void);

pin_config_t trig_pin = { .port = PORTC_INDEX, .pin = GPIO_PIN6, .direction =
		GPIO_DIRECTION_OUTPUT, .logic = GPIO_LOW };

void ULTRASONIC_INIT(void) {
	GPIO_PIN_INIT(&trig_pin);
}

uint16 ULTRASONIC_MEASURE_DISTANCE(void)
{
    uint32 ticks_copy;
    uint32 pulse_us;
    uint16 waited_us = 0;
    uint8 sreg_backup;
    uint8 capture_complete;

    ULTRASONIC_CAPTURE_RESET();
    ULTRASONIC_TRIGER();

    while ((echo_ready == 0) && (waited_us < 45000U)) {
        _delay_us(10);
        waited_us += 10U;
    }

    /* Read the completion flag and captured width together. */
    sreg_backup = SREG;
    CLEAR_BIT(SREG, I_BIT);

    capture_complete = echo_ready;
    ticks_copy = timer1_ticks;

    SREG = sreg_backup;

    if (capture_complete == 0) {
        return ULTRASONIC_NO_ECHO;
    }

    pulse_us = (ticks_copy * ULTRASONIC_TIMER1_PRESCALER)
               / (F_CPU / 1000000UL);

    if (pulse_us > 25000UL) {
        return ULTRASONIC_OUT_OF_RANGE;
    }

    return (uint16)(pulse_us / 58UL);
}

static void ULTRASONIC_TRIGER(void) {

	GPIO_PIN_WRITE_LOGIC(&trig_pin, GPIO_LOW);

	_delay_us(2);

	GPIO_PIN_WRITE_LOGIC(&trig_pin, GPIO_HIGH);

	_delay_us(10);

	GPIO_PIN_WRITE_LOGIC(&trig_pin, GPIO_LOW);

}
