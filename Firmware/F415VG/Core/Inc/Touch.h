/*
 * Touch.h
 *
 *  Created on: 05.04.2021
 *      Author: Johannes Höfler
 */

#ifndef INC_TOUCH_H_
#define INC_TOUCH_H_

#include "main.h"
#include "touch_defines.h"

namespace Touch
{
extern SPI_HandleTypeDef* spi;
extern GPIO_TypeDef* cs_port;
extern uint16_t cs_pin;

inline void SendControl(uint8_t addr);
inline void ReciveData(uint8_t *rxBuff, uint16_t size);

void Init(SPI_HandleTypeDef* _spi, GPIO_TypeDef* _cs_port, uint16_t _cs_pin);

float Temperatur();
uint16_t Pressure();

uint16_t MeasureX();
uint16_t MeasureY();
}    // namespace Touch

#endif /* INC_TOUCH_H_ */
