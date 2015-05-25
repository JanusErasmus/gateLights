#include "config.h"

#include <avr/interrupt.h>
#include <avr/iotn1634.h>


#include "led.h"

uint8_t runFlag = 1;


int main(void)
{	
	MCUSR &= ~(WDRF);
	CCP = 0xD8;
	WDTCSR = (1 << WDE) | (1 << WDIE) | (1 << 5) | 1; 
		
		
	//Setup the clock pre-scaler
	CCP = 0xD8;
	CLKPR = 0x03;
			
	sei();

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

		if(!(PINA & (1 << 3)) || !(PINA & (1 << 4)))
		{
			led_switchON();
			led_setRed();
		}
		else
		{
			led_switchOFF();
			led_setOff();
		}
		
		_delay_ms(100);

	}
}

ISR(PCINT0_vect)
{
	cli();
	_delay_ms(10);

	if(!(PINA & (1 << 3)))
	{
		led_runDown();
		led_switchDown();
	}

	if(!(PINA & (1 << 4)))
	{
		led_runUp();
		led_switchUp();
	}

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
