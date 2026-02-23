/*
 * DIO.h
 *
 *  Created on: 12 Aug 2025
 *      Author: Mohamed Ashraf
 */

#ifndef MCAL_DIO_DIO_H_
#define MCAL_DIO_DIO_H_

// PORTA
#define DDRA    (*(volatile u8 *)(0x3A))
#define PORTA   (*(volatile u8 *)(0x3B))
#define PINA    (*(volatile u8 *)(0x39))

// PORTB
#define DDRB    (*(volatile u8 *)(0x37))
#define PORTB   (*(volatile u8 *)(0x38))
#define PINB    (*(volatile u8 *)(0x36))

// PORTC
#define DDRC    (*(volatile u8 *)(0x34))
#define PORTC   (*(volatile u8 *)(0x35))
#define PINC    (*(volatile u8 *)(0x33))

// PORTD
#define DDRD    (*(volatile u8 *)(0x31))
#define PORTD   (*(volatile u8 *)(0x32))
#define PIND    (*(volatile u8 *)(0x30))

// DIO PORTS
#define DIO_PORTA    1
#define DIO_PORTB    2
#define DIO_PORTC    3
#define DIO_PORTD    4

// DIO PINS
#define DIO_PIN0     0
#define DIO_PIN1     1
#define DIO_PIN2     2
#define DIO_PIN3     3
#define DIO_PIN4     4
#define DIO_PIN5     5
#define DIO_PIN6     6
#define DIO_PIN7     7

// I/O status
#define DIO_INPUT    0
#define DIO_OUTPUT   1

// 	HIGH/LOW mode
#define DIO_LOW      0
#define DIO_HIGH     1

// Functions prototypes
void DIO_InitPin      (u8 PORT_Name , u8  PIN_Number , u8  Mode) ;
void DIO_SetPinValue  (u8  PORT_Name , u8  PIN_Number , u8  Val ) ;
void DIO_TogPinValue  (u8  PORT_Name , u8  PIN_Number          ) ;
u8    DIO_ReadPinValue (u8  PORT_Name , u8  PIN_Number          ) ;

void DIO_InitPort      (u8 PORT_Name , u8  Mode) ;
void DIO_SetPortValue  (u8  PORT_Name , u8  Val ) ;
void DIO_TogPortValue  (u8  PORT_Name          ) ;
u8    DIO_ReadPortValue (u8  PORT_Name       ) ;



#endif /* MCAL_DIO_DIO_H_ */
