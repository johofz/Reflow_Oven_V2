/*
 * ILI9341.h
 *
 *  Created on: Mar 22, 2021
 *      Author: jh
 */

#ifndef INC_ILI9341_FSMC_H_
#define INC_ILI9341_FSMC_H_

#include "main.h"
#include "ILI9341_Instructions.h"


namespace ILI9341
{
extern uint16_t width;
extern uint16_t height;
extern uint32_t pixelCount;

void SendCommand(uint16_t command);
void SendData(uint16_t data);
void SetCursorPosition(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2);

void Init();
void Reset();
void SetRotation(uint8_t _rotation);

void DrawPixel(uint16_t x, uint16_t y, uint16_t color);

void Fill(uint16_t color);

void DrawRect(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1, uint16_t color);
void FillRect(uint16_t x0, uint16_t y0, uint16_t x1, uint16_t y1, uint16_t color);

void DrawCircle(int16_t x0, int16_t y0, int16_t r, uint16_t color);
void FillCircle(int16_t x0, int16_t y0, int16_t r, uint16_t color);

void DrawLine(int16_t x0, int16_t y0, int16_t x1, int16_t y1, uint16_t color);
void DrawFastHLine(int16_t x, int16_t y, int16_t w, uint16_t color);
void DrawFastVLine(int16_t x, int16_t y, int16_t h, uint16_t color);


void DrawTriangle(int16_t x0, int16_t y0, int16_t x1, int16_t y1, int16_t x2, int16_t y2,
        uint16_t color);
void FillTriangle(int16_t x0, int16_t y0, int16_t x1, int16_t y1, int16_t x2, int16_t y2,
        uint16_t color);

void DrawChar(int16_t x, int16_t y, uint8_t c, uint16_t color, uint16_t bg, uint8_t size);
void Print(char text[], int16_t x, int16_t y, uint16_t color, uint16_t bg, uint8_t size);

void Image(uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint16_t *data, uint32_t size);
}

#endif /* INC_ILI9341_FSMC_H_ */
