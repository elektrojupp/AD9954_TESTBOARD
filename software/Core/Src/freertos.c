/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2021 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under Ultimate Liberty license
  * SLA0044, the "License"; You may not use this file except in compliance with
  * the License. You may obtain a copy of the License at:
  *                             www.st.com/SLA0044
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "AD9954.h"
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
/* USER CODE BEGIN Variables */

/* USER CODE END Variables */
/* Definitions for defaultTask */
osThreadId_t defaultTaskHandle;
const osThreadAttr_t defaultTask_attributes = {
  .name = "defaultTask",
  .stack_size = 128 * 4,
  .priority = (osPriority_t) osPriorityNormal,
};
/* Definitions for TaskUSB */
osThreadId_t TaskUSBHandle;
const osThreadAttr_t TaskUSB_attributes = {
  .name = "TaskUSB",
  .stack_size = 4096 * 4,
  .priority = (osPriority_t) osPriorityLow,
};
/* Definitions for TaskUser */
osThreadId_t TaskUserHandle;
const osThreadAttr_t TaskUser_attributes = {
  .name = "TaskUser",
  .stack_size = 4096 * 4,
  .priority = (osPriority_t) osPriorityLow,
};
/* Definitions for TaskAD9954 */
osThreadId_t TaskAD9954Handle;
const osThreadAttr_t TaskAD9954_attributes = {
  .name = "TaskAD9954",
  .stack_size = 4096 * 4,
  .priority = (osPriority_t) osPriorityLow,
};
/* Definitions for TaskCAN */
osThreadId_t TaskCANHandle;
const osThreadAttr_t TaskCAN_attributes = {
  .name = "TaskCAN",
  .stack_size = 4096 * 4,
  .priority = (osPriority_t) osPriorityLow,
};
/* Definitions for AD9954_readQueue */
osMessageQueueId_t AD9954_readQueueHandle;
const osMessageQueueAttr_t AD9954_readQueue_attributes = {
  .name = "AD9954_readQueue"
};
/* Definitions for USB_CDC_Queue */
osMessageQueueId_t USB_CDC_QueueHandle;
const osMessageQueueAttr_t USB_CDC_Queue_attributes = {
  .name = "USB_CDC_Queue"
};
/* Definitions for AD9954_Data_Mutex */
osMutexId_t AD9954_Data_MutexHandle;
const osMutexAttr_t AD9954_Data_Mutex_attributes = {
  .name = "AD9954_Data_Mutex"
};

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */

/* USER CODE END FunctionPrototypes */

void StartDefaultTask(void *argument);
extern void StartTastUSB(void *argument);
extern void StartTaskUser(void *argument);
extern void StartTaskAD9954(void *argument);
extern void StartTaskCAN(void *argument);

extern void MX_USB_DEVICE_Init(void);
void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */
  /* Create the mutex(es) */
  /* creation of AD9954_Data_Mutex */
  AD9954_Data_MutexHandle = osMutexNew(&AD9954_Data_Mutex_attributes);

  /* USER CODE BEGIN RTOS_MUTEX */
  /* add mutexes, ... */
  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* Create the queue(s) */
  /* creation of AD9954_readQueue */
  AD9954_readQueueHandle = osMessageQueueNew (50, sizeof(AD99554_message_struct_t), &AD9954_readQueue_attributes);

  /* creation of USB_CDC_Queue */
  USB_CDC_QueueHandle = osMessageQueueNew (256, sizeof(uint8_t), &USB_CDC_Queue_attributes);

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* creation of defaultTask */
  defaultTaskHandle = osThreadNew(StartDefaultTask, NULL, &defaultTask_attributes);

  /* creation of TaskUSB */
  TaskUSBHandle = osThreadNew(StartTastUSB, NULL, &TaskUSB_attributes);

  /* creation of TaskUser */
  TaskUserHandle = osThreadNew(StartTaskUser, NULL, &TaskUser_attributes);

  /* creation of TaskAD9954 */
  TaskAD9954Handle = osThreadNew(StartTaskAD9954, NULL, &TaskAD9954_attributes);

  /* creation of TaskCAN */
  TaskCANHandle = osThreadNew(StartTaskCAN, NULL, &TaskCAN_attributes);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

  /* USER CODE BEGIN RTOS_EVENTS */
  /* add events, ... */
  /* USER CODE END RTOS_EVENTS */

}

/* USER CODE BEGIN Header_StartDefaultTask */
/**
  * @brief  Function implementing the defaultTask thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_StartDefaultTask */
void StartDefaultTask(void *argument)
{
  /* init code for USB_DEVICE */
  MX_USB_DEVICE_Init();
  /* USER CODE BEGIN StartDefaultTask */
  /* Infinite loop */
  for(;;)
  {
    osDelay(1);
  }
  /* USER CODE END StartDefaultTask */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

/* USER CODE END Application */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
