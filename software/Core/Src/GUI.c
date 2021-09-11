#include "TaskUser.h"
#include "main.h"
#include "ssd1306.h"
#include "ssd1306_tests.h"
#include "stdio.h"
#include "AD9954.h"
#include "TaskAD9954.h"
#include "string.h"
#include "GUI.h"

#define GUI_SIZE_X SSD1306_WIDTH		// 128
#define GUI_SIZE_Y SSD1306_HEIGHT		// 64

#define GUI_FONT					Font_7x10
#define GUI_FONT_SIZE_X		7
#define GUI_FONT_SIZE_Y		10
#define GUI_FONT_OFFSET_Y   GUI_FONT_SIZE_Y/2

#define GUI_TEXT_POS_X_0	5

#define GUI_TEXT_POS_Y_0	(1*GUI_SIZE_Y/8 - GUI_FONT_OFFSET_Y)
#define GUI_TEXT_POS_Y_1	(3*GUI_SIZE_Y/8 - GUI_FONT_OFFSET_Y)
#define GUI_TEXT_POS_Y_2	(5*GUI_SIZE_Y/8 - GUI_FONT_OFFSET_Y)
#define GUI_TEXT_POS_Y_3	(7*GUI_SIZE_Y/8 - GUI_FONT_OFFSET_Y)


typedef struct
{
	uint32_t minVal;
	uint32_t maxVal;
	uint32_t actualValue;
	uint32_t fokus;
	uint32_t changeModus;
}change_value_struct_t;


extern osThreadId_t TaskUserHandle;
extern osMessageQueueId_t AD9954_readQueueHandle;
extern osMutexId_t AD9954_Data_MutexHandle;
extern AD9954_reg_struct_t AD9954Register;
extern button_struct_t buttons[];


static uint32_t changeFocus(GUI_page_struct_t * page, change_value_struct_t * change, int32_t addSub);
static uint32_t changeValue(GUI_page_struct_t * page, change_value_struct_t * change, int32_t addSub);
static uint32_t InitExitChangeValue(GUI_page_struct_t * page, change_value_struct_t * change, int32_t initExit);
static void GUI_WriteMenue(GUI_page_struct_t *page, uint32_t buttonNr);

GUI_page_struct_t *pActualPage;
change_value_struct_t change;


// 1. Ebene
static void GUI_MENUE_Callback(GUI_page_struct_t *page, uint32_t buttonNr);
GUI_text_struct_t text_MENUE[];
GUI_page_struct_t page_MENUE;

// 2. Ebene
static void GUI_MENUE_AD9954_Callback(GUI_page_struct_t *page, uint32_t buttonNr);
GUI_text_struct_t text_MENUE_AD9954[];
GUI_page_struct_t page_MENUE_AD9954;
//GUI_text_struct_t text_MENUE_CAN[]; // TODO
//GUI_page_struct_t page_MENUE_CAN;
//GUI_text_struct_t text_MENUE_USB[];
//GUI_page_struct_t page_MENUE_USB;

// 3. Ebene
static void GUI_AD9954_REGISTER_Callback(GUI_page_struct_t *page, uint32_t buttonNr);
GUI_text_struct_t text_AD9954_REGISTER[];
GUI_page_struct_t page_AD9954_REGISTER;
static void GUI_AD9954_FUNCTION_Callback(GUI_page_struct_t *page, uint32_t buttonNr);
GUI_text_struct_t text_AD9954_FUNCTION[];
GUI_page_struct_t page_AD9954_FUNCTION;

// 4. Ebene
static void GUI_FUNCTION_SINGLETONE_Callback(GUI_page_struct_t *page, uint32_t buttonNr);
GUI_text_struct_t text_FUNCTION_SINGLETONE[];
GUI_page_struct_t page_FUNCTION_SINGLETONE;
//GUI_text_struct_t text_FUNCTION_SWEEP[]; // TODO
//GUI_page_struct_t page_FUNCTION_SWEEP;
//GUI_text_struct_t text_FUNCTION_RAM[];
//GUI_page_struct_t page_FUNCTION_RAM;

static void GUI_REGISTER_ALL_Callback(GUI_page_struct_t *page, uint32_t buttonNr);
GUI_text_struct_t text_REGISTER_CFR1[];
GUI_page_struct_t page_REGISTER_CFR1;
GUI_value_struct_t regInfo_CFR1[];
GUI_text_struct_t text_REGISTER_CFR2[];
GUI_page_struct_t page_REGISTER_CFR2;
GUI_value_struct_t regInfo_CFR2[];
GUI_text_struct_t text_REGISTER_ASF[];
GUI_page_struct_t page_REGISTER_ASF;
GUI_value_struct_t regInfo_ASF[];
GUI_text_struct_t text_REGISTER_ARR[];
GUI_page_struct_t page_REGISTER_ARR;
GUI_value_struct_t regInfo_ARR[];
GUI_text_struct_t text_REGISTER_FTW0[];
GUI_page_struct_t page_REGISTER_FTW0;
GUI_value_struct_t regInfo_FTW0[];
GUI_text_struct_t text_REGISTER_POW0[];
GUI_page_struct_t page_REGISTER_POW0;
GUI_value_struct_t regInfo_POW0[];
GUI_text_struct_t text_REGISTER_FTW1[];
GUI_page_struct_t page_REGISTER_FTW1;
GUI_value_struct_t regInfo_FTW1[];
GUI_text_struct_t text_REGISTER_RSCW0[];
GUI_page_struct_t page_REGISTER_RSCW0;
GUI_value_struct_t regInfo_RSCW0[];
GUI_text_struct_t text_REGISTER_RSCW1[];
GUI_page_struct_t page_REGISTER_RSCW1;
GUI_value_struct_t regInfo_RSCW1[];
GUI_text_struct_t text_REGISTER_RSCW2[];
GUI_page_struct_t page_REGISTER_RSCW2;
GUI_value_struct_t regInfo_RSCW2[];
GUI_text_struct_t text_REGISTER_RSCW3[];
GUI_page_struct_t page_REGISTER_RSCW3;
GUI_value_struct_t regInfo_RSCW3[];
GUI_text_struct_t text_REGISTER_NLSCW[];
GUI_page_struct_t page_REGISTER_NLSCW;
GUI_value_struct_t regInfo_NLSCW[];
GUI_text_struct_t text_REGISTER_PLSCW[];
GUI_page_struct_t page_REGISTER_PLSCW;
GUI_value_struct_t regInfo_PLSCW[];

