/*
 * PID.h
 *
 *  Created on: Apr 21, 2021
 *      Author: Johannes Höfler
 */

#ifndef INC_PID_H_
#define INC_PID_H_

#include "main.h"

#define PID_MAX_TARGET 300

namespace PID
{
extern float target;

extern float output;
extern float maxOutput;
extern float minOutput;

extern float lastError;
extern float proportional;
extern float integral;
extern float derivative;

extern float kp;
extern float ki;
extern float kd;

void Init(float kp, float ki, float kd, float _target, float _maxOutput, float _minOutput);
void SetTarget(float _target);
void Update(float input);
void ClampIntegral();
}

#endif /* INC_PID_H_ */
