/*
 * timer1.h
 *
 *  Created on: 27 May 2015
 *      Author: janus
 */

#ifndef SRC_TIMER1_H_
#define SRC_TIMER1_H_

void timer1_init(uint8_t period_seconds);
void timer1_setCB(void (*seconds_cb)(void));

#endif /* SRC_TIMER1_H_ */
