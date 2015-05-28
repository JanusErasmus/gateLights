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

typedef struct
{
	volatile uint8_t * ddr_reg;
	volatile uint8_t * port_reg;
	uint8_t pin;
}ledPins;


void led_init();
void led_setState(uint8_t state);
void led_animate();

void led_setGreen();
void led_setRed();
void led_setOff();


#endif /* LED_H_ */
