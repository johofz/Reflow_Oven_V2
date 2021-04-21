/*
 * Defines.h
 *
 *  Created on: Apr 20, 2021
 *      Author: Johannes Höfler
 */

#ifndef INC_DEFINES_H_
#define INC_DEFINES_H_

#include "main.h"

#define MAX_INTERNAL_TEMP 100.0

typedef enum state_t
{
    STATE_BOOT,

    STATE_MENU_INIT, STATE_MENU,

    STATE_REFLOW_INIT, STATE_REFLOW,

    STATE_TEMPERATE_INIT, STATE_TEMPERATE,

    STATE_OPTIONS_INIT, STATE_OPTIONS,

    STATE_ERROR
} state_t;

typedef enum error_t
{
    ERROR_NO_ERROR, ERROR_UNKNOWN
} error_t;

typedef struct interrupt_data_t
{
    uint64_t timerOverflow;

    uint8_t touchReadyFlag;

    uint8_t heater_state;
    uint8_t fan_state;
    uint8_t light_state;

} interrupt_data_t;

#endif /* INC_DEFINES_H_ */