/************************************************* MENUE **********************************************************/

GUI_text_struct_t text_MENUE[] =
{
		{"MENUE",Black,&Font_7x10},
		{"AD9954",Black,&Font_7x10},
		{"CAN",Black,&Font_7x10},
		{"USB",Black,&Font_7x10},
};

GUI_page_struct_t page_MENUE =
{
	text_MENUE,
	4,
	0,
	0,
	0,
	buttons,
	&GUI_MENUE_Callback,
	NULL
};

/************************************************* MENUE_AD9954 **********************************************************/

GUI_text_struct_t text_MENUE_AD9954[] =
{
		{"AD9954",Black,&Font_7x10},
		{"REGISTER",Black,&Font_7x10},
		{"FUNCTION",Black,&Font_7x10},
};

GUI_page_struct_t page_MENUE_AD9954 =
{
	text_MENUE_AD9954,
	3,
	1,
	0,
	0,
	buttons,
	&GUI_MENUE_AD9954_Callback,
	NULL
};

/************************************************* AD9954_FUNCTION **********************************************************/

GUI_text_struct_t text_AD9954_FUNCTION[] =
{
		{"FUNCTION",Black,&Font_7x10},
		{"SINGLE TONE",Black,&Font_7x10},
		{"SWEEP",Black,&Font_7x10},
		{"RAM",Black,&Font_7x10},
};

GUI_page_struct_t page_AD9954_FUNCTION =
{
	text_AD9954_FUNCTION,
	4,
	1,
	0,
	0,
	buttons,
	&GUI_AD9954_FUNCTION_Callback,
	NULL
};

/************************************************* FUNCTION_SINGLETONE **********************************************************/

GUI_text_struct_t text_FUNCTION_SINGLETONE[] =
{
		{"SINGLE TONE",Black,&Font_7x10},
		{"FREQUENCY",Black,&Font_6x8},
};

GUI_page_struct_t page_FUNCTION_SINGLETONE =
{
	text_FUNCTION_SINGLETONE,
	4,
	1,
	0,
	0,
	buttons,
	&GUI_FUNCTION_SINGLETONE_Callback,
	NULL
};

/************************************************* AD9954_REGISTER **********************************************************/

GUI_text_struct_t text_AD9954_REGISTER[] =
{
		{"REGISTER",Black,&Font_7x10},
		{"CFR1",Black,&Font_7x10},
		{"CFR2",Black,&Font_7x10},
		{"ASF",Black,&Font_7x10},
		{"ARR",Black,&Font_7x10},
		{"FTW0",Black,&Font_7x10},
		{"POW0",Black,&Font_7x10},
		{"FTW1",Black,&Font_7x10},
		{"RSCW0",Black,&Font_7x10},
		{"RSCW1",Black,&Font_7x10},
		{"RSCW2",Black,&Font_7x10},
		{"RSCW3",Black,&Font_7x10},
		{"NLSCW",Black,&Font_7x10},
	    {"PLSCW",Black,&Font_7x10},
		{"RAM",Black,&Font_7x10},
};

GUI_page_struct_t page_AD9954_REGISTER =
{
	text_AD9954_REGISTER,
	15,
	1,
	0,
	0,
	buttons,
	&GUI_AD9954_REGISTER_Callback,
	NULL
};

/************************************************* REGISTER **********************************************************/

GUI_text_struct_t text_REGISTER_CFR1[] =
{
		{"CFR1",Black,&Font_7x10},
		{"SYNC_CLK_disable",Black,&Font_6x8},
		{"Linear_Sweep_No_Dwell",Black,&Font_6x8},
		{"External_Power_Down_Mode",Black,&Font_6x8},
		{"Clock_Input_Power_Down",Black,&Font_6x8},
		{"DAC_Power_Down",Black,&Font_6x8},
		{"Comp_Power_Down",Black,&Font_6x8},
		{"Digital_Power_Down",Black,&Font_6x8},
		{"SDIO_Input_Only",Black,&Font_6x8},
		{"Clear_Phase_Accum",Black,&Font_6x8},
		{"Clear_Freq_Accum",Black,&Font_6x8},
		{"Sine_Cosine_Select",Black,&Font_6x8},
		{"Auto_Clr_Phase_Accum",Black,&Font_6x8},
		{"Auto_Clr_Freq_Accum",Black,&Font_6x8},
		{"SRR_Load_Enable",Black,&Font_6x8},
	    {"Linear_Sweep_Enable",Black,&Font_6x8},
		{"Software_Manual_Sync",Black,&Font_6x8},
		{"Automatic_Sync_Enable",Black,&Font_6x8},
		{"Auto_OSK_Enable",Black,&Font_6x8},
		{"OSK_Enable",Black,&Font_6x8},
	    {"Load_ARR_Control",Black,&Font_6x8},
		{"Internal_Profile_Control",Black,&Font_6x8},
		{"RAM_Destination",Black,&Font_6x8},
		{"RAM_Enable",Black,&Font_6x8},
};

GUI_page_struct_t page_REGISTER_CFR1 =
{
		text_REGISTER_CFR1,
		24,
		1,
		0,
		0,
		buttons,
		&GUI_REGISTER_ALL_Callback,
		regInfo_CFR1
};

GUI_value_struct_t regInfo_CFR1[] =
{
		{(uint8_t*)&AD9954Register.cfr1.SYNC_CLK_disable,         1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.Linear_Sweep_No_Dwell,    1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.External_Power_Down_Mode, 1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.Clock_Input_Power_Down,   1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.DAC_Power_Down,           1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.Comp_Power_Down,          1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.Digital_Power_Down,       1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.SDIO_Input_Only,          1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.Clear_Phase_Accum,        1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.Clear_Freq_Accum,         1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.Sine_Cosine_Select,       1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.Auto_Clr_Phase_Accum,     1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.Auto_Clr_Freq_Accum,      1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.SRR_Load_Enable,          1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.Linear_Sweep_Enable,      1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.Software_Manual_Sync,     1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.Automatic_Sync_Enable,    1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.Auto_OSK_Enable,          1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.OSK_Enable,               1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.Load_ARR_Control,         1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.Internal_Profile_Control, 1, 0, 7, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.RAM_Destination,          1, 0, 1, AD9954_REG_COMMAND_CFR1},
		{(uint8_t*)&AD9954Register.cfr1.RAM_Enable,               1, 0, 1, AD9954_REG_COMMAND_CFR1}
};

