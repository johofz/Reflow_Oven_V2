/*
 * PID.cpp
 *
 *  Created on: Apr 21, 2021
 *      Author: Johannes Höfler
 */

#include "PID.h"

float PID::target;

float PID::output;
float PID::maxOutput;
float PID::minOutput;

float PID::lastError;
float PID::proportional;
float PID::integral;
float PID::derivative;

float PID::kp;
float PID::ki;
float PID::kd;

void PID::Init(float _kp, float _ki, float _kd, float _target, float _maxOutput, float _minOutput)
{
    kp = _kp;
    ki = _ki;
    kd = _kd;

    target = _target;
    integral = 0;
    lastError = 0;

    maxOutput = _maxOutput;
    minOutput =_minOutput;
}

void PID::SetTarget(float _target)
{
    if (_target < PID_MAX_TARGET)
    {
        target = _target;
    }
}

void PID::Update(float input)
{
    float error = target - input;

    proportional = kp * error;

    integral += ki * error;
    ClampIntegral();

    derivative = kd * (error - lastError);

    output = proportional + integral + derivative;

    // Output-Clamping
    if (output > maxOutput)
    {
        output = maxOutput;
    }
    else if (output < minOutput)
    {
        output = minOutput;
    }

    // letzten Fehler aktualisieren
    lastError = error;
}

void PID::ClampIntegral()
{
    float minIntegral, maxIntegral;

    if (maxOutput > proportional)
    {
        maxIntegral = maxOutput - proportional;
    }
    else
    {
        maxIntegral = 0.0f;
    }

    if (minOutput < proportional)
    {
        minIntegral = minOutput - proportional;
    }
    else
    {
        minIntegral = 0.0f;
    }

    if (integral > maxIntegral)
    {
        integral = maxIntegral;
    }
    else if (integral < minIntegral)
    {
        integral = minIntegral;
    }
}
