#include "config.h"
#include <avr/io.h>

#include "led.h"

#define FLICKER_DELAY 250

uint8_t led_count = 0;

uint8_t led_state;

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

void led_setState(uint8_t state)
{
	if(state == runUp)
	{
		if(led_state == off)
			led_state = runOnUp;
		if(led_state == on)
			led_state = runOffUp;
	}
	else if(state == runDown)
	{
		if(led_state == off)
			led_state = runOnDown;
		if(led_state == on)
			led_state = runOffDown;
	}
	else
	led_state = state;
}

void led_set(uint8_t led)
{
	switch(led)
	{
	case 1:
		LED1_PORT |= (LED1_PIN) ;
		break;
	case 2:
		LED2_PORT |= (LED2_PIN) ;
		break;
	case 3:
		LED3_PORT |= (LED2_PIN) ;
		break;
	case 4:
		LED4_PORT |= (LED4_PIN) ;
		break;
	case 5:
		LED5_PORT |= (LED5_PIN) ;
		break;
	}
}

void led_clear(uint8_t led)
{
	switch(led)
	{
	case 1:
		LED1_PORT &= ~(LED1_PIN) ;
		break;
	case 2:
		LED2_PORT &= ~(LED2_PIN) ;
		break;
	case 3:
		LED3_PORT &= ~(LED2_PIN) ;
		break;
	case 4:
		LED4_PORT &= ~(LED4_PIN) ;
		break;
	case 5:
		LED5_PORT &= ~(LED5_PIN) ;
		break;
	}
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

void led_setLED(uint8_t num, uint8_t onOff)
{
	if(onOff)
	{
		led_set(1);
		led_set(2);
		led_set(3);
		led_set(4);
		led_set(5);
		led_clear(num);
	}
	else
	{
		led_clear(1);
		led_clear(2);
		led_clear(3);
		led_clear(4);
		led_clear(5);
		led_set(num);
	}
}

void led_runUp(uint8_t onOff)
{
	led_count = 0;

	while(led_count++ < 5)
	{
		led_setLED(led_count, onOff);
		_delay_ms(FLICKER_DELAY);
	};

	led_count = 0;
	led_setLED(led_count, onOff);
}

void led_switchUp()
{
	for (uint8_t k = 1; k < 6; ++k)
	{
		led_set(k);
		_delay_ms(FLICKER_DELAY);
	}
}

void led_runDown(uint8_t onOff)
{
	led_count = 6;

	while(led_count-- > 0)
	{
		led_setLED(led_count, onOff);
		_delay_ms(FLICKER_DELAY);
	};
}

void led_switchDown()
{
	for (uint8_t k = 5; k > 0; k--)
	{
		led_set(k);
		_delay_ms(FLICKER_DELAY);
	}
}

void led_switchON()
{

	for (uint8_t k = 1; k < 6; ++k)
	{
		led_set(k);
	}
}

void led_switchOFF()
{
	led_clear(1);
	led_clear(5);
	_delay_ms(FLICKER_DELAY);
	led_clear(2);
	led_clear(4);
	_delay_ms(FLICKER_DELAY);
	led_clear(3);
}

void led_animate()
{
	switch(led_state)
	{
	case on:
		led_switchON();
		break;
	case runOnUp:
		led_runUp(0);
		break;
	case runOnDown:
		led_runDown(0);
		break;
	case onUp:
		led_switchUp(0);
		led_state = on;
		break;
	case onDown:
		led_switchDown(0);
		led_state = on;
		break;
	case offUp:
		led_switchUp(1);
		led_state = on;
		break;
	case offDown:
		led_switchDown(1);
		led_state = on;
		break;
	case runOffUp:
		led_runUp(1);
		break;
	case runOffDown:
		led_runDown(1);
		break;
	case off:
		led_switchOFF();
		break;

	}
}
