#include "TaskUser.h"
#include "cmsis_os.h"
#include "main.h"
#include "ssd1306.h"
#include "ssd1306_tests.h"
#include "stdio.h"
#include "Button.h"
#include <GUI.h>

button_struct_t buttons[BUTTON_NUMBERS] =
{
		{0,0,0,TASTER_BACK_GPIO_Port,TASTER_BACK_Pin},
		{0,0,0,TASTER_FRONT_GPIO_Port,TASTER_FRONT_Pin},
		{0,0,0,TASTER_UP_GPIO_Port,TASTER_UP_Pin},
		{0,0,0,TASTER_DOWN_GPIO_Port,TASTER_DOWN_Pin},
		{0,0,0,TASTER_OK_GPIO_Port,TASTER_OK_Pin}
};


void BUTTON_checkTaster(button_struct_t *button)
{
  uint32_t x;
  for (x = 0; x < BUTTON_NUMBERS; x++)
  {
    if((HAL_GPIO_ReadPin(button[x].GPIOx, button[x].GPIO_Pin) == GPIO_PIN_RESET))
    {

    	if(button[x].buttonIsPressed == 0)
    	{
    		button[x].buttonIsPressed = 1;
        	button[x].buttonTimeOld = HAL_GetTick();
    	}
    	else if(button[x].buttonIsPressed == 1 && button[x].buttonIsSet == 0)
    	{
        	if((HAL_GetTick() - button[x].buttonTimeOld) > BUTTON_PRELLTIME)
        	{
				button[x].buttonIsSet = 1;
				button[x].buttonIsPressed = 2;
        	}
    	}
    }
    else if(button[x].buttonIsPressed == 2)
    {
    	button[x].buttonIsPressed = 0;
    }
  }
}
