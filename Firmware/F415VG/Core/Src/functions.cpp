/*
 * functions.cpp
 *
 *  Created on: Apr 20, 2021
 *      Author: Johannes Höfler
 */

#include "functions.h"

/*
 * Zeit seit Systemstart in µs.
 * Basis für alle Zeiterfassung ist TIM2 (32-bit timer).
 * Zusammen mit interrupt_data.timer_overflow kann eine Gesamtzeit von ca. 3257 Tagen erreicht werden
 */
uint64_t Micros()
{
    return TIM2->CNT + (interrupt_data.timerOverflow - 1) * 0xffffffff;
}

/*
 * Zeit seit Systemstart in ms.
 */
uint64_t Millis()
{
    return Micros() / 1000;
}

/*
 * Zeit seit Systemstart in s.
 */
uint64_t Seconds()
{
    return Micros() / 1000000;
}

/*
 * Blocking Delay in µs.
 * Maximal 65535µs.
 */
void Delay_US(uint64_t us)
{
    uint64_t delay = Micros() + us;
    while (Micros() < delay);
}

/*
 * Blocking Delay in ms.
 * Maximal 65535ms.
 */
void Delay_MS(uint64_t ms)
{
    uint64_t delay = Millis() + ms;
    while (Millis() < delay);
}
