/*
 * MAX31855.h
 *
 *  Created on: Apr 20, 2021
 *      Author: Johannes Höfler
 */

#ifndef INC_MAX31855_H_
#define INC_MAX31855_H_

#include "main.h"

namespace MAX31855
{
extern SPI_HandleTypeDef *spi;      // Handle zu SPI-Treiber
extern GPIO_TypeDef *port;          // CS-Port
extern uint16_t pin;                // CS-Pin

extern float externalTemp;          // Temperatur an Messstelle
extern float internalTemp;          // Temperatur intern

extern uint8_t fault;               // Fehler-Flag (allgemein)
extern uint8_t openCircuit;         // Flag: Offene Messstelle
extern uint8_t shortToGND;          // Flag: Kurzschluss zu GND
extern uint8_t shortToVCC;          // Flag: Kurzschluss zu VCC

void ConvertToExternal(uint32_t reading);    // Konvertiert m_reading zu m_externalTemp
void ConvertToInternal(uint32_t reading);    // Konvertiert m_reading zu m_internalTemp
void ConvertToFaults(uint32_t reading);    // Konvertiert m_reading zu Fehler-Flags

uint8_t Init(SPI_HandleTypeDef *_spi, GPIO_TypeDef *_port, uint16_t _pin);
uint8_t Update();    // Ruft neue Werte von Sensor ab und gibt Fehlerstatus zurück
}


#endif /* INC_MAX31855_H_ */
