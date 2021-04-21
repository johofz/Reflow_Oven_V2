/*
 * Fan.cpp
 *
 *  Created on: Apr 20, 2021
 *      Author: Johannes Höfler
 */

#include "Fan.h"

GPIO_TypeDef *Fan::port;
uint16_t Fan::pin;
uint8_t Fan::state;

void Fan::Init(GPIO_TypeDef *_port, uint16_t _pin)
{
    port = _port;
    pin = _pin;

    state = FAN_OFF;
    Off();
}

void Fan::On()
{
    state = FAN_ON;
    HAL_GPIO_WritePin(port, pin, GPIO_PIN_SET);
}

void Fan::Off()
{
    state = FAN_OFF;
    HAL_GPIO_WritePin(port, pin, GPIO_PIN_RESET);
}