GUI_text_struct_t text_REGISTER_CFR2[] =
{
		{"CFR2",Black,&Font_7x10},
		{"Charge_Pump_Current",Black,&Font_6x8},
		{"VCO_Range",Black,&Font_6x8},
		{"REFCLK_Multiplier",Black,&Font_6x8},
		{"XTAL_OUT_Enable",Black,&Font_6x8},
		{"Hardware_Manual_Sync_Enable",Black,&Font_6x8},
		{"Highspeed_Sync_Enable",Black,&Font_6x8},

};

GUI_page_struct_t page_REGISTER_CFR2 =
{
		text_REGISTER_CFR2,
		7,
		1,
		0,
		0,
		buttons,
		&GUI_REGISTER_ALL_Callback,
		regInfo_CFR2
};

GUI_value_struct_t regInfo_CFR2[] =
{
		{(uint8_t*)&AD9954Register.cfr2.Charge_Pump_Current,         1, 0,  3, AD9954_REG_COMMAND_CFR2},
		{(uint8_t*)&AD9954Register.cfr2.VCO_Range,                   1, 0,  1, AD9954_REG_COMMAND_CFR2},
		{(uint8_t*)&AD9954Register.cfr2.REFCLK_Multiplier,           1, 0, 24, AD9954_REG_COMMAND_CFR2},
		{(uint8_t*)&AD9954Register.cfr2.XTAL_Out_Enable,             1, 0,  1, AD9954_REG_COMMAND_CFR2},
		{(uint8_t*)&AD9954Register.cfr2.Hardware_Manual_Sync_Enable, 1, 0,  1, AD9954_REG_COMMAND_CFR2},
		{(uint8_t*)&AD9954Register.cfr2.High_Speed_Sync_Enable,      1, 0,  1, AD9954_REG_COMMAND_CFR2},
};

GUI_text_struct_t text_REGISTER_ASF[] =
{
		{"ASF",Black,&Font_7x10},
		{"Amplitude_Scale_Factor",Black,&Font_6x8},
		{"Auto_Ramp_Rate_Speed_Control",Black,&Font_6x8},
};

GUI_page_struct_t page_REGISTER_ASF =
{
		text_REGISTER_ASF,
		3,
		1,
		0,
		0,
		buttons,
		&GUI_REGISTER_ALL_Callback,
		regInfo_ASF
};

GUI_value_struct_t regInfo_ASF[] =
{
		{(uint8_t*)&AD9954Register.asf.Amplitude_Scale_Factor,        2, 0, 16383, AD9954_REG_COMMAND_ASF},
		{(uint8_t*)&AD9954Register.asf.Auto_Ramp_Rate_Speed_Controll, 1, 0,     3, AD9954_REG_COMMAND_ASF}
};

GUI_text_struct_t text_REGISTER_ARR[] =
{
		{"ARR",Black,&Font_7x10},
		{"Amplitude_Ramp_Rate",Black,&Font_6x8},
};

GUI_page_struct_t page_REGISTER_ARR =
{
		text_REGISTER_ARR,
		2,
		1,
		0,
		0,
		buttons,
		&GUI_REGISTER_ALL_Callback,
		regInfo_ARR
};

GUI_value_struct_t regInfo_ARR[] =
{
		{(uint8_t*)&AD9954Register.arr.Amplitude_Ramp_Rate, 1, 0, 0xFF, AD9954_REG_COMMAND_ARR}
};

GUI_text_struct_t text_REGISTER_FTW0[] =
{
		{"FTW0",Black,&Font_7x10},
		{"Frequency_Tuning_Word_No0",Black,&Font_6x8},
};

GUI_page_struct_t page_REGISTER_FTW0 =
{
		text_REGISTER_FTW0,
		2,
		1,
		0,
		0,
		buttons,
		&GUI_REGISTER_ALL_Callback,
		regInfo_FTW0
};

GUI_value_struct_t regInfo_FTW0[] =
{
		{(uint8_t*)&AD9954Register.ftw0.Frequency_Tuning_Word, 4, 0, 0xFFFFFFFF, AD9954_REG_COMMAND_FTW0}
};

GUI_text_struct_t text_REGISTER_POW0[] =
{
		{"POW0",Black,&Font_7x10},
		{"Phase_Offset_Word_No0",Black,&Font_6x8},
};

GUI_page_struct_t page_REGISTER_POW0 =
{
		text_REGISTER_POW0,
		2,
		1,
		0,
		0,
		buttons,
		&GUI_REGISTER_ALL_Callback,
		regInfo_POW0
};

GUI_value_struct_t regInfo_POW0[] =
{
		{(uint8_t*)&AD9954Register.pow0.Phase_Offset_Word, 2, 0, 0x3FFF, AD9954_REG_COMMAND_POW0}
};

GUI_text_struct_t text_REGISTER_FTW1[] =
{
		{"FTW1",Black,&Font_7x10},
		{"Frequency_Tuning_Word_No1",Black,&Font_6x8},
};

GUI_page_struct_t page_REGISTER_FTW1 =
{
		text_REGISTER_FTW1,
		2,
		1,
		0,
		0,
		buttons,
		&GUI_REGISTER_ALL_Callback,
		regInfo_FTW1
};

GUI_value_struct_t regInfo_FTW1[] =
{
		{(uint8_t*)&AD9954Register.ftw1.Frequency_Tuning_Word, 4, 0, 0xFFFFFFFF, AD9954_REG_COMMAND_FTW1}
};

GUI_text_struct_t text_REGISTER_RSCW0[] =
{
		{"RSCW0",Black,&Font_7x10},
		{"No_Dwell_Active",Black,&Font_6x8},
		{"RAM_S0_Mode",Black,&Font_6x8},
		{"RAM_S0_Beginning_Address",Black,&Font_6x8},
		{"RAM_S0_Final_Address",Black,&Font_6x8},
		{"RAM_S0_Address_Ramp_Rate",Black,&Font_6x8},
};

