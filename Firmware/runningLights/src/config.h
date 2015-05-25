#ifndef _CONFIG_H_
#define _CONFIG_H_

#include <stdint-gcc.h>

#define F_CPU 1000000ul
#include <util/delay.h>

#define UPS_VERSION		"0.0.1 March 2015\r\n"

#define SYSTEM_CLOCK    1000000  //1Mhz
#define BAUDRATE        9600
#define TIMER_PRESCALER 1

#define FALSE 0
#define TRUE  1

#define WDT_FORCED_RESET		255 //2056s //reset will be (WDT_FORCED_RESET + 2) * 8 seconds

#define INPUT_DOWN

#define LEDG_PORT	PORTA
#define LEDG_DIR	DDRA
#define LEDG_PIN	(1 << 5)
#define LEDR_PORT	PORTA
#define LEDR_DIR	DDRA
#define LEDR_PIN	(1 << 6)

#define LED1_PORT	PORTB
#define LED1_DIR	DDRB
#define LED1_PIN	(1 << 2)
#define LED2_PORT	PORTC
#define LED2_DIR	DDRC
#define LED2_PIN	(1 << 1)
#define LED3_PORT	PORTB
#define LED3_DIR	DDRB
#define LED3_PIN	(1 << 1)
#define LED4_PORT	PORTA
#define LED4_DIR	DDRA
#define LED4_PIN	(1 << 1)
#define LED5_PORT	PORTA
#define LED5_DIR	DDRA
#define LED5_PIN	(1 << 2)


#endif //Include Guard
