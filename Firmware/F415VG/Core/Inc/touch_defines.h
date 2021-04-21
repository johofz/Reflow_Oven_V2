/*
 * touch_defines.h
 *
 *  Created on: 05.04.2021
 *      Author: Johannes Höfler
 */

#ifndef INC_TOUCH_DEFINES_H_
#define INC_TOUCH_DEFINES_H_


#define TOUCH_ENABLE()          cs_port->BSRR = (uint32_t) cs_pin << 16U
#define TOUCH_DISABLE()         cs_port->BSRR = cs_pin


#define TOUCH_MEASURE_TEMP0     0x00
#define TOUCH_MEASURE_Y         0x01
#define TOUCH_MEASURE_VBAT      0x02
#define TOUCH_MEASURE_Z1        0x03
#define TOUCH_MEASURE_Z2        0x04
#define TOUCH_MEASURE_X         0x05
#define TOUCH_MEASURE_AUX       0x05
#define TOUCH_MEASURE_TEMP1     0x07

#define TOUCH_RESISTANCE_X      500
#define TOUCH_RX_TIMEOUT        10
#define TOUCH_TX_TIMEOUT        0

#endif /* INC_TOUCH_DEFINES_H_ */
