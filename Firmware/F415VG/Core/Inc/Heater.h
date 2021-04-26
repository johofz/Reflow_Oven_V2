/*
 * Heater.h
 *
 *  Created on: Apr 20, 2021
 *      Author: Johannes Höfler
 */

#ifndef INC_HEATER_H_
#define INC_HEATER_H_

#include "main.h"

#define HEATER_START_DELAY          0
#define HEATER_PULSE_WIDTH          100

#define HEATER_OFF                  0
#define HEATER_ON                   1
#define HEATER_PHASE_CUTTING        2

namespace Heater
{
extern GPIO_TypeDef *port;    // Heater-Port
extern uint16_t pin;    // Heater-Pin

extern volatile uint8_t *state;    // Status des Heaters

extern TIM_HandleTypeDef *start_timer;    // Timer für Start des Pulses für den Triac
extern TIM_HandleTypeDef *end_timer;    // Timer für Ende des Pulses für den Triac

extern float duty;

void Init(GPIO_TypeDef *_port, uint16_t _pin, TIM_HandleTypeDef *_start_timer,
        TIM_HandleTypeDef *_end_timer, volatile uint8_t *_state);
void SetDuty(float _duty);

void On();
void Off();
}

#endif /* INC_HEATER_H_ */