GUI_page_struct_t page_REGISTER_RSCW0 =
{
		text_REGISTER_RSCW0,
		6,
		1,
		0,
		0,
		buttons,
		&GUI_REGISTER_ALL_Callback,
		regInfo_RSCW0
};

GUI_value_struct_t regInfo_RSCW0[] =
{
		{(uint8_t*)&AD9954Register.rscw0.no_Dwell_Active,       1, 0,      1, AD9954_REG_COMMAND_RSCW0},
		{(uint8_t*)&AD9954Register.rscw0.RAM_Mode,              1, 0,      7, AD9954_REG_COMMAND_RSCW0},
		{(uint8_t*)&AD9954Register.rscw0.RAM_Beginning_Address, 2, 0,   1023, AD9954_REG_COMMAND_RSCW0},
		{(uint8_t*)&AD9954Register.rscw0.RAM_Final_Address,     2, 0,   1023, AD9954_REG_COMMAND_RSCW0},
		{(uint8_t*)&AD9954Register.rscw0.RAM_Ramp_Rate,         2, 0, 0xFFFF, AD9954_REG_COMMAND_RSCW0},
};

GUI_text_struct_t text_REGISTER_RSCW1[] =
{
		{"RSCW1",Black,&Font_7x10},
		{"No_Dwell_Active",Black,&Font_6x8},
		{"RAM_S1_Mode",Black,&Font_6x8},
		{"RAM_S1_Beginning_Address",Black,&Font_6x8},
		{"RAM_S1_Final_Address",Black,&Font_6x8},
		{"RAM_S1_Address_Ramp_Rate",Black,&Font_6x8},
};

GUI_page_struct_t page_REGISTER_RSCW1 =
{
		text_REGISTER_RSCW1,
		6,
		1,
		0,
		0,
		buttons,
		&GUI_REGISTER_ALL_Callback,
		regInfo_RSCW1
};

GUI_value_struct_t regInfo_RSCW1[] =
{
		{(uint8_t*)&AD9954Register.rscw1.no_Dwell_Active,       1, 0,      1, AD9954_REG_COMMAND_RSCW1},
		{(uint8_t*)&AD9954Register.rscw1.RAM_Mode,              1, 0,      7, AD9954_REG_COMMAND_RSCW1},
		{(uint8_t*)&AD9954Register.rscw1.RAM_Beginning_Address, 2, 0,   1023, AD9954_REG_COMMAND_RSCW1},
		{(uint8_t*)&AD9954Register.rscw1.RAM_Final_Address,     2, 0,   1023, AD9954_REG_COMMAND_RSCW1},
		{(uint8_t*)&AD9954Register.rscw1.RAM_Ramp_Rate,         2, 0, 0xFFFF, AD9954_REG_COMMAND_RSCW1},
};

GUI_text_struct_t text_REGISTER_RSCW2[] =
{
		{"RSCW2",Black,&Font_7x10},
		{"No_Dwell_Active",Black,&Font_6x8},
		{"RAM_S2_Mode",Black,&Font_6x8},
		{"RAM_S2_Beginning_Address",Black,&Font_6x8},
		{"RAM_S2_Final_Address",Black,&Font_6x8},
		{"RAM_S2_Address_Ramp_Rate",Black,&Font_6x8},
};

GUI_page_struct_t page_REGISTER_RSCW2 =
{
		text_REGISTER_RSCW2,
		6,
		1,
		0,
		0,
		buttons,
		&GUI_REGISTER_ALL_Callback,
		regInfo_RSCW2
};

GUI_value_struct_t regInfo_RSCW2[] =
{
		{(uint8_t*)&AD9954Register.rscw2.no_Dwell_Active,       1, 0,      1, AD9954_REG_COMMAND_RSCW2},
		{(uint8_t*)&AD9954Register.rscw2.RAM_Mode,              1, 0,      7, AD9954_REG_COMMAND_RSCW2},
		{(uint8_t*)&AD9954Register.rscw2.RAM_Beginning_Address, 2, 0,   1023, AD9954_REG_COMMAND_RSCW2},
		{(uint8_t*)&AD9954Register.rscw2.RAM_Final_Address,     2, 0,   1023, AD9954_REG_COMMAND_RSCW2},
		{(uint8_t*)&AD9954Register.rscw2.RAM_Ramp_Rate,         2, 0, 0xFFFF, AD9954_REG_COMMAND_RSCW2},
};

GUI_text_struct_t text_REGISTER_RSCW3[] =
{
		{"RSCW3",Black,&Font_7x10},
		{"No_Dwell_Active",Black,&Font_6x8},
		{"RAM_S3_Mode",Black,&Font_6x8},
		{"RAM_S3_Beginning_Address",Black,&Font_6x8},
		{"RAM_S3_Final_Address",Black,&Font_6x8},
		{"RAM_S3_Address_Ramp_Rate",Black,&Font_6x8},
};

GUI_page_struct_t page_REGISTER_RSCW3 =
{
		text_REGISTER_RSCW3,
		6,
		1,
		0,
		0,
		buttons,
		&GUI_REGISTER_ALL_Callback,
		regInfo_RSCW3
};

GUI_value_struct_t regInfo_RSCW3[] =
{
		{(uint8_t*)&AD9954Register.rscw3.no_Dwell_Active,       1, 0,      1, AD9954_REG_COMMAND_RSCW3},
		{(uint8_t*)&AD9954Register.rscw3.RAM_Mode,              1, 0,      7, AD9954_REG_COMMAND_RSCW3},
		{(uint8_t*)&AD9954Register.rscw3.RAM_Beginning_Address, 2, 0,   1023, AD9954_REG_COMMAND_RSCW3},
		{(uint8_t*)&AD9954Register.rscw3.RAM_Final_Address,     2, 0,   1023, AD9954_REG_COMMAND_RSCW3},
		{(uint8_t*)&AD9954Register.rscw3.RAM_Ramp_Rate,         2, 0, 0xFFFF, AD9954_REG_COMMAND_RSCW3},
};

