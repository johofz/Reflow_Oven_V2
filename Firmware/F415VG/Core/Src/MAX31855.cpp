/*
 * MAX31855.cpp
 *
 *  Created on: Apr 20, 2021
 *      Author: Johannes Höfler
 */


#include "MAX31855.h"

SPI_HandleTypeDef *MAX31855::spi;      // Handle zu SPI-Treiber
GPIO_TypeDef *MAX31855::port;          // CS-Port
uint16_t MAX31855::pin;                // CS-Pin

float MAX31855::externalTemp;          // Temperatur an Messstelle
float MAX31855::internalTemp;          // Temperatur intern

uint8_t MAX31855::fault;               // Fehler-Flag (allgemein)
uint8_t MAX31855::openCircuit;         // Flag: Offene Messstelle
uint8_t MAX31855::shortToGND;          // Flag: Kurzschluss zu GND
uint8_t MAX31855::shortToVCC;          // Flag: Kurzschluss zu VCC


uint8_t MAX31855::Init(SPI_HandleTypeDef *_spi, GPIO_TypeDef *_port, uint16_t _pin)
{
    spi = _spi;
    port = _port;
    pin = _pin;

    return Update();
}

uint8_t MAX31855::Update()
{
    uint32_t reading = 0;

    uint8_t tempbuf[4] =
        { 0, 0, 0, 0 };    // Temporärer Buffer für Datenübertragung

    HAL_GPIO_WritePin(port, pin, GPIO_PIN_RESET);
    HAL_SPI_Receive(spi, &tempbuf[0], 4, 100);    // 4 Bytes über SPI empfangen
    HAL_GPIO_WritePin(port, pin, GPIO_PIN_SET);

    reading = (tempbuf[0] << 24) | (tempbuf[1] << 16) | (tempbuf[2] << 8) | (tempbuf[3] << 0);

    ConvertToExternal(reading);
    ConvertToInternal(reading);
    ConvertToFaults(reading);

    return fault;
}

void MAX31855::ConvertToExternal(uint32_t raw)
{
    externalTemp = 0;

    externalTemp += ((raw & (1 << 18)) >> 18) / 4.0f;    // bit 18: 2^-2
    externalTemp += ((raw & (1 << 19)) >> 19) / 2.0f;    // bit 19: 2^-1
    externalTemp += ((raw & (1 << 20)) >> 20);    // bit 20: 2^0
    externalTemp += ((raw & (1 << 21)) >> 21) * 2;    // bit 21: 2^1
    externalTemp += ((raw & (1 << 22)) >> 22) * 4;    // bit 22: 2^2
    externalTemp += ((raw & (1 << 23)) >> 23) * 8;    // bit 23: 2^3
    externalTemp += ((raw & (1 << 24)) >> 24) * 16;    // bit 24: 2^4
    externalTemp += ((raw & (1 << 25)) >> 25) * 32;    // bit 25: 2^5
    externalTemp += ((raw & (1 << 26)) >> 26) * 64;    // bit 26: 2^6
    externalTemp += ((raw & (1 << 27)) >> 27) * 128;    // bit 27: 2^7
    externalTemp += ((raw & (1 << 28)) >> 28) * 256;    // bit 28: 2^8
    externalTemp += ((raw & (1 << 29)) >> 29) * 512;    // bit 29: 2^9
    externalTemp += ((raw & (1 << 30)) >> 30) * 1024;    // bit 30: 2^10

    int sign = ((raw & (1 << 31)) >> 31) ? -1 : 1;    // Vorzeichen: 0: pos ; 1: neg
    externalTemp *= sign;
}

void MAX31855::ConvertToInternal(uint32_t raw)
{
    internalTemp = 0;

    internalTemp += ((raw & (1 << 4)) >> 4) / 16.0f;    // bit 4: 2^-4
    internalTemp += ((raw & (1 << 5)) >> 5) / 8.0f;    // bit 5: 2^-3
    internalTemp += ((raw & (1 << 6)) >> 6) / 4.0f;    // bit 6: 2^-2
    internalTemp += ((raw & (1 << 7)) >> 7) / 2.0f;    // bit 7: 2^-1
    internalTemp += ((raw & (1 << 8)) >> 8);    // bit 8: 2^0
    internalTemp += ((raw & (1 << 9)) >> 9) * 2;    // bit 9: 2^1
    internalTemp += ((raw & (1 << 10)) >> 10) * 4;    // bit 10: 2^2
    internalTemp += ((raw & (1 << 11)) >> 11) * 8;    // bit 11: 2^3
    internalTemp += ((raw & (1 << 12)) >> 12) * 16;    // bit 12: 2^4
    internalTemp += ((raw & (1 << 13)) >> 13) * 32;    // bit 13: 2^5
    internalTemp += ((raw & (1 << 14)) >> 14) * 64;    // bit 14: 2^6

    int sign = ((raw & (1 << 15)) >> 15) ? -1 : 1;    // Vorzeichen: 0: pos ; 1: neg
    internalTemp *= sign;
}

void MAX31855::ConvertToFaults(uint32_t raw)
{
    fault = (raw & (1 << 16)) >> 16;
    openCircuit = raw & 1;
    shortToGND = (raw & (1 << 1)) >> 1;
    shortToVCC = (raw & (1 << 2)) >> 2;
}
