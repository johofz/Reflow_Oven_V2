/*
 * Heater.cpp
 *
 *  Created on: Apr 20, 2021
 *      Author: Johannes Höfler
 */

#include "Heater.h"

GPIO_TypeDef *Heater::port;    // Heater-Port
uint16_t Heater::pin;    // Heater-Pin

volatile uint8_t *Heater::state;    // Status des Heaters

TIM_HandleTypeDef *Heater::start_timer;    // Timer für Start des Pulses
TIM_HandleTypeDef *Heater::end_timer;    // Timer für Ende des Pulses

float Heater::duty;

void Heater::Init(GPIO_TypeDef *_port, uint16_t _pin, TIM_HandleTypeDef *_start_timer,
        TIM_HandleTypeDef *_end_timer, volatile uint8_t *_state)
{
    port = _port;
    pin = _pin;

    start_timer = _start_timer;
    end_timer = _end_timer;

    state = _state;

    SetDuty(0.0);
}

void Heater::SetDuty(float _duty)
{
    if (_duty >= 100.0)
    {
        duty = 100.0;
        *state = HEATER_ON;
    }
    else if (_duty <= 0.0)
    {
        duty = 0.0;
        *state = HEATER_OFF;
    }
    else
    {
        duty = _duty;
        *state = HEATER_PHASE_CUTTING;

        uint16_t timer_max_couter = (uint16_t)((100.0 - duty) * 9000.0 / 100.0);
        start_timer->Instance->ARR = timer_max_couter + HEATER_START_DELAY;
        end_timer->Instance->ARR = timer_max_couter + HEATER_START_DELAY + HEATER_PULSE_WIDTH;
    }
}

void Heater::On()
{
    SetDuty(100.0);
}

void Heater::Off()
{
    SetDuty(0.0);
}