GUI_text_struct_t text_REGISTER_NLSCW[] =
{
		{"NLSCW",Black,&Font_7x10},
		{"Falling_Delta_Frequency_Tuning_Word",Black,&Font_6x8},
		{"Falling_Sweep_Ramp_Rate_Word",Black,&Font_6x8}
};

GUI_page_struct_t page_REGISTER_NLSCW =
{
		text_REGISTER_NLSCW,
		3,
		1,
		0,
		0,
		buttons,
		&GUI_REGISTER_ALL_Callback,
		regInfo_NLSCW
};

GUI_value_struct_t regInfo_NLSCW[] =
{
		{(uint8_t*)&AD9954Register.nlscw.Falling_Delta_Frequency_Tuning_Word, 4, 0, 0xFFFFFFFF, AD9954_REG_COMMAND_NLSCW},
		{(uint8_t*)&AD9954Register.nlscw.Falling_Sweep_Ramp_Word,             1, 0,        255, AD9954_REG_COMMAND_NLSCW},
};

GUI_text_struct_t text_REGISTER_PLSCW[] =
{
		{"PLSCW",Black,&Font_7x10},
		{"Rising_Delta_Frequency_Tuning_Word",Black,&Font_6x8},
		{"Rising_Sweep_Ramp_Rate_Word",Black,&Font_6x8}
};

GUI_page_struct_t page_REGISTER_PLSCW =
{
		text_REGISTER_PLSCW,
		3,
		1,
		0,
		0,
		buttons,
		&GUI_REGISTER_ALL_Callback,
		regInfo_PLSCW
};

GUI_value_struct_t regInfo_PLSCW[] =
{
		{(uint8_t*)&AD9954Register.plscw.Rising_Delta_Frequency_Tuning_Word, 4, 0, 0xFFFFFFFF, AD9954_REG_COMMAND_PLSCW},
		{(uint8_t*)&AD9954Register.plscw.Rising_Sweep_Ramp_Word,             1, 0,        255, AD9954_REG_COMMAND_PLSCW},
};

/************************************************* Callback **********************************************************/

static void GUI_MENUE_Callback(GUI_page_struct_t *page, uint32_t buttonNr)
{

	uint32_t newPage = 0;
	if(page->buttons[buttonNr].buttonIsSet == 0)
	{
		// dann ist es der erste Callback
		page->focus = 1;
	}
	else
	{
		page->buttons[buttonNr].buttonIsSet = 0;
		if((buttonNr == TASTER_UP_NUMBER) && (page->focus > 1))
		{
			page->focus --;
		}
		else if((buttonNr == TASTER_DOWN_NUMBER) && (page->focus < page->lines - 1))
		{
			page->focus ++;
		}
		else if(buttonNr == TASTER_OK_NUMBER)
		{
			if(page->focus == 1)
			{
				pActualPage = &page_MENUE_AD9954;
				newPage = 1;
			}
		}
	}

	if(newPage == 0)
	{
		GUI_WriteMenue(page, buttonNr);
	}

	page->toUpdate = 1;
	printf("GUI_MENUE_Callback \n\r");
}


void GUI_MENUE_AD9954_Callback(GUI_page_struct_t *page, uint32_t buttonNr)
{

	uint32_t newPage = 0;
	if(page->buttons[buttonNr].buttonIsSet == 0)
	{
		// dann ist es der erste Callback
		// page->focus = 1;
	}
	else
	{
		page->buttons[buttonNr].buttonIsSet = 0;
		if((buttonNr == TASTER_UP_NUMBER) && (page->focus > 1))
		{
			page->focus --;
		}
		else if((buttonNr == TASTER_DOWN_NUMBER) && (page->focus < page->lines - 1))
		{
			page->focus ++;
		}
		else if(buttonNr == TASTER_BACK_NUMBER)
		{
			pActualPage = &page_MENUE;
			newPage = 1;
		}
		else if(buttonNr == TASTER_OK_NUMBER)
		{
			if(page->focus == 1)
			{
				pActualPage = &page_AD9954_REGISTER;
				newPage = 1;
			}
			else if(page->focus == 2)
			{
				// hier kommt dann der Kram rein der sich um sonderfunktionen kümmert
				pActualPage = &page_AD9954_FUNCTION;
				newPage = 1;
			}
		}
	}

	if(newPage == 0)
	{
		GUI_WriteMenue(page, buttonNr);
		page->toUpdate = 1;
	}

	printf("GUI_MENUE_AD9954_Callback \n\r");
}

void GUI_AD9954_FUNCTION_Callback(GUI_page_struct_t *page, uint32_t buttonNr)
{

	uint32_t newPage = 0;
	if(page->buttons[buttonNr].buttonIsSet == 0)
	{
		// dann ist es der erste Callback
		// page->focus = 1;
	}
	else
	{
		page->buttons[buttonNr].buttonIsSet = 0;
		if((buttonNr == TASTER_UP_NUMBER) && (page->focus > 1))
		{
			page->focus --;
		}
		else if((buttonNr == TASTER_DOWN_NUMBER) && (page->focus < page->lines - 1))
		{
			page->focus ++;
		}
		else if(buttonNr == TASTER_BACK_NUMBER)
		{
			pActualPage = &page_MENUE_AD9954;
			newPage = 1;
		}
		else if(buttonNr == TASTER_OK_NUMBER)
		{
			if(page->focus == 1)
			{
				pActualPage = &page_FUNCTION_SINGLETONE;
			}
			newPage = 1;
		}
	}

	if(newPage == 0)
	{
		GUI_WriteMenue(page, buttonNr);
		page->toUpdate = 1;
	}

	printf("GUI_AD9954_FUNCTION_Callback\n\r");
}

