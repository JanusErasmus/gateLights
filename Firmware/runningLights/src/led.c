#include "config.h"
#include <avr/io.h>

uint8_t count = 0;

void led_init()
{
	LEDG_DIR |= LEDG_PIN;
	LEDR_DIR |= LEDR_PIN;
	LED1_DIR |= LED1_PIN;
	LED2_DIR |= LED2_PIN;
	LED3_DIR |= LED3_PIN;
	LED4_DIR |= LED4_PIN;
	LED5_DIR |= LED5_PIN;

}

void led_setRed()
{
	LEDR_PORT |= LEDR_PIN ;
	LEDG_PORT &= ~(LEDG_PIN) ;
}

void led_setGreen()
{
	LEDG_PORT |= LEDG_PIN ;
	LEDR_PORT &= ~(LEDR_PIN) ;
}

void led_setOff()
{
	LEDR_PORT &= ~(LEDR_PIN) ;
	LEDG_PORT &= ~(LEDG_PIN) ;
}

void setLED(uint8_t num)
{
	switch(num)
	{
	case 0:
		LED1_PORT &= ~(LED1_PIN) ;
		LED2_PORT &= ~(LED2_PIN) ;
		LED3_PORT &= ~(LED3_PIN) ;
		LED4_PORT &= ~(LED4_PIN) ;
		LED5_PORT &= ~(LED5_PIN) ;
		break;
	case 1:
		LED1_PORT |= LED1_PIN ;
		LED2_PORT &= ~(LED2_PIN) ;
		LED3_PORT &= ~(LED3_PIN) ;
		LED4_PORT &= ~(LED4_PIN) ;
		LED5_PORT &= ~(LED5_PIN) ;
		break;
	case 2:
		LED1_PORT &= ~(LED1_PIN) ;
		LED2_PORT |= (LED2_PIN) ;
		LED3_PORT &= ~(LED3_PIN) ;
		LED4_PORT &= ~(LED4_PIN) ;
		LED5_PORT &= ~(LED5_PIN) ;
		break;
	case 3:
		LED1_PORT &= ~(LED1_PIN) ;
		LED2_PORT &= ~(LED2_PIN) ;
		LED3_PORT |= (LED3_PIN) ;
		LED4_PORT &= ~(LED4_PIN) ;
		LED5_PORT &= ~(LED5_PIN) ;
		break;
	case 4:
		LED1_PORT &= ~(LED1_PIN) ;
		LED2_PORT &= ~(LED2_PIN) ;
		LED3_PORT &= ~(LED3_PIN) ;
		LED4_PORT |= (LED4_PIN) ;
		LED5_PORT &= ~(LED5_PIN) ;
		break;
	case 5:
		LED1_PORT &= ~(LED1_PIN) ;
		LED2_PORT &= ~(LED2_PIN) ;
		LED3_PORT &= ~(LED3_PIN) ;
		LED4_PORT &= ~(LED4_PIN) ;
		LED5_PORT |= (LED5_PIN) ;
		break;


	}
}

void led_runUp()
{
	while(count++ < 5)
	{
		setLED(count);
		_delay_ms(125);
	};

	count = 0;
	setLED(count);
}

void led_switchUp()
{
	LED1_PORT |= LED1_PIN ;
	LED2_PORT &= ~(LED2_PIN) ;
	LED3_PORT &= ~(LED3_PIN) ;
	LED4_PORT &= ~(LED4_PIN) ;
	LED5_PORT &= ~(LED5_PIN) ;
	_delay_ms(125);
	LED2_PORT |= LED2_PIN ;
	_delay_ms(125);
	LED3_PORT |= LED3_PIN ;
	_delay_ms(125);
	LED4_PORT |= LED4_PIN ;
	_delay_ms(125);
	LED5_PORT |= LED5_PIN ;
	_delay_ms(125);
}

void led_runDown()
{
	count = 6;

	while(count-- > 0)
	{
		setLED(count);
		_delay_ms(125);
	};
}

void led_switchDown()
{
	LED1_PORT &= ~(LED1_PIN) ;
	LED2_PORT &= ~(LED2_PIN) ;
	LED3_PORT &= ~(LED3_PIN) ;
	LED4_PORT &= ~(LED4_PIN) ;
	LED5_PORT |= (LED5_PIN) ;
	_delay_ms(125);
	LED4_PORT |= LED4_PIN ;
	_delay_ms(125);
	LED3_PORT |= LED3_PIN ;
	_delay_ms(125);
	LED2_PORT |= LED2_PIN ;
	_delay_ms(125);
	LED1_PORT |= LED1_PIN ;
	_delay_ms(125);
}

void led_switchON()
{
	LED1_PORT |= (LED1_PIN) ;
	LED2_PORT |= (LED2_PIN) ;
	LED3_PORT |= (LED3_PIN) ;
	LED4_PORT |= (LED4_PIN) ;
	LED5_PORT |= (LED5_PIN) ;
}

void led_switchOFF()
{

	LED1_PORT &= ~(LED1_PIN) ;
	LED2_PORT &= ~(LED2_PIN) ;
	LED3_PORT &= ~(LED3_PIN) ;
	LED4_PORT &= ~(LED4_PIN) ;
	LED5_PORT &= ~(LED5_PIN) ;
}
