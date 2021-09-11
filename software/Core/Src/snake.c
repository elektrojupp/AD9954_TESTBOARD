#include "TaskUser.h"
#include "cmsis_os.h"
#include "main.h"
#include "ssd1306.h"
#include "ssd1306_tests.h"
#include "stdio.h"
#include "Button.h"
#include "GUI.h"
#include "snake.h"
#include <stdlib.h>
#include "eeprom.h"

extern button_struct_t buttons[BUTTON_NUMBERS];

/***********************************************/

static void welcome(void);
static void start_game(void);
//static int read_key(void);
static void game_over(void);
static void snake_frame(int s);
static void snake(void);
static void change_con(int DIR);
static void change_pos();
static int snake_eat_food(int dir);
static int snake_knock_wall(int dir);
static int snake_eat_body(int dir);
static int random_int(int min, int max);
static void food(void);

#define SNAKE_SPEED_DIFF	5
#define SNAKE_SPEED_START	100

#define SNAKE_STARTPOSITION_X 2
#define SNAKE_STARTPOSITION_Y 20

#define SNAKE_DIRECTION_LEFT 0
#define SNAKE_DIRECTION_UP 1
#define SNAKE_DIRECTION_DOWN 2
#define SNAKE_DIRECTION_RIGHT 3
#define SNAKE_RETURN 4

#define SNAKE_BOX_X_ORIGIN	0
#define SNAKE_BOX_X_LENGTH	99
#define SNAKE_BOX_Y_ORIGIN	0
#define SNAKE_BOX_Y_LENGTH	64

#define SNAKE_BODY_SIZE	3
#define SNAKE_MAX_LENGTH	300

/***********************************************/

//int32_t box_x = 0;//Define variables
//int32_t box_y = 0;//Define variables
//int32_t box_x_length = 99;//x direction 32 0-31
//int32_t box_y_length = 62;//y direction 20 0-19
//int32_t snake_max_length = 100; //Maximum body length of snake

int8_t snake_x[SNAKE_MAX_LENGTH];//Snake body x coordinate
int8_t snake_y[SNAKE_MAX_LENGTH];//Snake body y coordinate
//int32_t snake_body_width = 3; //Snake body width (square)
int8_t food_x;//Food location coordinates x
int8_t food_y;//Food location coordinates y
int16_t snake_length = 3; //Define the initial snake body length
uint16_t game_speed;//Set game speed
uint8_t level = 1;
uint8_t tempLevel = 0;
uint16_t score = 0;
uint16_t bestScore = 0;

