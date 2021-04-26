/*
 * Flash.h
 *
 *  Created on: 04.04.2021
 *      Author: Johannes Höfler
 */

#ifndef SRC_FLASH_H_
#define SRC_FLASH_H_

#include "main.h"
#include "flash_instructions.h"

namespace Flash
{
extern SPI_HandleTypeDef* spi;
extern GPIO_TypeDef* cs_port;
extern uint16_t cs_pin;

inline void SendCommand(uint8_t command);
inline void SetAddr(uint32_t addr);
inline void SendData(uint8_t *txBuff, uint16_t size);
inline void ReadData(uint8_t *rxBuff, uint16_t size);

void Init(SPI_HandleTypeDef* _spi, GPIO_TypeDef* _cs_port, uint16_t _cs_pin);

void Reset();

void Read(uint32_t addr, uint8_t* rxBuff, uint16_t size);
void Write(uint32_t addr, uint8_t* txBuff, uint16_t size);

void EraseChip();

uint8_t IsBusy();
void GetID(uint8_t *id, uint16_t size);
}    // namespace Flash

#endif /* SRC_FLASH_H_ */
