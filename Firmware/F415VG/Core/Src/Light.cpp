/*
 * Light.cpp
 *
 *  Created on: Apr 20, 2021
 *      Author: Johannes Höfler
 */

#include "Light.h"

GPIO_TypeDef *Light::port;
uint16_t Light::pin;
uint8_t Light::state;

void Light::Init(GPIO_TypeDef *_port, uint16_t _pin)
{
    port = _port;
    pin = _pin;

    state = LIGHT_OFF;
    Off();
}

void Light::On()
{
    state = LIGHT_ON;
    HAL_GPIO_WritePin(port, pin, GPIO_PIN_SET);
}

void Light::Off()
{
    state = LIGHT_OFF;
    HAL_GPIO_WritePin(port, pin, GPIO_PIN_RESET);
}
