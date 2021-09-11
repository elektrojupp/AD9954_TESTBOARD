#include "TaskUser.h"
#include "cmsis_os.h"
#include "main.h"
#include "ssd1306.h"
#include "stdio.h"
#include "Button.h"
#include "GUI.h"
#include "snake.h"

#define LED_UPDATE_TIME			500

extern GUI_page_struct_t page_MENUE;
extern GUI_page_struct_t *pActualPage;
extern button_struct_t buttons[BUTTON_NUMBERS];

// Einkommentieren um LED blinken zu lassen
//#define USERLED_BLINK

void StartTaskUser(void *argument)
{

	#ifdef USERLED_BLINK
	uint32_t ledUpdateTimeOld = 0;
	uint32_t timeNew = 0;
	#endif

	uint32_t x = 0;
	uint32_t goToSnake = 0;
	GUI_page_struct_t *pOldPage = NULL;

	ssd1306_Init();

	// Backdoor für Snake
	BUTTON_checkTaster(buttons);
	osDelay(20);
	BUTTON_checkTaster(buttons);

	for(x = 0; x < BUTTON_NUMBERS; x ++)
	{
	  if(buttons[x].buttonIsSet == 1)
	  {
		  buttons[x].buttonIsSet = 0;
		  goToSnake = 1;
	  }
	}
	if(goToSnake == 1)
	{
		goToSnake = 0;
		SNAKE_Setup();
	}

	pActualPage = &page_MENUE;

	while (1)
	{

		#ifdef USERLED_BLINK
		// so lange die Anwendung läuft soll die blaue LED blinken
		timeNew = HAL_GetTick();
		if(ledUpdateTimeOld + LED_UPDATE_TIME < timeNew)
		{
		  ledUpdateTimeOld = timeNew;
		  HAL_GPIO_TogglePin(LED_STM32_GPIO_Port, LED_STM32_Pin);
		}
		#endif

		if(pOldPage != pActualPage)
		{
			pOldPage = pActualPage;
			pActualPage->CallbackFuntion(pActualPage,0);
		}

		BUTTON_checkTaster(buttons);

		for(x = 0; x < BUTTON_NUMBERS; x ++)
		{
		  if(buttons[x].buttonIsSet == 1)
		  {
			  pActualPage->CallbackFuntion(pActualPage, x);
		  }
		}

		if(pActualPage->toUpdate == 1)
		{
		  pActualPage->toUpdate = 0;
		  ssd1306_UpdateScreen();
		}

	    osDelay(1);

	}

}