void GUI_AD9954_REGISTER_Callback(GUI_page_struct_t *page, uint32_t buttonNr)
{

	uint32_t newPage = 0;
	if(page->buttons[buttonNr].buttonIsSet == 0)
	{
		// dann ist es der erste Callback
		// page->focus = 1;
	}
	else
	{
		page->buttons[buttonNr].buttonIsSet = 0;
		if((buttonNr == TASTER_UP_NUMBER) && (page->focus > 1))
		{
			page->focus --;
		}
		else if((buttonNr == TASTER_DOWN_NUMBER) && (page->focus < page->lines - 1))
		{
			page->focus ++;
		}
		else if(buttonNr == TASTER_BACK_NUMBER)
		{
			pActualPage = &page_MENUE_AD9954;
			newPage = 1;
		}
		else if(buttonNr == TASTER_OK_NUMBER)
		{
			newPage = 1;
			if(page->focus == 1)
			{
				pActualPage = &page_REGISTER_CFR1;
			}
			else if(page->focus == 2)
			{
				pActualPage = &page_REGISTER_CFR2;
			}
			else if(page->focus == 3)
			{
				pActualPage = &page_REGISTER_ASF;
			}
			else if(page->focus == 4)
			{
				pActualPage = &page_REGISTER_ARR;
			}
			else if(page->focus == 5)
			{
				pActualPage = &page_REGISTER_FTW0;
			}
			else if(page->focus == 6)
			{
				pActualPage = &page_REGISTER_POW0;
			}
			else if(page->focus == 7)
			{
				pActualPage = &page_REGISTER_FTW1;
			}
			else if(page->focus == 8)
			{
				pActualPage = &page_REGISTER_RSCW0;
			}
			else if(page->focus == 9)
			{
				pActualPage = &page_REGISTER_RSCW1;
			}
			else if(page->focus == 10)
			{
				pActualPage = &page_REGISTER_RSCW2;
			}
			else if(page->focus == 11)
			{
				pActualPage = &page_REGISTER_RSCW3;
			}
			else if(page->focus == 12)
			{
				pActualPage = &page_REGISTER_NLSCW;
			}
			else if(page->focus == 13)
			{
				pActualPage = &page_REGISTER_PLSCW;
			}
			else
			{
				newPage = 0;
			}
		}
	}

	if(newPage == 0)
	{
		GUI_WriteMenue(page, buttonNr);
		page->toUpdate = 1;
	}

	printf("GUI_AD9954_REGISTER_Callback\n\r");
}






void GUI_REGISTER_ALL_Callback(GUI_page_struct_t *page, uint32_t buttonNr)
{
	uint32_t newPage = 0;

	if(page->buttons[buttonNr].buttonIsSet == 0)
	{
		// dann ist es der erste Callback
		// page->focus = 1;
	}
	else if (change.changeModus == 0)
	{
		page->buttons[buttonNr].buttonIsSet = 0;
		if((buttonNr == TASTER_UP_NUMBER) && (page->focus > 1))
		{
			page->focus --;
		}
		else if((buttonNr == TASTER_DOWN_NUMBER) && (page->focus < page->lines - 1))
		{
			page->focus ++;
		}
		else if(buttonNr == TASTER_BACK_NUMBER)
		{
			pActualPage = &page_AD9954_REGISTER;
			newPage = 1;
		}
		else if(buttonNr == TASTER_OK_NUMBER)
		{
			newPage = InitExitChangeValue(page, &change, 1);
		}
	}
	else if(change.changeModus == 1)
	{
		page->buttons[buttonNr].buttonIsSet = 0;
		if(buttonNr == TASTER_BACK_NUMBER)
		{
			newPage = changeFocus(page, &change, -1);
		}
		else if(buttonNr == TASTER_FRONT_NUMBER)
		{
			newPage = changeFocus(page, &change, 1);
		}
		else if(buttonNr == TASTER_UP_NUMBER)
		{
			newPage = changeValue(page, &change, 1);
		}
		else if(buttonNr == TASTER_DOWN_NUMBER)
		{
			newPage = changeValue(page, &change, -1);
		}
		else if(buttonNr == TASTER_OK_NUMBER)
		{
			newPage = InitExitChangeValue(page, &change, -1);
		}
	}

	if(newPage == 0)
	{
		GUI_WriteMenue(page, buttonNr);
	}

	page->toUpdate = 1;
	printf("GUI_REGISTER_ALL_Callback\n\r");
}


void GUI_FUNCTION_SINGLETONE_Callback(GUI_page_struct_t *page, uint32_t buttonNr)
{
	uint32_t x = 0;
	uint32_t val = 0;
	uint32_t ret = 0;
	uint32_t checkValue = 0;
	AD99554_message_struct_t sendMessage;

	char buff[15];

	if(page->buttons[buttonNr].buttonIsSet == 0)
	{
		change.actualValue = AD9954Register.frequency;
		change.fokus = 9;
		change.minVal = AD9954_MIN_FREQUENCY;
		change.maxVal = AD9954_MAX_FREQUENCY;
		change.changeModus = 1;

		ret = 1;
		// dann ist es der erste Callback
		// page->focus = 1;
	}
	else
	{
		page->buttons[buttonNr].buttonIsSet = 0;
		if(buttonNr == TASTER_UP_NUMBER)
		{
			if((9 - change.fokus) == 0)
			{
				val = 1;
			}
			else
			{
				val = 10;
				for(x = 1; x < (9 - change.fokus); x ++)
				{
					val = val * 10;
				}
			}
			checkValue = change.actualValue + val;
			if((checkValue <= change.maxVal) && (checkValue >= change.minVal))
			{
				change.actualValue = checkValue;
			}
			else
			{
				change.actualValue = change.maxVal;
			}
			ret = 1;

		}
		else if(buttonNr == TASTER_DOWN_NUMBER)
		{

			if((9 - change.fokus) == 0)
			{
				val = 1;
			}
			else
			{
				val = 10;
				for(x = 1; x < (9 - change.fokus); x ++)
				{
					val = val * 10;
				}
			}
			checkValue = change.actualValue - val;
			if((checkValue <= change.maxVal) && (checkValue >= change.minVal))
			{
				change.actualValue = checkValue;
			}
			else
			{
				change.actualValue = change.minVal;
			}
			ret = 1;

		}
		else if(buttonNr == TASTER_FRONT_NUMBER)
		{

			if(change.fokus < 9)
			{
				change.fokus += 1;
				ret = 1;
			}
		}
		else if(buttonNr == TASTER_BACK_NUMBER)
		{
			if(change.fokus > 1)
			{
				change.fokus += -1;
				ret = 1;
			}
		}
		else if(buttonNr == TASTER_OK_NUMBER)
		{
	        if(osMutexAcquire (AD9954_Data_MutexHandle, 1000) == osOK )
	        {
	            /* We were able to obtain the semaphore and can now access the
	            shared resource. */
	        	//page->secondCallbackFuntion(page, change, &sendMessage.command, buff, -1);
	        	AD9954Register.frequency = change.actualValue;

	            /* We have finished accessing the shared resource.  Release the
	            semaphore. */
	        	osMutexRelease (AD9954_Data_MutexHandle);
	        	sendMessage.command = 0;
	        	sendMessage.command |= AD9954_REG_COMMAND_FREQ;
	        	sendMessage.command |= AD9954_REG_COMMAND_READWRITE;
	        	sendMessage.taskHandle = TaskUserHandle;
	        	osMessageQueuePut (AD9954_readQueueHandle, &sendMessage, 0, 0);
	        }
	        ret = 1;
		}
	}

	/*
	if(newPage == 0)
	{
		//GUI_WriteMenue(page, buttonNr);
	}
	*/
	if(ret == 1)
	{
		sprintf(buff,"%09ld",(uint32_t)change.actualValue);
		ssd1306_Fill(White);
	    ssd1306_SetCursor(GUI_TEXT_POS_X_0, GUI_TEXT_POS_Y_0);
		ssd1306_WriteString(page->display[page->focus].text, *page->display[page->focus].font, page->display[page->focus].color);
	    ssd1306_SetCursor(GUI_TEXT_POS_X_0, GUI_TEXT_POS_Y_1);
		ssd1306_WriteString(buff, *page->display[page->focus].font, page->display[page->focus].color);
		ssd1306_Line(GUI_TEXT_POS_X_0  + (6 * change.fokus) - 6,  GUI_TEXT_POS_Y_1 + 6 + 2, GUI_TEXT_POS_X_0  + (6 * change.fokus) + 4 - 6, GUI_TEXT_POS_Y_1 + 6 + 2, Black);

	}
	else
	{
		pActualPage = &page_AD9954_FUNCTION;
	}


	page->toUpdate = 1;
	printf("GUI_FUNCTION_SINGLETONE_Callback\n\r");
}

