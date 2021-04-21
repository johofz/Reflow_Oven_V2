/*
 * Light.h
 *
 *  Created on: Apr 20, 2021
 *      Author: Johannes Höfler
 */

#ifndef INC_LIGHT_H_
#define INC_LIGHT_H_

#include "main.h"

#define LIGHT_OFF       0
#define LIGHT_ON        1

namespace Light
{
extern GPIO_TypeDef *port;
extern uint16_t pin;
extern uint8_t state;

void Init(GPIO_TypeDef *_port, uint16_t _pin);
void On();
void Off();
}

#endif /* INC_LIGHT_H_ */