/***********************************************/
void SNAKE_Setup(void)
{
	uint8_t data[2] = {0};

	EEPROM_Read(126,data,2);
	bestScore = data[0] | data[1] << 8;

	while(1)
	{
		welcome();//Welcome Screen
		start_game();
		snake();
	}
}
/***********************************************/
static void welcome(void)
{
	char buff[20] = {0};
	ssd1306_Fill(White);
	sprintf(buff,"SNAKE v3.0");
	ssd1306_SetCursor(25, 4);
	ssd1306_WriteString(buff, Font_7x10, Black);
	sprintf(buff,"BY E-JUPP");
	ssd1306_SetCursor(28, 20);
	ssd1306_WriteString(buff, Font_7x10, Black);
	ssd1306_UpdateScreen();
	osDelay(1000);
}
/***********************************************/
static void start_game(void)//Define the selection interface
{
	char buff[20] = {0};
	uint32_t timeNew = 0;
	uint32_t timeOld = 0;
	uint32_t menue = 0;
	uint32_t count = 0;
	uint8_t data[2] = {0};

	while (1)
	{
		osDelay(1);
		BUTTON_checkTaster(buttons);
		timeNew = HAL_GetTick();

		if(timeNew - timeOld >= 100)
		{
			timeOld = timeNew;

			if(buttons[4].buttonIsSet==1) // hoch
			{
				buttons[4].buttonIsSet = 0;
				if(menue == 1)
				{
					if(level < 12)
					{
						level++;
					}
				}
				count = 0;
			}
			if(buttons[2].buttonIsSet==1)// runter
			{
				buttons[2].buttonIsSet = 0;
				if(menue == 1)
				{
					if(level > 1)
					{
						level--;
					}
				}
				count = 0;
			}
			if(buttons[3].buttonIsSet==1) // links
			{
				buttons[3].buttonIsSet = 0;
				if(menue > 0)
				{
					menue = menue - 1;
				}
				count = 0;
			}
			if(buttons[1].buttonIsSet==1) // rechts
			{
				buttons[1].buttonIsSet = 0;
				if(menue < 2)
				{
					menue = menue + 1;
				}
				count = 0;
			}
			if(buttons[0].buttonIsSet==1) // ok
			{
				buttons[0].buttonIsSet = 0;
				if(menue == 0)
				{
					count ++;
					break;
				}
				if(menue == 1)
				{
					count ++;
				}
				if(menue == 2)
				{
					count ++;
					if(count == 5)
					{
						// RESET HIGHSCORE
						EEPROM_Write(126,data,2);
						bestScore = 0;
						count = 0;
					}
				}

			}

			ssd1306_Fill(White);
			sprintf(buff,"SNAKE v3.0");
			ssd1306_SetCursor(25, 4);
			ssd1306_WriteString(buff, Font_7x10, Black);
			sprintf(buff,"Play");
			if(menue == 0)
			{
				sprintf(buff,"->Play");
			}
			ssd1306_SetCursor(5, 20);
			ssd1306_WriteString(buff, Font_6x8, Black);
			ssd1306_SetCursor(5, 34);
			sprintf(buff,"Level:%d", level);
			if(menue == 1)
			{
				sprintf(buff,"->Level:%d", level);
			}
			ssd1306_WriteString(buff, Font_6x8, Black);
			ssd1306_SetCursor(5, 48);
			sprintf(buff,"Highscore:%d", bestScore);
			if(menue == 2)
			{
				sprintf(buff,"->Highscore:%d", bestScore);
			}
			ssd1306_WriteString(buff, Font_6x8, Black);
			ssd1306_UpdateScreen();
		}
	}
}


/***********************************************/

uint16_t score;
static void game_over(void)//Define the end of the game
{
	char buff[20] = {0};
	uint8_t data[2] = {0};

	ssd1306_Fill(White);
	sprintf(buff,"SNAKE v3.0");
	ssd1306_SetCursor(25, 4);
	ssd1306_WriteString(buff, Font_7x10, Black);
	sprintf(buff,"GAME OVER");
	ssd1306_SetCursor(28, 20);
	ssd1306_WriteString(buff, Font_7x10, Black);
	ssd1306_UpdateScreen();

	//score = (snake_length - 3)*5;
	snake_length=3;

	snake_x[0] = SNAKE_STARTPOSITION_X; snake_y[0] = SNAKE_STARTPOSITION_Y;//snake starting coordinates
	snake_x[1] = snake_x[0]  - 1; snake_y[1] = snake_y[0];//snake starting coordinates
	snake_x[2] = snake_x[1]  - 1; snake_y[2] = snake_y[1];//snake starting coordinates

	osDelay(1000);

	if(score > bestScore)
	{
		ssd1306_Fill(White);
		sprintf(buff,"SNAKE v3.0");
		ssd1306_SetCursor(25, 4);
		ssd1306_WriteString(buff, Font_6x8, Black);
		sprintf(buff,"NEW HIGHSCORE");
		ssd1306_SetCursor(5, 20);
		ssd1306_WriteString(buff, Font_6x8, Black);
		sprintf(buff,"%d", score);
		ssd1306_SetCursor(10, 30);
		ssd1306_WriteString(buff, Font_6x8, Black);
		ssd1306_UpdateScreen();

		data[0] = score & 0x00FF;
		data[1] = (score & 0xFF00) >> 8;
		EEPROM_Write(126,data,2);

		bestScore = score;

		osDelay(3000);

	}

}

