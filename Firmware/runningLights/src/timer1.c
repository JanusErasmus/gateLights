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
		//Call back is within the internal 1MHz oscillator accuracy
	}
	else if((5 <= period_seconds) && (period_seconds <= 17))
	{
		TCCR1B = (1 << 3) | 4;						//Use input clock divided by 256, timer clock is 3906Hz
		OCR1A = 3905 * period_seconds;
		//Call back is actually called:
		//period,	call back
		//5			4.99968
		//6			5.999616
		//7			6.999552
		//8			7.999488
		//9			8.999424
		//10		9.99936
		//11		10.999296
		//12		11.999232
		//13		12.999168
		//14		13.999104
		//15		14.99904
		//16		15.998976
		//17		16.998912

	}
	else if((18 <= period_seconds) && (period_seconds <= 66))
	{
		TCCR1B = (1 << 3) | 5;						//Use input clock divided by 1024, timer clock is 977Hz
		OCR1A = 977 * period_seconds;
		//Call back is actually called:
		//period,	call back
		//18		17.989632
		//19		18.989056
		//20		19.98848
		//21		20.987904
		//22		21.987328
		//23		22.986752
		//24		23.986176
		//25		24.9856
		//26		25.985024
		//27		26.984448
		//28		27.983872
		//29		28.983296
		//30		29.98272
		//31		30.982144
		//32		31.981568
		//33		32.980992
		//34		33.980416
		//35		34.97984
		//36		35.979264
		//37		36.978688
		//38		37.978112
		//39		38.977536
		//40		39.97696
		//41		40.976384
		//42		41.975808
		//43		42.975232
		//44		43.974656
		//45		44.97408
		//46		45.973504
		//47		46.972928
		//48		47.972352
		//49		48.971776
		//50		49.9712
		//51		50.970624
		//52		51.970048
		//53		52.969472
		//54		53.968896
		//55		54.96832
		//56		55.967744
		//57		56.967168
		//58		57.966592
		//59		58.966016
		//60		59.96544
		//61		60.964864
		//62		61.964288
		//63		62.963712
		//64		63.963136
		//65		64.96256
		//66		65.961984


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