/************************************************* Support **********************************************************/

static uint32_t changeFocus(GUI_page_struct_t * page, change_value_struct_t * change, int32_t addSub)
{
	uint32_t ret = 0;
	char buff[15];

	if(change != NULL && page != NULL)
	{
		if(addSub == -1 && change->fokus > 2)
		{
			change->fokus += addSub;
			ret = 1;
		}
		else if(addSub == 1 && change->fokus < 9)
		{
			change->fokus += addSub;
			ret = 1;
		}
		else
		{
			change->fokus = 9;
			change->changeModus = 0;
		}

		if(ret == 1)
		{
			sprintf(buff,"0x%08lx",(uint32_t)change->actualValue);
			ssd1306_Fill(White);
		    ssd1306_SetCursor(GUI_TEXT_POS_X_0, GUI_TEXT_POS_Y_0);
			ssd1306_WriteString(page->display[page->focus].text, *page->display[page->focus].font, page->display[page->focus].color);
		    ssd1306_SetCursor(GUI_TEXT_POS_X_0, GUI_TEXT_POS_Y_1);
			ssd1306_WriteString(buff, *page->display[page->focus].font, page->display[page->focus].color);
			ssd1306_Line(GUI_TEXT_POS_X_0  + (6 * change->fokus),  GUI_TEXT_POS_Y_1 + 6 + 2, GUI_TEXT_POS_X_0  + (6 * change->fokus) + 4, GUI_TEXT_POS_Y_1 + 6 + 2, Black);

		}

	}
	return ret;
}

static void GUI_WriteMenue(GUI_page_struct_t *page, uint32_t buttonNr)
{
	uint32_t x;
	uint32_t y;
	uint32_t y_pos;
	//uint32_t maxCol;

	ssd1306_Fill(White);

	// dann erst den Titel:
    ssd1306_SetCursor(GUI_TEXT_POS_X_0, GUI_TEXT_POS_Y_0);
	ssd1306_WriteString(page->display[0].text, *page->display[0].font, page->display[0].color);
	// dann die anderen jenachdem wo der fokus liegt
	//maxCol = 4;
	if((page->focus == 1) || (page->lines < 3))
	{
		y = 1;
		//maxCol = page->lines;
	}
	else if((page->focus == page->lines - 1) && (page->lines >= 4))
	{
		y = page->focus - 2;
	}
	else
	{
		y = page->focus - 1;
	}

	for(x = 1; x < 4; x ++)
	{
		if(x == 0)
		{
			y_pos = GUI_TEXT_POS_Y_0;
		}
		else if(x == 1)
		{
			y_pos = GUI_TEXT_POS_Y_1;
		}
		else if(x == 2)
		{
			y_pos = GUI_TEXT_POS_Y_2;
		}
		else if(x == 3)
		{
			y_pos = GUI_TEXT_POS_Y_3;
		}

		if(y == page->lines)
		{
			break;
		}
		if(y == page->focus)
		{
			ssd1306_WriteBow(GUI_TEXT_POS_X_0, y_pos, *page->display[y].font, page->display[y].color);
		}

		ssd1306_SetCursor(GUI_TEXT_POS_X_0 + 7, y_pos);
		ssd1306_WriteString(page->display[y].text, *page->display[y].font, page->display[y].color);

		y++;
	}

}

