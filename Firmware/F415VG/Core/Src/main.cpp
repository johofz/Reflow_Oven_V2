/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.c
 * @brief          : Main program body
 ******************************************************************************
 * @attention
 *
 * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
 * All rights reserved.</center></h2>
 *
 * This software component is licensed by ST under BSD 3-Clause license,
 * the "License"; You may not use this file except in compliance with the
 * License. You may obtain a copy of the License at:
 *                        opensource.org/licenses/BSD-3-Clause
 *
 ******************************************************************************
 */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "spi.h"
#include "tim.h"
#include "usb_device.h"
#include "gpio.h"
#include "fsmc.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "Defines.h"
#include "Touch.h"
#include "usbd_cdc_if.h"
#include "MAX31855.h"
#include "Heater.h"
#include "Fan.h"
#include "Light.h"
#include "functions.h"
#include "PID.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
volatile interrupt_data_t interrupt_data =
    { 0 };
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
 * @brief  The application entry point.
 * @retval int
 */
int main(void)
{
    /* USER CODE BEGIN 1 */

    /* USER CODE END 1 */

    /* MCU Configuration--------------------------------------------------------*/

    /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
    HAL_Init();

    /* USER CODE BEGIN Init */

    /* USER CODE END Init */

    /* Configure the system clock */
    SystemClock_Config();

    /* USER CODE BEGIN SysInit */

    /* USER CODE END SysInit */

    /* Initialize all configured peripherals */
    MX_GPIO_Init();
    MX_FSMC_Init();
    MX_USB_DEVICE_Init();
    MX_SPI1_Init();
    MX_SPI3_Init();
    MX_TIM2_Init();
    MX_TIM3_Init();
    MX_TIM4_Init();
    MX_TIM6_Init();
    /* USER CODE BEGIN 2 */

    HAL_TIM_Base_Start_IT(&htim2);

    Heater::Init(HEATER_GPIO_Port, HEATER_Pin, &htim3, &htim4, &interrupt_data.heater_state);
    Fan::Init(FAN_GPIO_Port, FAN_Pin);
    Light::Init(LIGHT_GPIO_Port, LIGHT_Pin);

    if (MAX31855::Init(&hspi1, TEMP_CS_GPIO_Port, TEMP_CS_Pin) == 1)    // Initialisierung auf Fehler prüfen
    {
        while (1)    // Dauerschleife im Fehlerfall
        {
            char msg[100];

            if (MAX31855::openCircuit)
            {
                sprintf(msg, "Fehler: Thermoelement offen!\n\r");
            }
            else if (MAX31855::shortToGND)
            {
                sprintf(msg, "Fehler: Thermoelement kurzgeschlossen mit GND!\n\r");
            }
            else if (MAX31855::shortToVCC)
            {
                sprintf(msg, "Fehler: Thermoelement kurzgeschlossen mit 3.3V!\n\r");
            }
            else
            {
                sprintf(msg, "Unbekannter Fehler von Thermoelement aufgerteten!\n\r");
            }

            CDC_Transmit_FS((uint8_t*) msg, strlen(msg));
            HAL_Delay(1000);
        }
    }

    Touch::Init(&hspi3, TOUCH_CS_GPIO_Port, TOUCH_CS_Pin);
    PID::Init(2.07, 0.023, 0, MAX31855::internalTemp, 100, 0);

    HAL_Delay(5000);
    Fan::On();
    Light::On();
    Heater::Off();

    PID::SetTarget(100.0);

    uint8_t preheating = 1;
    uint8_t holding = 0;
    uint8_t soldering = 0;
    uint8_t cooldown = 0;

    uint16_t holding_start;
    uint16_t soldering_start;

    /* USER CODE END 2 */

    /* Infinite loop */
    /* USER CODE BEGIN WHILE */
    while (1)
    {
        char msg[100];

        MAX31855::Update();

        if (MAX31855::fault)
        {
            Heater::Off();
            sprintf(msg,
                    "Fehler bei Temperaturerfassung! Heater wurde abgeschaltet. Reset erforderlich!\n\r");
            CDC_Transmit_FS((uint8_t*) msg, strlen(msg));
            while (1);
        }
        else
        {
            if (preheating)
            {
                PID::Update(MAX31855::externalTemp);
                Heater::SetDuty(PID::output);

                if (MAX31855::externalTemp >= 100.0)
                {
                    preheating = 0;
                    holding = 1;
                    holding_start = (uint16_t) Seconds();
                }
            }
            else if (holding)
            {
                PID::Update(MAX31855::externalTemp);
                Heater::SetDuty(PID::output);

                uint16_t current_time_s = (uint16_t) Seconds();
                if (current_time_s - holding_start > 120)
                {
                    holding = 0;
                    soldering = 1;
                    soldering_start = (uint16_t) Seconds();
                }
            }
            else if (soldering)
            {
                uint16_t current_time_s = (uint16_t) Seconds();
                if (MAX31855::externalTemp < 260.0 && current_time_s - soldering_start < 300)
                {
                    Heater::On();
                }
                else
                {
                    soldering = 0;
                    cooldown = 1;
                }
            }
            else if (cooldown)
            {
                Heater::Off();
                Light::Off();
            }
        }
        sprintf(msg, "%f,%f,%f,%u\n\r", MAX31855::externalTemp, MAX31855::internalTemp,
                Heater::duty, (uint16_t) Seconds());
        CDC_Transmit_FS((uint8_t*) msg, strlen(msg));

        HAL_Delay(1000);
        /* USER CODE END WHILE */

        /* USER CODE BEGIN 3 */
    }
    /* USER CODE END 3 */
}