static void snake_frame(int s)
{
	char buff[20] = {0};

	ssd1306_Fill(White);

	ssd1306_DrawRectangle(SNAKE_BOX_X_LENGTH + 1, 0, SNAKE_BOX_X_LENGTH  + 2, 63, Black);

	sprintf(buff,"Level");
	ssd1306_SetCursor(SNAKE_BOX_X_LENGTH + 4, 8);
	ssd1306_WriteString(buff, Font_5x7, Black);

	sprintf(buff,"%d", tempLevel);
	ssd1306_SetCursor(SNAKE_BOX_X_LENGTH + 5, 17);
	ssd1306_WriteString(buff, Font_6x8, Black);

	sprintf(buff,"Score");
	ssd1306_SetCursor(SNAKE_BOX_X_LENGTH + 4, 29);
	ssd1306_WriteString(buff, Font_5x7, Black);

	sprintf(buff,"%d", score);
	ssd1306_SetCursor(SNAKE_BOX_X_LENGTH + 5, 38);
	ssd1306_WriteString(buff, Font_6x8, Black);

	ssd1306_DrawRectangle(food_x*SNAKE_BODY_SIZE, food_y*SNAKE_BODY_SIZE, food_x*SNAKE_BODY_SIZE + SNAKE_BODY_SIZE,food_y*SNAKE_BODY_SIZE + SNAKE_BODY_SIZE, Black);

	for (int i = 0; i < snake_length; i++)//Show snake
	{
		ssd1306_DrawRectangle(snake_x[i]*SNAKE_BODY_SIZE, snake_y[i]*SNAKE_BODY_SIZE, snake_x[i]*SNAKE_BODY_SIZE + SNAKE_BODY_SIZE, snake_y[i]*SNAKE_BODY_SIZE + SNAKE_BODY_SIZE, Black);
	}
	ssd1306_UpdateScreen();
}


static void snake(void)//Define the snake parameters
{
	int flag = 1; //Sign
	snake_x[0] = SNAKE_STARTPOSITION_X;
	snake_y[0] = SNAKE_STARTPOSITION_Y;//snake starting coordinates
	snake_x[1] = snake_x[0]  - 1; snake_y[1] = snake_y[0];//snake starting coordinates
	snake_x[2] = snake_x[1]  - 1; snake_y[2] = snake_y[1];//snake starting coordinates
	uint32_t timeNew = 0;
	uint32_t timeOld = 0;
	uint32_t draw = 0;
	uint32_t foodEaten = 0;

	int snake_dir=SNAKE_DIRECTION_RIGHT;//Initial direction right
	game_speed=SNAKE_SPEED_START - SNAKE_SPEED_DIFF * level;
	tempLevel = level;
	foodEaten = 0;
	score = 0;
	food();

	while (flag)
	{

		osDelay(1);
		BUTTON_checkTaster(buttons);
		timeNew = HAL_GetTick();

		if(timeNew - timeOld >= game_speed)
		{
			timeOld = timeNew;
			if(buttons[4].buttonIsSet==1)
			{
				buttons[4].buttonIsSet = 0;
				if(snake_dir!=SNAKE_DIRECTION_DOWN)
				{
					snake_dir=SNAKE_DIRECTION_UP;
				}
			}
			if(buttons[2].buttonIsSet==1)
			{
				buttons[2].buttonIsSet = 0;
				if(snake_dir!=SNAKE_DIRECTION_UP)
				{
					snake_dir=SNAKE_DIRECTION_DOWN;
				}
			}
			if(buttons[3].buttonIsSet==1)
			{
				buttons[3].buttonIsSet = 0;
				if(snake_dir!=SNAKE_DIRECTION_RIGHT)
				{
					snake_dir=SNAKE_DIRECTION_LEFT;
				}
			}
			if(buttons[1].buttonIsSet==1)
			{
				buttons[1].buttonIsSet = 0;
				if(snake_dir!=SNAKE_DIRECTION_LEFT)
				{
					snake_dir=SNAKE_DIRECTION_RIGHT;
				}
			}
			if(buttons[0].buttonIsSet==1)
			{
				buttons[0].buttonIsSet = 0;
			}

			if(snake_eat_food(snake_dir)==1)
			{
				food();
				score += tempLevel;
				foodEaten ++;
				if(foodEaten >= 5)
				{
					foodEaten = 0;
					game_speed -= SNAKE_SPEED_DIFF;
					tempLevel += 1;
				}
				timeOld = timeOld - SNAKE_SPEED_START - 1;
				if(snake_length > SNAKE_MAX_LENGTH)
				{
					game_over();
					flag=0;
				}
			}
			else
			{
				draw = snake_knock_wall(snake_dir);

				if(draw != 0)
				{
					game_over();
					flag=0;
				}
				else
				{
					if(snake_eat_body(snake_dir)==1)
					{
						game_over();
						flag=0;
					}
					else
					{
						change_con(snake_dir);
					}
				}
			}
			if(draw != 2)
			{
				snake_frame(game_speed);
			}
		}
	}
}


