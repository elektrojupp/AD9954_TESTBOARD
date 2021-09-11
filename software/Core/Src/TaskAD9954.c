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
/*
 * Wichtig wenn Can genutzt wird, dass der CAN Transreceiver
 * auch eine Spannungsversorgung hat. Wenn nicht anders irgendwie schon da,
 * dann den Jumper VBUS/3V3 stecken.
 */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "TaskAD9954.h"
#include "cmsis_os.h"
//#include "can.h"
#include "main.h"
//#include "spi.h"
//#include "usb_device.h"
//#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
//#include "ssd1306.h"
//#include "ssd1306_tests.h"
#include "AD9954.h"
#include "stdio.h"
//#include "usbd_cdc_if.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
extern osMessageQueueId_t AD9954_readQueueHandle; // muss aus der freertos.c eingebunden werden
extern osMutexId_t AD9954_Data_MutexHandle;
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */
#define LED_UPDATE_TIME			500

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/

/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
void StartTaskAD9954(void *argument)
{
	//uint32_t ledUpdateTimeOld = 0;
	//uint32_t timeNew = 0;
	AD99554_message_struct_t getMessage;
	// schalte die 1.8V ein
	HAL_GPIO_WritePin(SET_1V8_GPIO_Port, SET_1V8_Pin, GPIO_PIN_SET);

	osDelay(500);

	AD9954_Init();

  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
	osDelay(10);

  /* USER CODE END 2 */

  /* Init scheduler */

  /* We should never get here as control is now taken by the scheduler */
  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
		//timeNew = HAL_GetTick();
	/*
		if(ledUpdateTimeOld + LED_UPDATE_TIME < timeNew)
		{
		  ledUpdateTimeOld = timeNew;
		  HAL_GPIO_TogglePin(LED_AD9954_GPIO_Port, LED_AD9954_Pin);
		}
*/
	  if(osMessageQueueGetCount(AD9954_readQueueHandle) != 0)
	  {
		  while(osMessageQueueGetCount(AD9954_readQueueHandle) != 0)
		  {
			  osMessageQueueGet(AD9954_readQueueHandle, (void*)&getMessage, NULL, 0);
		        if(osMutexAcquire (AD9954_Data_MutexHandle, 1000) == osOK )
		        {
		            /* We were able to obtain the semaphore and can now access the
		            shared resource. */

		        	readMessages(&getMessage);

		            /* We have finished accessing the shared resource.  Release the
		            semaphore. */
		        	osMutexRelease (AD9954_Data_MutexHandle);

		        }
		        else
		        {
		        	// sollte irgendwann mal eine Fehlerbehandlung geben sonst wird halt einfach nicht gesschrieben
		            /* We could not obtain the semaphore and can therefore not access
		            the shared resource safely. */
		        }
			  printf("test \n\r");
			  // mache die Updates eins nach dem anderen;;
		  }
		  // am ende sende eine Nachricht, dass die Daten aktuell sind
	  }

	  /* USER CODE END WHILE */
	  osDelay(1);
    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
