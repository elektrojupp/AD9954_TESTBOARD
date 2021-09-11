/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
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

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32l4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define CAN_S_Pin GPIO_PIN_13
#define CAN_S_GPIO_Port GPIOC
#define FG_SYNC_CLK_Pin GPIO_PIN_1
#define FG_SYNC_CLK_GPIO_Port GPIOC
#define FG_OSK_Pin GPIO_PIN_2
#define FG_OSK_GPIO_Port GPIOC
#define FG_PSO_Pin GPIO_PIN_3
#define FG_PSO_GPIO_Port GPIOC
#define FG_CLKMODESELECT_Pin GPIO_PIN_0
#define FG_CLKMODESELECT_GPIO_Port GPIOA
#define FG_IOUPDATE_Pin GPIO_PIN_1
#define FG_IOUPDATE_GPIO_Port GPIOA
#define FG_PS1_Pin GPIO_PIN_2
#define FG_PS1_GPIO_Port GPIOA
#define FG_SYNC_IN_Pin GPIO_PIN_3
#define FG_SYNC_IN_GPIO_Port GPIOA
#define FG_SPI_NSS_Pin GPIO_PIN_4
#define FG_SPI_NSS_GPIO_Port GPIOA
#define FG_SPI_SCLK_Pin GPIO_PIN_5
#define FG_SPI_SCLK_GPIO_Port GPIOA
#define FG_SPI_MOSI_Pin GPIO_PIN_7
#define FG_SPI_MOSI_GPIO_Port GPIOA
#define FG_IO_SYNC_Pin GPIO_PIN_4
#define FG_IO_SYNC_GPIO_Port GPIOC
#define FG_RESET_Pin GPIO_PIN_5
#define FG_RESET_GPIO_Port GPIOC
#define FG_PWRDNCTL_Pin GPIO_PIN_0
#define FG_PWRDNCTL_GPIO_Port GPIOB
#define TASTER_BACK_Pin GPIO_PIN_1
#define TASTER_BACK_GPIO_Port GPIOB
#define TASTER_OK_Pin GPIO_PIN_2
#define TASTER_OK_GPIO_Port GPIOB
#define TASTER_FRONT_Pin GPIO_PIN_10
#define TASTER_FRONT_GPIO_Port GPIOB
#define TASTER_DOWN_Pin GPIO_PIN_11
#define TASTER_DOWN_GPIO_Port GPIOB
#define LCD_SOFTWARE_NSS_Pin GPIO_PIN_12
#define LCD_SOFTWARE_NSS_GPIO_Port GPIOB
#define LCD_SPI_SCLK_Pin GPIO_PIN_13
#define LCD_SPI_SCLK_GPIO_Port GPIOB
#define LCD_SPI_MOSI_Pin GPIO_PIN_15
#define LCD_SPI_MOSI_GPIO_Port GPIOB
#define TASTER_UP_Pin GPIO_PIN_6
#define TASTER_UP_GPIO_Port GPIOC
#define SET_1V8_Pin GPIO_PIN_7
#define SET_1V8_GPIO_Port GPIOC
#define LED_AD9954_Pin GPIO_PIN_8
#define LED_AD9954_GPIO_Port GPIOC
#define LED_STM32_Pin GPIO_PIN_9
#define LED_STM32_GPIO_Port GPIOC
#define LED_ERROR_Pin GPIO_PIN_8
#define LED_ERROR_GPIO_Port GPIOA
#define LCD_RST_Pin GPIO_PIN_9
#define LCD_RST_GPIO_Port GPIOA
#define LCD_V0_Pin GPIO_PIN_10
#define LCD_V0_GPIO_Port GPIOA
#define CAN_SHDN_Pin GPIO_PIN_7
#define CAN_SHDN_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