static void change_con(int DIR)//Moving coordinate function
{
	int temp_x[snake_length+2];
	int temp_y[snake_length+2];
	for(int i=0;i<snake_length-1;i++)//Store the old coordinate data in the temp array
	{
		temp_x[i]=snake_x[i];
		temp_y[i]=snake_y[i];
	}
	switch(DIR)
	{
		case 3: {snake_x[0]+=1;break;}
		case 0: {snake_x[0]-=1;break;}
		case 1: {snake_y[0]-=1;break;}
		case 2: {snake_y[0]+=1;break;}
	}
	for(int i=1;i<snake_length;i++)
	{
		snake_x[i]=temp_x[i-1];
		snake_y[i]=temp_y[i-1];
	}
}

//Move function after eating
static void change_pos(void)
{
	int temp_x[snake_length+2];
	int temp_y[snake_length+2];
	for(int i=0;i<snake_length-1;i++)//Store the old coordinate data in the temp array
	{
		temp_x[i]=snake_x[i];
		temp_y[i]=snake_y[i];
	}
	snake_x[0]=food_x;
	snake_y[0]=food_y;
	for(int i=1;i<snake_length;i++)
	{
		snake_x[i]=temp_x[i-1];
		snake_y[i]=temp_y[i-1];
	}
}

//Determine whether you have eaten food 0-not eaten 1-eated 2-ineffective
static int snake_eat_food(int dir)
{
	int x_temp=snake_x[0];
	int y_temp=snake_y[0];
	switch(dir)
	{
		case 1 :y_temp-=1;break;
		case 2 :y_temp+=1;break;
		case 0 :x_temp-=1;break;
		case 3 :x_temp+=1;break;
	}
	if((x_temp==food_x)&&(y_temp==food_y))
	{
		snake_length+=1;
		change_pos();
		return 1;
	}
	else
	{
		return 0;
	}
}

//Judge whether to hit the wall 0-not hit 1-hit 2-invalid
static int snake_knock_wall(int dir)
{
	int x_temp=snake_x[0];
	int y_temp=snake_y[0];
	switch(dir)
	{
		case 1 :y_temp-=1;break;
		case 2 :y_temp+=1;break;
		case 0 :x_temp-=1;break;
		case 3 :x_temp+=1;break;
	}

	if(x_temp < (SNAKE_BOX_X_ORIGIN/SNAKE_BODY_SIZE))
	{
		return 2;
	}
	else if(x_temp>((SNAKE_BOX_X_LENGTH/3)-1))
	{
		return 2;
	}
	else if(y_temp < (SNAKE_BOX_Y_ORIGIN/SNAKE_BODY_SIZE))
	{
		return 1;
	}
	else if(y_temp>((SNAKE_BOX_Y_LENGTH/3)-1))
	{
		return 2;
	}
	else
	{
		return 0;
	}
}

//Determine whether you have eaten yourself 0-not eaten 1-eated 2-ineffective
static int snake_eat_body(int dir)
{
	int x_temp=snake_x[0];
	int y_temp=snake_y[0];
	switch(dir)
	{
		case 1 :y_temp-=1;break;
		case 2 :y_temp+=1;break;
		case 0 :x_temp-=1;break;
		case 3 :x_temp+=1;break;
	}
	for(int i=1;i<snake_length;i++)
	{
		if((snake_x[0]==snake_x[i])&&(snake_y[0]==snake_y[i]))
		{
			return 1;
		}
	}
	return 0;
}

static void food(void)//Define the physical
{
	int flag = 1;
	while (flag)
	{
		food_x = random_int(0,(SNAKE_BOX_X_LENGTH)/SNAKE_BODY_SIZE);
		food_y = random_int(0,(SNAKE_BOX_Y_LENGTH)/SNAKE_BODY_SIZE);

		for (int i = 0; i < snake_length; i++)
		{
			if((food_x==snake_x[i])&&(food_y==snake_y[i]))
			{
				break;
			}
			flag=0;
		}
	}
}

static int random_int(int min, int max)
{
	return min + random() % (max - min);
}
