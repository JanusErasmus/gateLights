#include "config.h"

#include <avr/interrupt.h>
#include <avr/iotn1634.h>


#include "led.h"
#include "timer1.h"

uint8_t runFlag = 1;


void timer_cb()
{
	static uint8_t triggerUp = 0;
	static uint8_t triggerDown = 0;
	static uint8_t closeCount = 0;

//	//up gate open
//	if(!(PINA & (1 << 4)))
//	{
//		triggerUp++;
//	}
//	else
//	{
//		triggerUp = 0;
//	}
//	//Up gate open for longer than 4s, switch lights on
//	if(triggerUp == 1)
//	{
//		led_switchUp();
//	}
//	if(triggerUp > 1)
//	{
//		triggerUp = 3;
//		led_switchON();
//	}
//
//	//down gate open
//	if(!(PINA & (1 << 3)))
//	{
//		triggerDown++;
//	}
//	else
//	{
//		triggerDown = 0;
//	}
//	//Down gate open for longer than 4s, switch lights on
//	if(triggerDown == 1)
//	{
//		led_switchDown();
//	}
//	if(triggerDown > 1)
//	{
//		triggerDown = 3;
//		led_switchON();
//	}


	//Up gate open count
	if(!(PINA & (1 << 3)))
	{
		//gate open longer than 2s
		if(triggerUp++ == 1)
		{
			led_setState(onUp);
			triggerUp = 3;
		}
	}
	else
	{
		triggerUp = 0;
	}
	//Down gate open count
	if(!(PINA & (1 << 4)))
	{
		//gate open longer than 2s
		if(triggerDown++ == 1)
		{
			led_setState(onDown);
			triggerDown = 3;
		}
	}
	else
	{
		triggerDown = 0;
	}

	//both gates closed longer than 10 seconds, switch off lights
	if((PINA & (1 << 4)) && (PINA & (1 << 3)))
	{
		if(closeCount++ > 4)
		{
			led_setState(off);
		}
	}
	else
	{
		closeCount = 0;
	}
}

int main(void)
{	
	MCUSR &= ~(WDRF);
	CCP = 0xD8;
	WDTCSR = (1 << WDE) | (1 << WDIE) | (1 << 5) | 1; 
		
		
	//Setup the clock pre-scaler
	CCP = 0xD8;
	CLKPR = 0x03;
			
	sei();

	//initialize timer1
	timer1_init(2);
	timer1_setCB(timer_cb);

	//Initialize LED pins
	led_init();
	
	//enable pin change interrupt on A3 and A4
	PUEA |= (1 << 3) | (1 << 4);
	PCMSK0 |= (1 << 3) | (1 << 4);
	GIMSK |= (1 << PCIE0);

						
	uint8_t updateFlag = 1;		
	while (runFlag)
	{				
		if(updateFlag++ > 20)
		{
			updateFlag = 0;
			led_setGreen();
			_delay_ms(100);
			led_setOff();

		}
		
		led_animate();


		_delay_ms(100);

	}
}

ISR(PCINT0_vect)
{
	cli();

	GIMSK &= ~(1 << PCIE0);
	//_delay_ms(100);


	if(!(PINA & (1 << 3)))
	{
		led_setState(runUp);
	}

	if(!(PINA & (1 << 4)))
	{
		led_setState(runDown);
	}

	GIFR = (1 << PCIE0);
	GIMSK |= (1 << PCIE0);
	sei();
}

ISR(WDT_vect)
{
	static volatile uint8_t resetCnt = WDT_FORCED_RESET; //reset will be (resetCnt + 2) * 8 seconds
	if(resetCnt-- > 0)
	{
		MCUSR &= ~(WDRF);
		CCP = 0xD8;
		WDTCSR = (1 << WDE) | (1 << WDIE) | (1 << 5) | 1;
	}
	else
	{
		//stop doing stuff, we are going to reset in about 1 second
		CCP = 0xD8;
		WDTCSR = (1 << WDE) | (1 << WDIE) | 4;
		runFlag = 0;
	}
}
