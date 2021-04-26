/*
 * Touch.cpp
 *
 *  Created on: 05.04.2021
 *      Author: Johannes Höfler
 */

#include "Touch.h"

SPI_HandleTypeDef *Touch::spi;
GPIO_TypeDef *Touch::cs_port;
uint16_t Touch::cs_pin;

inline void Touch::SendControl(uint8_t addr)
{
    uint8_t control = 0x88 & (addr << 4);
    HAL_SPI_Transmit(spi, &control, sizeof(control), TOUCH_TX_TIMEOUT);
}

inline void Touch::ReciveData(uint8_t *rxBuff, uint16_t size)
{
    HAL_SPI_Receive(spi, rxBuff, size, TOUCH_RX_TIMEOUT);
}

void Touch::Init(SPI_HandleTypeDef *_spi, GPIO_TypeDef *_cs_port, uint16_t _cs_pin)
{
    spi = _spi;
    cs_port = _cs_port;
    cs_pin = _cs_pin;
}

float Touch::Temperatur()
{
    uint16_t v0, v1, dv;

    TOUCH_ENABLE();
    SendControl(TOUCH_MEASURE_TEMP0);
    ReciveData((uint8_t*) &v0, sizeof(v0));
    SendControl(TOUCH_MEASURE_TEMP1);
    ReciveData((uint8_t*) &v1, sizeof(v1));
    TOUCH_DISABLE();

    dv = v1 - v0;
    float temp = 2.573 * dv - 273;

    return temp;
}

uint16_t Touch::Pressure()
{
    uint16_t z1, z2;

    TOUCH_ENABLE();
    SendControl(TOUCH_MEASURE_Z1);
    ReciveData((uint8_t*) &z1, sizeof(z1));
    SendControl(TOUCH_MEASURE_Z2);
    ReciveData((uint8_t*) &z2, sizeof(z2));
    TOUCH_DISABLE();

    return TOUCH_RESISTANCE_X * MeasureX() / 4096 * (z2 / z1 - 1);
}

uint16_t Touch::MeasureX()
{
    uint16_t x;

    TOUCH_ENABLE();
    SendControl(TOUCH_MEASURE_X);
    ReciveData((uint8_t*) &x, sizeof(x));
    TOUCH_DISABLE();

    return x;
}

uint16_t Touch::MeasureY()
{
    uint16_t y;

    TOUCH_ENABLE();
    SendControl(TOUCH_MEASURE_Y);
    ReciveData((uint8_t*) &y, sizeof(y));
    TOUCH_DISABLE();

    return y;
}