/**
 * @brief System Clock Configuration
 * @retval None
 */
void SystemClock_Config(void)
{
    RCC_OscInitTypeDef RCC_OscInitStruct =
        { 0 };
    RCC_ClkInitTypeDef RCC_ClkInitStruct =
        { 0 };

    /** Configure the main internal regulator output voltage
     */
    __HAL_RCC_PWR_CLK_ENABLE();
    __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
    /** Initializes the RCC Oscillators according to the specified parameters
     * in the RCC_OscInitTypeDef structure.
     */
    RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
    RCC_OscInitStruct.HSEState = RCC_HSE_ON;
    RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
    RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
    RCC_OscInitStruct.PLL.PLLM = 8;
    RCC_OscInitStruct.PLL.PLLN = 168;
    RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
    RCC_OscInitStruct.PLL.PLLQ = 7;
    if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
    {
        Error_Handler();
    }
    /** Initializes the CPU, AHB and APB buses clocks
     */
    RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_PCLK1
            | RCC_CLOCKTYPE_PCLK2;
    RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
    RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
    RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV4;
    RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

    if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_5) != HAL_OK)
    {
        Error_Handler();
    }
}

/* USER CODE BEGIN 4 */

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
    switch (GPIO_Pin) {
        case ZCD_Pin: {
            switch (interrupt_data.heater_state) {
                case HEATER_ON:
                    HEATER_GPIO_Port->BSRR = HEATER_Pin;
                    break;

                case HEATER_OFF:
                    HEATER_GPIO_Port->BSRR = (uint32_t) HEATER_Pin << 16U;
                    break;

                case HEATER_PHASE_CUTTING:
                    HAL_TIM_Base_Start_IT(&htim3);
                    HAL_TIM_Base_Start_IT(&htim4);
                    break;
            }
            break;
        }
        case TOUCH_IQR_Pin:
            break;
    }
}

void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)
{
    if (htim == &htim2)
    {
        interrupt_data.timerOverflow++;
    }
    else if (htim == &htim3)
    {
        HEATER_GPIO_Port->BSRR = HEATER_Pin;
        HAL_TIM_Base_Stop_IT(htim);
        htim->Instance->CNT = 0;
    }
    else if (htim == &htim4)
    {
        HEATER_GPIO_Port->BSRR = (uint32_t) HEATER_Pin << 16U;
        HAL_TIM_Base_Stop_IT(htim);
        htim->Instance->CNT = 0;
    }
    else if (htim == &htim6)
    {
        interrupt_data.touchReadyFlag = 1;
        HAL_TIM_Base_Stop_IT(htim);
        htim->Instance->CNT = 0;
    }
}

/* USER CODE END 4 */

/**
 * @brief  This function is executed in case of error occurrence.
 * @retval None
 */
void Error_Handler(void)
{
    /* USER CODE BEGIN Error_Handler_Debug */
    /* User can add his own implementation to report the HAL error return state */
    __disable_irq();
    while (1)
    {
    }
    /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
