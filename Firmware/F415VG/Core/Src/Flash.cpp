/*
 * Flash.cpp
 *
 *  Created on: 04.04.2021
 *      Author: Johannes Höfler
 */

#include "Flash.h"

SPI_HandleTypeDef* Flash::spi;
GPIO_TypeDef* Flash::cs_port;
uint16_t Flash::cs_pin;

inline void Flash::SendCommand(uint8_t command)
{
    HAL_SPI_Transmit(spi, &command, 1, 0);
}

inline void Flash::SetAddr(uint32_t addr)
{
    uint8_t tempBuf[FLASH_ADDR_SIZE];
    tempBuf[0] = (addr & 0xFF0000) >> 16;
    tempBuf[1] = (addr & 0x00FF00) >> 8;
    tempBuf[2] = (addr & 0x0000FF);

    HAL_SPI_Transmit(spi, tempBuf, FLASH_ADDR_SIZE, FLASH_TX_TIMEOUT);
}

inline void Flash::SendData(uint8_t *txBuff, uint16_t size)
{
    HAL_SPI_Transmit(spi, txBuff, size, FLASH_TX_TIMEOUT);
}

inline void Flash::ReadData(uint8_t *rxBuff, uint16_t size)
{
    HAL_SPI_Receive(spi, rxBuff, size, FLASH_RX_TIMEOUT);
}

void Flash::Init(SPI_HandleTypeDef *_spi, GPIO_TypeDef *_cs_port, uint16_t _cs_pin)
{
    spi = _spi;
    cs_port = _cs_port;
    cs_pin = _cs_pin;

    Reset();
}

void Flash::Reset()
{
    FLASH_ENABLE();
    SendCommand(FLASH_RSTEN);
    FLASH_DISABLE();

    FLASH_ENABLE();
    SendCommand(FLASH_RST);
    FLASH_DISABLE();
}

void Flash::Read(uint32_t addr, uint8_t *rxBuff, uint16_t size)
{
    FLASH_ENABLE();
    SendCommand(FLASH_READ);
    SetAddr(addr);
    ReadData(rxBuff, size);
    FLASH_DISABLE();
}

void Flash::Write(uint32_t addr, uint8_t *txBuff, uint16_t size)
{
    FLASH_ENABLE();
    SendCommand(FLASH_PAGE_PROG);
    SetAddr(addr);
    SendData(txBuff, size);
    FLASH_DISABLE();
}

void Flash::EraseChip()
{
    FLASH_ENABLE();
    SendCommand(FLASH_ERASE_CHIP);
    FLASH_DISABLE();
}

uint8_t Flash::IsBusy()
{
    uint8_t state;

    FLASH_ENABLE();
    SendCommand(FLASH_RDSR);
    ReadData(&state, sizeof(uint8_t));
    FLASH_DISABLE();
}

void Flash::GetID(uint8_t *id, uint16_t size)
{
    if (size >= 2)
    {
        FLASH_ENABLE();
        SendCommand(FLASH_JEDEC_ID);
        ReadData(id, size);
        FLASH_DISABLE();
    }
}
