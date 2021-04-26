/*
 * Fan.h
 *
 *  Created on: Apr 20, 2021
 *      Author: Johannes Höfler
 */

#ifndef INC_FAN_H_
#define INC_FAN_H_

#include "main.h"

#define FAN_OFF     0
#define FAN_ON      1

namespace Fan
{
extern GPIO_TypeDef *port;
extern uint16_t pin;
extern uint8_t state;

void Init(GPIO_TypeDef *_port, uint16_t _pin);
void On();
void Off();
}

#endif /* INC_FAN_H_ */
