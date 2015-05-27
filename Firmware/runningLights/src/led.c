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
	volatile uint8_t * port = 0;
	uint8_t pin = 0;

	switch(num)
	{
	case 1:
		port = &LED1_PORT;
		pin = LED1_PIN;
		break;
	case 2:
		port = &LED2_PORT;
		pin = LED2_PIN;
		break;
	case 3:
		port = &LED3_PORT;
		pin = LED3_PIN;
		break;
	case 4:
		port = &LED4_PORT;
		pin = LED4_PIN;
		break;
	case 5:
		port = &LED5_PORT;
		pin = LED5_PIN;
		break;
	}

	if(onOff)
	{
		LED1_PORT |= (LED1_PIN) ;
		LED2_PORT |= (LED2_PIN) ;
		LED3_PORT |= (LED3_PIN) ;
		LED4_PORT |= (LED4_PIN) ;
		LED5_PORT |= (LED5_PIN) ;
		*port &= ~(pin);
	}
	else
	{
		LED1_PORT &= ~(LED1_PIN) ;
		LED2_PORT &= ~(LED2_PIN) ;
		LED3_PORT &= ~(LED3_PIN) ;
		LED4_PORT &= ~(LED4_PIN) ;
		LED5_PORT &= ~(LED5_PIN) ;
		*port |= pin;
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
		LED1_PORT |= LED1_PIN ;
		_delay_ms(FLICKER_DELAY);
		LED2_PORT |= LED2_PIN ;
		_delay_ms(FLICKER_DELAY);
		LED3_PORT |= LED3_PIN ;
		_delay_ms(FLICKER_DELAY);
		LED4_PORT |= LED4_PIN ;
		_delay_ms(FLICKER_DELAY);
		LED5_PORT |= LED5_PIN ;
		_delay_ms(FLICKER_DELAY);
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
		LED5_PORT |= (LED5_PIN) ;
		_delay_ms(FLICKER_DELAY);
		LED4_PORT |= LED4_PIN ;
		_delay_ms(FLICKER_DELAY);
		LED3_PORT |= LED3_PIN ;
		_delay_ms(FLICKER_DELAY);
		LED2_PORT |= LED2_PIN ;
		_delay_ms(FLICKER_DELAY);
		LED1_PORT |= LED1_PIN ;
		_delay_ms(FLICKER_DELAY);

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
	LED5_PORT &= ~(LED5_PIN) ;
	_delay_ms(FLICKER_DELAY);
	LED4_PORT &= ~(LED4_PIN) ;
	LED2_PORT &= ~(LED2_PIN) ;
	_delay_ms(FLICKER_DELAY);
	LED3_PORT &= ~(LED3_PIN) ;
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
