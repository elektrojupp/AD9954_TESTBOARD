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
#include "TaskUSB.h"
#include "cmsis_os.h"
#include "main.h"
//#include "can.h"
//#include "spi.h"
//#include "usb_device.h"
//#include "gpio.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
//#include "ssd1306.h"
//#include "ssd1306_tests.h"
//#include "AD9954.h"
#include "usbd_cdc_if.h"
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
extern osMessageQueueId_t USB_CDC_QueueHandle; // muss aus der freertos.c eingebunden werden
/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

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
void StartTastUSB(void *argument)
{
	uint32_t x = 0;
	uint32_t len = 0;
	uint8_t getMessage[256];
	memset(getMessage, 0x00, 256);
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


  /* USER CODE END 2 */

  /* Init scheduler */

  /* We should never get here as control is now taken by the scheduler */
  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  //char buff[] = {"Hallo Welt\n\r"};
  while (1)
  {
	  if(osMessageQueueGetCount(USB_CDC_QueueHandle) != 0)
	  {
		  x = 0;
		  while(osMessageQueueGetCount(USB_CDC_QueueHandle) != 0)
		  {
			  osMessageQueueGet(USB_CDC_QueueHandle, (void*)&getMessage[x], NULL, 0);
			  x ++;
			  printf("receive: %c \n\r", (char)getMessage[0]);
			  // mache die Updates eins nach dem anderen;;
		  }
		  len = x;
		  // am ende sende eine Nachricht, dass die Daten aktuell sind
	  }
	  if(len != 0)
	  {
		  CDC_Transmit_FS(getMessage, len);
		  len = 0;
	  }
	  //CDC_Receive_FS((uint8_t*)buff, sizeof(buff));
	  //CDC_Transmit_FS((uint8_t*)buff, sizeof(buff));
    /* USER CODE END WHILE */
	  osDelay(1);
    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}


/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
