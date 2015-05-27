#include <avr/interrupt.h>

#include "timer1.h"
#include "led.h"

uint8_t tmr_count = 0;

void (*seconds_cb_func)(void) = 0;

void timer1_init(uint8_t period_seconds)
{
	//Clear Timer on Compare
	if((1 <= period_seconds) && (period_seconds <= 4))
	{
		TCCR1B = (1 << 3) | 3;						//Use input clock divided by 64, timer clock is 15625Hz
		OCR1A = 15625 * period_seconds;
	}
	else if((5 <= period_seconds) && (period_seconds <= 17))
	{
		TCCR1B = (1 << 3) | 4;						//Use input clock divided by 256, timer clock is 3906Hz
		OCR1A = 3905 * period_seconds;
	}
	else if((18 <= period_seconds) && (period_seconds <= 66))
	{
		TCCR1B = (1 << 3) | 5;						//Use input clock divided by 1024, timer clock is 977Hz
		OCR1A = 977 * period_seconds;
	}

	TIMSK = (1 << 6);	//enable timer1 Output Compare A Match Interrupt Enable
}

void timer1_setCB(void (*seconds_cb)(void))
{
	seconds_cb_func = seconds_cb;
}

ISR(TIMER1_COMPA_vect)
{
	cli();

	if(seconds_cb_func)
		seconds_cb_func();

	sei();
}
