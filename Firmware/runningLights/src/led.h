#ifndef LED_H_
#define LED_H_
#include <stdint.h>

enum ledState
{
	off,
	runUp,
	runDown,
	runOffUp,
	runOffDown,
	offUp,
	offDown,
	onUp,
	onDown,
	runOnUp,
	runOnDown,
	on
};


void led_init();
void led_setState(uint8_t state);
void led_animate();

void led_setGreen();
void led_setRed();
void led_setOff();


#endif /* LED_H_ */
