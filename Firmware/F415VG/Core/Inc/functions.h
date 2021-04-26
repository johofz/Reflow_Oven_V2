/*
 * functions.h
 *
 *  Created on: Apr 20, 2021
 *      Author: Johannes Höfler
 */

#ifndef INC_FUNCTIONS_H_
#define INC_FUNCTIONS_H_

#include "main.h"
#include "Defines.h"

extern volatile interrupt_data_t interrupt_data;

/* Timing Funktionen */
uint64_t Micros();    // Zeit seit Systemstart in µs
uint64_t Millis();    // Zeit seit Systemstart in ms
uint64_t Seconds();    // Zeit seit Systemstart in s

void Delay_US(uint64_t us);    // Delay in µs
void Delay_MS(uint64_t ms);    // Delay in ms

#endif /* INC_FUNCTIONS_H_ */