static uint32_t changeValue(GUI_page_struct_t * page, change_value_struct_t * change, int32_t addSub)
{
	uint32_t checkValue;
	uint32_t ret = 0;

	char buff[15];

	if(change != NULL && page != NULL)
	{
		// get Value at actual fokus
		checkValue = change->actualValue >> (4 * (9 - change->fokus));
		checkValue = checkValue & 0x0000000F;

		if(addSub == -1)
		{
			if(checkValue > 0)
			{
				checkValue = change->actualValue - (1 << (4 * (9 - change->fokus)));
				if((checkValue <= change->maxVal) && (checkValue >= change->minVal))
				{
					change->actualValue = checkValue;
				}
			}
		}
		else if(addSub == 1)
		{
			if(checkValue < 0x0F)
			{
				checkValue = change->actualValue + (1 << (4 * (9 - change->fokus)));
				if((checkValue <= change->maxVal) && (checkValue >= change->minVal))
				{
					change->actualValue = checkValue;
				}
			}
		}
		sprintf(buff,"0x%08lx",(uint32_t)change->actualValue);

		ssd1306_Fill(White);
		ssd1306_SetCursor(GUI_TEXT_POS_X_0, GUI_TEXT_POS_Y_0);
		ssd1306_WriteString(page->display[page->focus].text, *page->display[page->focus].font, page->display[page->focus].color);
		ssd1306_SetCursor(GUI_TEXT_POS_X_0, GUI_TEXT_POS_Y_1);
		ssd1306_WriteString(buff, *page->display[page->focus].font, page->display[page->focus].color);
		ssd1306_Line(GUI_TEXT_POS_X_0  + (6 * change->fokus),  GUI_TEXT_POS_Y_1 + 6 + 2, GUI_TEXT_POS_X_0  + (6 * change->fokus) + 4, GUI_TEXT_POS_Y_1 + 6 + 2, Black);
		ret = 1;
	}
	return ret;
}

static uint32_t InitExitChangeValue(GUI_page_struct_t * page, change_value_struct_t * change, int32_t initExit)
{
	//uint32_t checkValue;
	uint32_t ret = 0;
	AD99554_message_struct_t sendMessage;

	char buff[15];

	if(change != NULL && page != NULL)
	{

		if(initExit == 1)
		{
			change->changeModus = 1;
			change->fokus = 9;

			if(page->values[page->focus - 1].size == 4)
			{
				//change->actualValue = (page->regInfo[page->focus - 1].data[0] << 24) + (page->regInfo[page->focus - 1].data[1] << 16) + (page->regInfo[page->focus - 1].data[2] << 8) + (page->regInfo[page->focus - 1].data[3]);
				change->actualValue = (page->values[page->focus - 1].data[3] << 24) + (page->values[page->focus - 1].data[2] << 16) + (page->values[page->focus - 1].data[1] << 8) + (page->values[page->focus - 1].data[0]);
			}
			else if(page->values[page->focus - 1].size == 3)
			{
				//change->actualValue = (page->values[page->focus - 1].data[0] << 16) + (page->values[page->focus - 1].data[1] << 8) + (page->values[page->focus - 1].data[2]);
				change->actualValue = (page->values[page->focus - 1].data[2] << 16) + (page->values[page->focus - 1].data[1] << 8) + (page->values[page->focus - 1].data[0]);
			}
			else if(page->values[page->focus - 1].size == 2)
			{
				//change->actualValue = (page->values[page->focus - 1].data[0] << 8) + (page->values[page->focus - 1].data[1]);
				change->actualValue = (page->values[page->focus - 1].data[1] << 8) + (page->values[page->focus - 1].data[0]);
			}
			else if(page->values[page->focus - 1].size == 1)
			{
				change->actualValue = (page->values[page->focus - 1].data[0]);
			}
			change->minVal = page->values[page->focus - 1].minVal;
			change->maxVal = page->values[page->focus - 1].maxVal;


			//page->secondCallbackFuntion(page, change, NULL, buff, 1);
		    sprintf(buff,"0x%08lx",(uint32_t)change->actualValue);

			ssd1306_Fill(White);
		    ssd1306_SetCursor(GUI_TEXT_POS_X_0, GUI_TEXT_POS_Y_0);
			ssd1306_WriteString(page->display[page->focus].text, *page->display[page->focus].font, page->display[page->focus].color);
		    ssd1306_SetCursor(GUI_TEXT_POS_X_0, GUI_TEXT_POS_Y_1);
			ssd1306_WriteString(buff, *page->display[page->focus].font, page->display[page->focus].color);
			ssd1306_Line(GUI_TEXT_POS_X_0  + (6 * change->fokus),  GUI_TEXT_POS_Y_1 + 6 + 2, GUI_TEXT_POS_X_0  + (6 * change->fokus) + 4, GUI_TEXT_POS_Y_1 + 6 + 2, Black);
			ret = 1;

		}
		else if(initExit == -1)
		{
	        if(osMutexAcquire (AD9954_Data_MutexHandle, 1000) == osOK )
	        {
	            /* We were able to obtain the semaphore and can now access the
	            shared resource. */
	        	//page->secondCallbackFuntion(page, change, &sendMessage.command, buff, -1);

				if(page->values[page->focus - 1].size == 4)
				{
					page->values[page->focus - 1].data[3] = change->actualValue >> 24;
					page->values[page->focus - 1].data[2] = change->actualValue >> 16;
					page->values[page->focus - 1].data[1] = change->actualValue >> 8;
					page->values[page->focus - 1].data[0] = change->actualValue;
				}
				else if(page->values[page->focus - 1].size == 3)
				{
					page->values[page->focus - 1].data[2] = change->actualValue >> 16;
					page->values[page->focus - 1].data[1] = change->actualValue >> 8;
					page->values[page->focus - 1].data[0] = change->actualValue;
				}
				else if(page->values[page->focus - 1].size == 2)
				{
					page->values[page->focus - 1].data[1] = change->actualValue >> 8;
					page->values[page->focus - 1].data[0] = change->actualValue;
				}
				else if(page->values[page->focus - 1].size == 1)
				{
					page->values[page->focus - 1].data[0] = change->actualValue;
				}

	            /* We have finished accessing the shared resource.  Release the
	            semaphore. */
	        	osMutexRelease (AD9954_Data_MutexHandle);
	        	sendMessage.command = 0;
	        	sendMessage.command |= page->values[page->focus - 1].command;
	        	sendMessage.command |= AD9954_REG_COMMAND_READWRITE;
	        	sendMessage.taskHandle = TaskUserHandle;
	        	osMessageQueuePut (AD9954_readQueueHandle, &sendMessage, 0, 0);
	        }
	        else
	        {
	        	// sollte irgendwann mal eine Fehlerbehandlung geben sonst wird halt einfach nicht gesschrieben
	            /* We could not obtain the semaphore and can therefore not access
	            the shared resource safely. */
	        }
			change->fokus = 9;
			change->changeModus = 0;
		}

	}
	return ret;
}
