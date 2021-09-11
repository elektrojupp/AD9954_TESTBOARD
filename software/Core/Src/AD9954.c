// includes 
#include "AD9954.h"
#include "stdio.h"
#include "string.h"
#include "spi.h"
#include <math.h>

extern osMessageQueueId_t AD9954_readQueueHandle;
extern osThreadId_t TaskAD9954Handle;

/*
#define ADDRESS_OFFSET_0 0
#define ADDRESS_OFFSET_1 ADDRESS_OFFSET_0 + CRF1_REGISTER_SIZE
#define ADDRESS_OFFSET_2 ADDRESS_OFFSET_1 + CRF2_REGISTER_SIZE
#define ADDRESS_OFFSET_3 ADDRESS_OFFSET_2 + ASF_REGISTER_SIZE
#define ADDRESS_OFFSET_4 ADDRESS_OFFSET_3 + ARR_REGISTER_SIZE
#define ADDRESS_OFFSET_5 ADDRESS_OFFSET_4 + FTW0_REGISTER_SIZE
#define ADDRESS_OFFSET_6 ADDRESS_OFFSET_5 + POW0_REGISTER_SIZE
#define ADDRESS_OFFSET_7 ADDRESS_OFFSET_6 + FTW1_REGISTER_SIZE
#define ADDRESS_OFFSET_8 ADDRESS_OFFSET_7 + RSCW0_REGISTER_SIZE
#define ADDRESS_OFFSET_9 ADDRESS_OFFSET_8 + RSCW1_REGISTER_SIZE
#define ADDRESS_OFFSET_10 ADDRESS_OFFSET_9 + RSCW2_REGISTER_SIZE
#define ADDRESS_OFFSET_11 ADDRESS_OFFSET_10 + RSCW3_REGISTER_SIZE
#define ADDRESS_OFFSET_12 ADDRESS_OFFSET_11 + NLSCW_REGISTER_SIZE
#define ADDRESS_OFFSET_13 ADDRESS_OFFSET_12 + PLSCW_REGISTER_SIZE

#define REGISTER_DATA_SIZE (CRF1_REGISTER_SIZE + CRF2_REGISTER_SIZE + ASF_REGISTER_SIZE + ARR_REGISTER_SIZE + FTW0_REGISTER_SIZE + POW0_REGISTER_SIZE + FTW1_REGISTER_SIZE + RSCW0_REGISTER_SIZE + RSCW1_REGISTER_SIZE + RSCW2_REGISTER_SIZE + RSCW3_REGISTER_SIZE + NLSCW_REGISTER_SIZE + PLSCW_REGISTER_SIZE + RAM_DATA_SIZE)

sizeof(AD9954_reg_cfr1_struct_t)
sizeof(AD9954_reg_cfr2_struct_t)
sizeof(AD9954_reg_asf_struct_t)
sizeof(AD9954_reg_arr_struct_t)
sizeof(AD9954_reg_ftw_struct_t)
sizeof(AD9954_reg_pow_struct_t)
sizeof(AD9954_reg_ftw_struct_t)
sizeof(AD9954_reg_rscw_struct_t)
sizeof(AD9954_reg_rscw_struct_t)
sizeof(AD9954_reg_rscw_struct_t)
sizeof(AD9954_reg_rscw_struct_t)
sizeof(AD9954_reg_nlscw_struct_t)
sizeof(AD9954_reg_plscw_struct_t)
sizeof(AD9954_reg_ram_struct_t)
sizeof(uint32_t)
*/


#define ADDRESS_OFFSET_0  0
#define ADDRESS_OFFSET_1  ADDRESS_OFFSET_0  + sizeof(AD9954_reg_cfr1_struct_t)
#define ADDRESS_OFFSET_2  ADDRESS_OFFSET_1  + sizeof(AD9954_reg_cfr2_struct_t)
#define ADDRESS_OFFSET_3  ADDRESS_OFFSET_2  + sizeof(AD9954_reg_asf_struct_t)
#define ADDRESS_OFFSET_4  ADDRESS_OFFSET_3  + sizeof(AD9954_reg_arr_struct_t)
#define ADDRESS_OFFSET_5  ADDRESS_OFFSET_4  + sizeof(AD9954_reg_ftw_struct_t)
#define ADDRESS_OFFSET_6  ADDRESS_OFFSET_5  + sizeof(AD9954_reg_pow_struct_t)
#define ADDRESS_OFFSET_7  ADDRESS_OFFSET_6  + sizeof(AD9954_reg_ftw_struct_t)
#define ADDRESS_OFFSET_8  ADDRESS_OFFSET_7  + sizeof(AD9954_reg_rscw_struct_t)
#define ADDRESS_OFFSET_9  ADDRESS_OFFSET_8  + sizeof(AD9954_reg_rscw_struct_t)
#define ADDRESS_OFFSET_10 ADDRESS_OFFSET_9  + sizeof(AD9954_reg_rscw_struct_t)
#define ADDRESS_OFFSET_11 ADDRESS_OFFSET_10 + sizeof(AD9954_reg_rscw_struct_t)
#define ADDRESS_OFFSET_12 ADDRESS_OFFSET_11 + sizeof(AD9954_reg_nlscw_struct_t)
#define ADDRESS_OFFSET_13 ADDRESS_OFFSET_12 + sizeof(AD9954_reg_plscw_struct_t)

#define REGISTER_DATA_SIZE (sizeof(AD9954_reg_cfr1_struct_t)  + \
							sizeof(AD9954_reg_cfr2_struct_t)  + \
							sizeof(AD9954_reg_asf_struct_t)   + \
							sizeof(AD9954_reg_arr_struct_t)   + \
							sizeof(AD9954_reg_ftw_struct_t)   + \
							sizeof(AD9954_reg_pow_struct_t)   + \
							sizeof(AD9954_reg_ftw_struct_t)   + \
							sizeof(AD9954_reg_rscw_struct_t)  + \
							sizeof(AD9954_reg_rscw_struct_t)  + \
							sizeof(AD9954_reg_rscw_struct_t)  + \
							sizeof(AD9954_reg_rscw_struct_t)  + \
							sizeof(AD9954_reg_nlscw_struct_t) + \
							sizeof(AD9954_reg_plscw_struct_t) + \
							sizeof(AD9954_reg_ram_struct_t)   + \
							sizeof(uint32_t))

uint8_t registerData[REGISTER_DATA_SIZE];

AD9954_reg_struct_t AD9954Register = {
		{CFR1_REGISTER_ADDRESS,CRF1_REGISTER_SIZE,&registerData[ADDRESS_OFFSET_0],0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}, //
		{CFR2_REGISTER_ADDRESS,CRF2_REGISTER_SIZE,&registerData[ADDRESS_OFFSET_1],0,0,0,0,0,0},
		{ASF_REGISTER_ADDRESS,ASF_REGISTER_SIZE,&registerData[ADDRESS_OFFSET_2],0,0},
		{ARR_REGISTER_ADDRESS,ARR_REGISTER_SIZE,&registerData[ADDRESS_OFFSET_3],0},
		{FTW0_REGISTER_ADDRESS,FTW0_REGISTER_SIZE,&registerData[ADDRESS_OFFSET_4],0},
		{POW0_REGISTER_ADDRESS,POW0_REGISTER_SIZE,&registerData[ADDRESS_OFFSET_5],0},
		{FTW1_REGISTER_ADDRESS,FTW1_REGISTER_SIZE,&registerData[ADDRESS_OFFSET_6],0},

		{RSCW0_REGISTER_ADDRESS,RSCW0_REGISTER_SIZE,&registerData[ADDRESS_OFFSET_7] ,0,0,0,0,0},
		{RSCW1_REGISTER_ADDRESS,RSCW1_REGISTER_SIZE,&registerData[ADDRESS_OFFSET_8] ,0,0,0,0,0},
		{RSCW2_REGISTER_ADDRESS,RSCW2_REGISTER_SIZE,&registerData[ADDRESS_OFFSET_9] ,0,0,0,0,0},
		{RSCW3_REGISTER_ADDRESS,RSCW3_REGISTER_SIZE,&registerData[ADDRESS_OFFSET_10],0,0,0,0,0},

		{NLSCW_REGISTER_ADDRESS,NLSCW_REGISTER_SIZE,&registerData[ADDRESS_OFFSET_11],0,0},
		{PLSCW_REGISTER_ADDRESS,PLSCW_REGISTER_SIZE,&registerData[ADDRESS_OFFSET_12],0,0},
		{RAM_REGISTER_ADDRESS,RAM_DATA_SIZE,&registerData[ADDRESS_OFFSET_13]},
		0
};

void AD9954_Init(void)
{
    //AD99554_message_struct_t message;

	// GPIO Init must take place elsewhere
	// Set GPIO to defined states
	HAL_GPIO_WritePin(AD9954_RESET_GPIO_Port, AD9954_RESET_PIN, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(AD9954_IOUPDATE_GPIO_Port, AD9954_IOUPDATE_PIN, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(AD9954_PS1_GPIO_Port, AD9954_PS1_PIN, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(AD9954_OSK_GPIO_Port, AD9954_OSK_PIN, GPIO_PIN_RESET);	
	HAL_GPIO_WritePin(AD9954_IOSYNC_GPIO_Port, AD9954_IOSYNC_PIN, GPIO_PIN_RESET);					// high resets the serial port
	HAL_GPIO_WritePin(AD9954_PWRDNCTL_GPIO_Port, AD9954_PWRDNCTL_PIN, GPIO_PIN_RESET);				// disable power down mode
	HAL_GPIO_WritePin(AD9954_SYNCIN_GPIO_Port, AD9954_SYNCIN_PIN, GPIO_PIN_RESET);					// only ONE AD9954 so no sync useful
	HAL_GPIO_WritePin(AD9954_CLKMODESELECT_GPIO_Port, AD9954_CLKMODESELECT_PIN, GPIO_PIN_SET);		// high enables the onchip Oszillator
	// HAL_GPIO_ReadPin(AD9954_SYNCCLK_GPIO_Port, AD9954_SYNCCLK_Pin, GPIO_PIN_RESET);				// the SYNC CLK output is connected to the stm32 but not used

	// Reset device
	AD9954_Reset();

	// stelle um auf duplex danach kann erst gelesen werden
	AD9954Register.cfr1.SDIO_Input_Only = 1;
	AD9954_WriteCFR1(&AD9954Register.cfr1);

	AD9954_Update();

	// auf 16 setzen mit 25MHz externem Takt -> 400MHz
	AD9954Register.cfr2.REFCLK_Multiplier = 16;
	AD9954_WriteCFR2(&AD9954Register.cfr2);

	AD9954_Update();

	AD9954_SetFrequency(10000000);
	AD9954_Update();







	/*

	// die Sektion hier funktioniert schon mal
	HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_RESET);		// PS0 == HIGH. RSCW counts
	HAL_GPIO_WritePin(AD9954_PS1_GPIO_Port, AD9954_PS1_PIN, GPIO_PIN_RESET);		// PS1 must be tied low

	AD9954Register.cfr1.Linear_Sweep_Enable = 1;								// linear sweep enable must be set
	//AD9954Register.cfr1.Linear_Sweep_No_Dwell = 1;								// wenn gesetzt startet der schiss immer wieder von neuem
	AD9954_WriteCFR1(&AD9954Register.cfr1);

	AD9954Register.ftw0.Frequency_Tuning_Word = ((double)10000000/400000000)*UINT32_MAX;
	AD9954_WriteFTW(&AD9954Register.ftw0);
	//printf("FTW0 = %x \r\n", AD9954Register.ftw0.Frequency_Tuning_Word);

	AD9954Register.ftw1.Frequency_Tuning_Word = ((double)15000000/400000000)*UINT32_MAX;
	AD9954_WriteFTW(&AD9954Register.ftw1);
	//printf("FTW1 = %x \r\n", AD9954Register.ftw1.Frequency_Tuning_Word);

	// ramp rate: wie viele SYNC_CLK Schritte eine Frequenzänderung
	// 120 Schritte hoch
	// 180 SChritte runter



	//T = posDF/(posRR*10ns)
	//posRR = 100
	//T = 1s
	//=> posDF = T * 10ns * 100
	//   posDF = 1us

	// steps = rising_time / max_res = 1.2 us / 10 ns = 120
	// rising Frequency = delta_f/steps; = 1.2 MHz / 120 Steps = 10 kHz
	AD9954Register.plscw.Rising_Delta_Frequency_Tuning_Word = ((double)1000000/400000000)*UINT32_MAX;
	AD9954Register.plscw.Rising_Sweep_Ramp_Word = 100; // muss noch ausprobieren
	//printf("PLSCW = %x \r\n", AD9954Register.plscw.Rising_Delta_Frequency_Tuning_Word);


	// steps = rising_time / max_res = 1.8 us / 10 ns = 180
	// rising Frequency = delta_f/steps; = 1.2 MHz / 180 Steps = 6666.666 kHz
	AD9954Register.nlscw.Falling_Delta_Frequency_Tuning_Word = ((double)1000000/400000000)*UINT32_MAX;
	AD9954Register.nlscw.Falling_Sweep_Ramp_Word = 100;
	//printf("NLSCW = %x \r\n", AD9954Register.nlscw.Falling_Delta_Frequency_Tuning_Word);

	AD9954_WriteNLSCW(&AD9954Register.nlscw);
	AD9954_WritePLSCW(&AD9954Register.plscw);

	AD9954_Update(); // update die Register

	HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_SET); // starte ramp up

	while(1)
	{
		//HAL_Delay(100);
		//HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_SET); // starte ramp up
		//HAL_Delay(100);
		//HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_RESET); // starte ramp up
	}
	*/


















	/*

	jetzt versuche Sweep

	Linear Sweep Enable Bit einschalten

	geht von FTW0 nach FTW1

	wenn P0 High ist, dann RSCW wichtig.

	*/

	/*

	// die Sektion hier funktioniert schon mal
	HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_RESET);		// PS0 == HIGH. RSCW counts
	HAL_GPIO_WritePin(AD9954_PS1_GPIO_Port, AD9954_PS1_PIN, GPIO_PIN_RESET);		// PS1 must be tied low

	AD9954Register.cfr1.Linear_Sweep_Enable = 1;								// linear sweep enable must be set
	//AD9954Register.cfr1.Linear_Sweep_No_Dwell = 1;								// wenn gesetzt startet der schiss immer wieder von neuem
	AD9954_WriteCFR1(&AD9954Register.cfr1);

	AD9954Register.ftw0.Frequency_Tuning_Word = ((double)61530000/400000000)*UINT32_MAX;
	AD9954_WriteFTW(&AD9954Register.ftw0);
	printf("FTW0 = %x \r\n", AD9954Register.ftw0.Frequency_Tuning_Word);

	AD9954Register.ftw1.Frequency_Tuning_Word = ((double)62730000/400000000)*UINT32_MAX;
	AD9954_WriteFTW(&AD9954Register.ftw1);
	printf("FTW1 = %x \r\n", AD9954Register.ftw1.Frequency_Tuning_Word);

	// ramp rate: wie viele SYNC_CLK Schritte eine Frequenzänderung
	// 120 Schritte hoch
	// 180 SChritte runter

	// steps = rising_time / max_res = 1.2 us / 10 ns = 120
	// rising Frequency = delta_f/steps; = 1.2 MHz / 120 Steps = 10 kHz
	AD9954Register.plscw.Rising_Delta_Frequency_Tuning_Word = ((double)10000/400000000)*UINT32_MAX;
	AD9954Register.plscw.Rising_Sweep_Ramp_Word = 1; // muss noch ausprobieren
	printf("PLSCW = %x \r\n", AD9954Register.plscw.Rising_Delta_Frequency_Tuning_Word);


	// steps = rising_time / max_res = 1.8 us / 10 ns = 180
	// rising Frequency = delta_f/steps; = 1.2 MHz / 180 Steps = 6666.666 kHz
	AD9954Register.nlscw.Falling_Delta_Frequency_Tuning_Word = ((double)666.6666/400000000)*UINT32_MAX;
	AD9954Register.nlscw.Falling_Sweep_Ramp_Word = 1;
	printf("NLSCW = %x \r\n", AD9954Register.nlscw.Falling_Delta_Frequency_Tuning_Word);

	AD9954_WriteNLSCW(&AD9954Register.nlscw);
	AD9954_WritePLSCW(&AD9954Register.plscw);

	AD9954_Update(); // update die Register




	while(1)
	{
		HAL_Delay(1);
		HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_SET); // starte ramp up
		HAL_Delay(1);
		HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_RESET); // starte ramp up
	}

	*/


	// SWEEP EXAMPLE






	/*

	// die Sektion hier funktioniert schon mal
	HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_RESET);		// PS0 == HIGH. RSCW counts
	HAL_GPIO_WritePin(AD9954_PS1_GPIO_Port, AD9954_PS1_PIN, GPIO_PIN_RESET);		// PS1 must be tied low

	AD9954Register.cfr1.Linear_Sweep_Enable = 1;								// linear sweep enable must be set
	//AD9954Register.cfr1.Linear_Sweep_No_Dwell = 1;								// wenn gesetzt startet der schiss immer wieder von neuem
	AD9954_WriteCFR1(&AD9954Register.cfr1);

	AD9954Register.ftw0.Frequency_Tuning_Word = ((double)61530000/400000000)*UINT32_MAX;
	AD9954_WriteFTW(&AD9954Register.ftw0);
	printf("FTW0 = %x \r\n", AD9954Register.ftw0.Frequency_Tuning_Word);

	AD9954Register.ftw1.Frequency_Tuning_Word = ((double)99930000/400000000)*UINT32_MAX;
	AD9954_WriteFTW(&AD9954Register.ftw1);
	printf("FTW1 = %x \r\n", AD9954Register.ftw1.Frequency_Tuning_Word);

	// ramp rate: wie viele SYNC_CLK Schritte eine Frequenzänderung
	// 120 Schritte hoch
	// 180 SChritte runter

	// steps = rising_time / max_res = 1.2 us / 10 ns = 120
	// rising Frequency = delta_f/steps; = 1.2 MHz / 120 Steps = 10 kHz
	AD9954Register.plscw.Rising_Delta_Frequency_Tuning_Word = ((double)10000/400000000)*UINT32_MAX;
	AD9954Register.plscw.Rising_Sweep_Ramp_Word = 32; // muss noch ausprobieren
	printf("PLSCW = %x \r\n", AD9954Register.plscw.Rising_Delta_Frequency_Tuning_Word);


	// steps = rising_time / max_res = 1.8 us / 10 ns = 180
	// rising Frequency = delta_f/steps; = 1.2 MHz / 180 Steps = 6666.666 kHz
	AD9954Register.nlscw.Falling_Delta_Frequency_Tuning_Word = ((double)666.6666/400000000)*UINT32_MAX;
	AD9954Register.nlscw.Falling_Sweep_Ramp_Word = 32;
	printf("NLSCW = %x \r\n", AD9954Register.nlscw.Falling_Delta_Frequency_Tuning_Word);

	AD9954_WriteNLSCW(&AD9954Register.nlscw);
	AD9954_WritePLSCW(&AD9954Register.plscw);

	AD9954_Update(); // update die Register




	while(1)
	{
		HAL_Delay(1);
		HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_SET); // starte ramp up
		HAL_Delay(1);
		HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_RESET); // starte ramp up
	}

	*/











	// RAM MODE


	// Enable RAM


	/*
	HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_RESET);		//
	HAL_GPIO_WritePin(AD9954_PS1_GPIO_Port, AD9954_PS1_PIN, GPIO_PIN_RESET);		//

	AD9954Register.cfr1.RAM_Enable = 1;												//
	AD9954_WriteCFR1(&AD9954Register.cfr1);

	AD9954_Update();

	AD9954Register.rscw0.RAM_Ramp_Rate = 1;
	AD9954Register.rscw0.RAM_Beginning_Address = 0;
	AD9954Register.rscw0.RAM_Final_Address = 99;
	AD9954Register.rscw0.RAM_Mode = 1;
	AD9954Register.rscw0.no_Dwell_Active = 0;
	AD9954_WriteRSCW(&AD9954Register.rscw0);

	AD9954_Update();

	AD9954Register.rscw1.RAM_Ramp_Rate = 0;
	AD9954Register.rscw1.RAM_Beginning_Address = 100;
	AD9954Register.rscw1.RAM_Final_Address = 199;
	AD9954Register.rscw1.RAM_Mode = 1;
	AD9954_WriteRSCW(&AD9954Register.rscw1);

	AD9954_Update();

	*/
	// calc Gaussian function

	//printf("\r\n\r\n");
	/*
	#define SIZEEE 100
	double gauss1[SIZEEE] = {0};
	double start = -3;
	double ende = 3;
	double delta = (ende - start)/(SIZEEE - 1);
	for(uint32_t x = 0; x < SIZEEE; x ++)
	{
		gauss1[x] = start + x*delta;
		//printf("%ld \r\n", (uint32_t)(gauss1[x]*1000000));
		gauss1[x] = exp(-pow(gauss1[x],2));
		printf("%ld, \r\n", (uint32_t)((gauss1[x]/1000000)*UINT32_MAX));
	}
	printf("}\r\n");
	*/
	/*
	double gauss[100] =
	{
			429496730.0 ,
			433835080.0 ,
			438173431.0 ,
			442511782.0 ,
			446850133.0 ,
			451188484.0 ,
			455526834.0 ,
			459865185.0 ,
			464203536.0 ,
			468541887.0 ,
			472880238.0 ,
			477218588.0 ,
			481556939.0 ,
			485895290.0 ,
			490233641.0 ,
			494571992.0 ,
			498910342.0 ,
			503248693.0 ,
			507587044.0 ,
			511925395.0 ,
			516263746.0 ,
			520602096.0 ,
			524940447.0 ,
			529278798.0 ,
			533617149.0 ,
			537955500.0 ,
			542293851.0 ,
			546632201.0 ,
			550970552.0 ,
			555308903.0 ,
			559647254.0 ,
			563985605.0 ,
			568323955.0 ,
			572662306.0 ,
			577000657.0 ,
			581339008.0 ,
			585677359.0 ,
			590015709.0 ,
			594354060.0 ,
			598692411.0 ,
			603030762.0 ,
			607369113.0 ,
			611707463.0 ,
			616045814.0 ,
			620384165.0 ,
			624722516.0 ,
			629060867.0 ,
			633399217.0 ,
			637737568.0 ,
			642075919.0 ,
			646414270.0 ,
			650752621.0 ,
			655090971.0 ,
			659429322.0 ,
			663767673.0 ,
			668106024.0 ,
			672444375.0 ,
			676782725.0 ,
			681121076.0 ,
			685459427.0 ,
			689797778.0 ,
			694136129.0 ,
			698474479.0 ,
			702812830.0 ,
			707151181.0 ,
			711489532.0 ,
			715827883.0 ,
			720166233.0 ,
			724504584.0 ,
			728842935.0 ,
			733181286.0 ,
			737519637.0 ,
			741857987.0 ,
			746196338.0 ,
			750534689.0 ,
			754873040.0 ,
			759211391.0 ,
			763549742.0 ,
			767888092.0 ,
			772226443.0 ,
			776564794.0 ,
			780903145.0 ,
			785241496.0 ,
			789579846.0 ,
			793918197.0 ,
			798256548.0 ,
			802594899.0 ,
			806933250.0 ,
			811271600.0 ,
			815609951.0 ,
			819948302.0 ,
			824286653.0 ,
			828625004.0 ,
			832963354.0 ,
			837301705.0 ,
			841640056.0 ,
			845978407.0 ,
			850316758.0 ,
			854655108.0 ,
			858993459.0
	};
	*/
	/*
	uint32_t gauss1[100] = {0};
	uint32_t gauss2[100] = {0};

	for(uint32_t x = 0; x < 100; x ++)
	{
		gauss[x] = gauss[x]*5000;
		gauss[x] = gauss[x] + 10e5;
		gauss[x] = gauss[x]/2;
		gauss[x] = ((gauss[x]/100000000)*UINT32_MAX);
		//printf("%ld, \r\n", (uint32_t)(gauss[x]));
	}

	for(uint32_t x = 0; x < 100; x ++)
	{
		//gauss1[x] = (uint32_t)(gauss[x]);
		gauss1[x] = ((double)10/100000)*UINT32_MAX;
		//gauss2[99 - x] = (uint32_t)(gauss[x]);
		//printf("%ld, \r\n", gauss1[x]);
	}
	*/

	/*
	uint32_t gauss1[100] = {0};
	//uint32_t gauss2[100] = {0};

	for(uint32_t x = 0; x < 100; x ++)
	{
		gauss1[x] = (uint32_t)(gauss[x]);
		//gauss2[99 - x] = (uint32_t)(gauss[x]);
	}

	AD9954_WriteRegister(0x0b, 400, (uint8_t*)gauss1);
	AD9954_Update();

	//HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_SET);

	//AD9954_WriteRegister(0x0b, 400, (uint8_t*)gauss2);

	//AD9954_Update();
	while(1)
	{
		for(uint32_t x = 0; x < 700; x ++)
		{
			__NOP();
		}
		HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_SET); // starte ramp up
		HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_RESET); // starte ramp up
	}
	*/
	// delta frequency tuning words

	// SYNC_CLK = 100 MHz
	//          = 10 ns Periode
	// => wenn man


}


/*

uint32_t startFreq = 1000000;		// Startfrequenz
uint32_t stopFreq = 10000000;		// Stopfrequenz
uint32_t steps = 1000;				// Anzahl der Schritte
uint32_t deltaFreq = stopFreq - startFreq;
uint32_t rising_delta_freq = (double)deltaFreq/steps; // ist das Verhältnis von Frequenz zu Schritten.

AD9954Register.plscw.Rising_Delta_Frequency_Tuning_Word = rising_delta_freq;
AD9954Register.nlscw.Falling_Delta_Frequency_Tuning_Word = rising_delta_freq;

// ramp rate Value
AD9954Register.plscw.Rising_Sweep_Ramp_Word = 1; // muss noch ausprobieren
AD9954Register.nlscw.Falling_Sweep_Ramp_Word = 1;

AD9954_WriteNLSCW(&AD9954Register.nlscw);
AD9954_WritePLSCW(&AD9954Register.plscw);



// Startfrequenz muss kleiner als Stoppfrequenz sein und in FTW0
uint32_t freq = startFreq;
if((freq >= AD9954_MIN_FREQUENCY) && (freq <= AD9954_MAX_FREQUENCY))
{
	double refFreq = AD9954Register.cfr2.REFCLK_Multiplier * AD9954_REFCLOCK;
	AD9954Register.ftw0.Frequency_Tuning_Word = (uint32_t)((freq/refFreq)*UINT32_MAX);
	AD9954_WriteFTW(&AD9954Register.ftw0);
}

// Stopfrequenz
freq = stopFreq;
if((freq >= AD9954_MIN_FREQUENCY) && (freq <= AD9954_MAX_FREQUENCY))
{
	double refFreq = AD9954Register.cfr2.REFCLK_Multiplier * AD9954_REFCLOCK;
	AD9954Register.ftw1.Frequency_Tuning_Word = (uint32_t)((freq/refFreq)*UINT32_MAX);
	AD9954_WriteFTW(&AD9954Register.ftw1);
}

AD9954_Update(); // update die Register

HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_SET); // starte ramp up
*/





// friemel mit PS0 die richtige Richtung

/*
AD9954Register.rscw0.RAM_Beginning_Address = 0;
AD9954Register.rscw0.RAM_Final_Address = 1;
AD9954Register.rscw0.RAM_Mode = 0;
AD9954Register.rscw0.RAM_Ramp_Rate = 0;
AD9954Register.rscw0.no_Dwell_Active = 0;
AD9954_WriteRSCW(&AD9954Register.rscw0);
AD9954_Update();
AD9954_ReadRSCW(&AD9954Register.rscw0);

AD9954Register.rscw1.RAM_Beginning_Address = 0;
AD9954Register.rscw1.RAM_Final_Address = 1;
AD9954Register.rscw1.RAM_Mode = 0;
AD9954Register.rscw1.RAM_Ramp_Rate = 0;
AD9954Register.rscw1.no_Dwell_Active = 0;
AD9954_WriteRSCW(&AD9954Register.rscw1);
AD9954_Update();
AD9954_ReadRSCW(&AD9954Register.rscw1);

AD9954Register.rscw2.RAM_Beginning_Address = 0;
AD9954Register.rscw2.RAM_Final_Address = 0;
AD9954Register.rscw2.RAM_Mode = 0;
AD9954Register.rscw2.RAM_Ramp_Rate = 0;
AD9954Register.rscw2.no_Dwell_Active = 1;
AD9954_WriteRSCW(&AD9954Register.rscw2);
AD9954_Update();
AD9954_ReadRSCW(&AD9954Register.rscw2);

AD9954Register.rscw3.RAM_Beginning_Address = 0;
AD9954Register.rscw3.RAM_Final_Address = 1;
AD9954Register.rscw3.RAM_Mode = 0;
AD9954Register.rscw3.RAM_Ramp_Rate = 1;
AD9954Register.rscw3.no_Dwell_Active = 1;
AD9954_WriteRSCW(&AD9954Register.rscw3);
AD9954_Update();
AD9954_ReadRSCW(&AD9954Register.rscw3);
*/

/*
AD9954Register.rscw0.RAM_Beginning_Address = 0;
AD9954Register.rscw0.RAM_Final_Address = 1;
AD9954Register.rscw0.RAM_Mode = 0;
AD9954Register.rscw0.RAM_Ramp_Rate = 0;
AD9954Register.rscw0.no_Dwell_Active = 0;
AD9954_WriteRSCW(&AD9954Register.rscw0);
AD9954_Update();
AD9954_ReadRSCW(&AD9954Register.rscw0);

HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_SET);
HAL_GPIO_WritePin(AD9954_PS1_GPIO_Port, AD9954_PS1_PIN, GPIO_PIN_RESET);

AD9954Register.rscw1.RAM_Beginning_Address = 2;
AD9954Register.rscw1.RAM_Final_Address = 3;
AD9954Register.rscw1.RAM_Mode = 0;
AD9954Register.rscw1.RAM_Ramp_Rate = 0;
AD9954Register.rscw1.no_Dwell_Active = 0;
AD9954_WriteRSCW(&AD9954Register.rscw1);
AD9954_Update();
AD9954_ReadRSCW(&AD9954Register.rscw1);

HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_RESET);
HAL_GPIO_WritePin(AD9954_PS1_GPIO_Port, AD9954_PS1_PIN, GPIO_PIN_SET);

AD9954Register.rscw2.RAM_Beginning_Address = 4;
AD9954Register.rscw2.RAM_Final_Address = 5;
AD9954Register.rscw2.RAM_Mode = 0;
AD9954Register.rscw2.RAM_Ramp_Rate = 0;
AD9954Register.rscw2.no_Dwell_Active = 0;
AD9954_WriteRSCW(&AD9954Register.rscw2);
AD9954_Update();
AD9954_ReadRSCW(&AD9954Register.rscw1);

HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_SET);
HAL_GPIO_WritePin(AD9954_PS1_GPIO_Port, AD9954_PS1_PIN, GPIO_PIN_SET);

AD9954Register.rscw3.RAM_Beginning_Address = 6;
AD9954Register.rscw3.RAM_Final_Address = 7;
AD9954Register.rscw3.RAM_Mode = 0;
AD9954Register.rscw3.RAM_Ramp_Rate = 0;
AD9954Register.rscw3.no_Dwell_Active = 0;
AD9954_WriteRSCW(&AD9954Register.rscw3);
AD9954_Update();
AD9954_ReadRSCW(&AD9954Register.rscw3);

*/

/*


AD9954Register.rscw2.RAM_Beginning_Address = 0;
AD9954Register.rscw2.RAM_Final_Address = 0;
AD9954Register.rscw2.RAM_Mode = 0;
AD9954Register.rscw2.RAM_Ramp_Rate = 0;
AD9954Register.rscw2.no_Dwell_Active = 1;
AD9954_WriteRSCW(&AD9954Register.rscw2);

AD9954Register.rscw0.RAM_Beginning_Address = 0;
AD9954Register.rscw0.RAM_Final_Address = 0;
AD9954Register.rscw0.RAM_Mode = 0;
AD9954Register.rscw0.RAM_Ramp_Rate = 0;
AD9954Register.rscw0.no_Dwell_Active = 1;
AD9954_WriteRSCW(&AD9954Register.rscw0);


AD9954Register.rscw1.RAM_Beginning_Address = 0;
AD9954Register.rscw1.RAM_Final_Address = 0;
AD9954Register.rscw1.RAM_Mode = 0;
AD9954Register.rscw1.RAM_Ramp_Rate = 0;
AD9954Register.rscw1.no_Dwell_Active = 1;
AD9954_WriteRSCW(&AD9954Register.rscw1);

//HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_SET);
//HAL_GPIO_WritePin(AD9954_PS1_GPIO_Port, AD9954_PS1_PIN, GPIO_PIN_SET);

AD9954Register.rscw3.RAM_Beginning_Address = 0;
AD9954Register.rscw3.RAM_Final_Address = 1;
AD9954Register.rscw3.RAM_Mode = 0;
AD9954Register.rscw3.RAM_Ramp_Rate = 1;
AD9954Register.rscw3.no_Dwell_Active = 1;
AD9954_WriteRSCW(&AD9954Register.rscw3);

HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_SET);
HAL_GPIO_WritePin(AD9954_PS1_GPIO_Port, AD9954_PS1_PIN, GPIO_PIN_SET);
osDelay(10);

//AD9954_ResetSerial();

// set clock multiplier
//uint8_t multValue = 0b00010100;
uint8_t multValue = 16;
uint8_t data[] = {0x18, 0x00, 0x00};
data[2] = multValue << 3;
AD9954_WriteRegister(CFR2_REGISTER_ADDRESS, CRF2_REGISTER_SIZE, data);

// set CFR1 to 0
// ganz wichtig auf full duplex stellen sonst gibts Käse mit der HAL
uint8_t CFR1[] = {0x00,0b00000000,0b00000010,0x00};
AD9954_WriteRegister(CFR1_REGISTER_ADDRESS, CRF1_REGISTER_SIZE, CFR1);

// set frequency
uint32_t freq = 100000000;
uint32_t ftw = (uint32_t)(((freq * 4294967296.0)/(400000000)));
uint8_t FTW0[] = {(uint8_t)((ftw & 0xFF000000) >> 24), (uint8_t)((ftw & 0x00FF0000) >> 16), (uint8_t)((ftw & 0x0000FF00) >> 8), (uint8_t)((ftw & 0x000000FF) >> 0)};
AD9954_WriteRegister(FTW0_REGISTER_ADDRESS, FTW0_REGISTER_SIZE, FTW0);

// issues update command
AD9954_Update();


osDelay(100);


message.command = 0;
message.command &= ~(AD9954_REG_COMMAND_READWRITE);
message.command |= AD9954_REG_COMMAND_RSCW3;

AD9954_REG_COMMAND_CFR1
AD9954_REG_COMMAND_CFR2
AD9954_REG_COMMAND_ASF
AD9954_REG_COMMAND_ARR
AD9954_REG_COMMAND_FTW0
AD9954_REG_COMMAND_FTW1
AD9954_REG_COMMAND_POW0
AD9954_REG_COMMAND_RSCW0
AD9954_REG_COMMAND_RSCW1
AD9954_REG_COMMAND_RSCW2
AD9954_REG_COMMAND_RSCW3
AD9954_REG_COMMAND_NLSCW
AD9954_REG_COMMAND_PLSCW

message.taskHandle = TaskAD9954Handle;

readMessages(&message);
//AD9954_ResetSerial();
osDelay(10);
readMessages(&message);
//AD9954_ResetSerial();
osDelay(10);
readMessages(&message);
//AD9954_ResetSerial();
osDelay(10);
readMessages(&message);
//AD9954_ResetSerial();
osDelay(10);
readMessages(&message);
//AD9954_ResetSerial();
osDelay(10);

osDelay(100);

message.command = 0;
message.command &= ~(AD9954_REG_COMMAND_READWRITE);
message.command |= AD9954_REG_COMMAND_ALL;
message.taskHandle = TaskAD9954Handle;

readMessages(&message);


message.command = 0;
message.command &= ~(AD9954_REG_COMMAND_READWRITE);
message.command |= AD9954_REG_COMMAND_ALL;
message.taskHandle = TaskAD9954Handle;

readMessages(&message);

message.command = 0;
message.command &= ~(AD9954_REG_COMMAND_READWRITE);
message.command |= AD9954_REG_COMMAND_ALL;
message.taskHandle = TaskAD9954Handle;

readMessages(&message);

message.command = 0;
message.command &= ~(AD9954_REG_COMMAND_READWRITE);
message.command |= AD9954_REG_COMMAND_ALL;
message.taskHandle = TaskAD9954Handle;

readMessages(&message);

message.command = 0;
message.command &= ~(AD9954_REG_COMMAND_READWRITE);
message.command |= AD9954_REG_COMMAND_ALL;
message.taskHandle = TaskAD9954Handle;

readMessages(&message);
*/


void AD9954_DeInit(void)
{

}

void AD9954_SetFrequency(uint32_t freq)
{
	if((freq >= AD9954_MIN_FREQUENCY) && (freq <= AD9954_MAX_FREQUENCY))
	{
		AD9954Register.frequency = freq;
		double refFreq = AD9954Register.cfr2.REFCLK_Multiplier * AD9954_REFCLOCK;
		AD9954Register.ftw0.Frequency_Tuning_Word = (uint32_t)((freq/refFreq)*UINT32_MAX);
    	AD9954_WriteFTW(&AD9954Register.ftw0);
	}
}

uint32_t AD9954_GetFrequency(void)
{
	return AD9954Register.frequency;
}

void AD9954_Update(void) // update device
{
	// Update muss nur 2 ns lang sein
	HAL_GPIO_WritePin(AD9954_IOUPDATE_GPIO_Port, AD9954_IOUPDATE_PIN, GPIO_PIN_SET);
	HAL_GPIO_WritePin(AD9954_IOUPDATE_GPIO_Port, AD9954_IOUPDATE_PIN, GPIO_PIN_RESET);
}

void AD9954_Reset(void) // reset device
{
	AD9954_Delay(1);
	HAL_GPIO_WritePin(AD9954_RESET_GPIO_Port, AD9954_RESET_PIN, GPIO_PIN_SET);
    AD9954_Delay(1);
    HAL_GPIO_WritePin(AD9954_RESET_GPIO_Port, AD9954_RESET_PIN, GPIO_PIN_RESET);
    AD9954_Delay(1);
}

void AD9954_ResetSerial(void) // reset serial communication
{
	AD9954_Delay(1);
	HAL_GPIO_WritePin(AD9954_IOSYNC_GPIO_Port, AD9954_IOSYNC_PIN, GPIO_PIN_SET);
    AD9954_Delay(1);
    HAL_GPIO_WritePin(AD9954_IOSYNC_GPIO_Port, AD9954_IOSYNC_PIN, GPIO_PIN_RESET);	
    AD9954_Delay(1);
}

void AD9954_PowerDown(AD9954_STATE_ENUM state)
{
	AD9954_Delay(1);
	if(state == AD9954_SET) // enable power down mode
	{
		HAL_GPIO_WritePin(AD9954_PWRDNCTL_GPIO_Port, AD9954_PWRDNCTL_PIN, GPIO_PIN_SET);
	}
	else if(state == AD9954_RESET) // disable power down mode
	{
		HAL_GPIO_WritePin(AD9954_PWRDNCTL_GPIO_Port, AD9954_PWRDNCTL_PIN, GPIO_PIN_RESET);	
	}
    AD9954_Delay(1);	
}

void AD9954_ClkModeSelect(AD9954_STATE_ENUM state)
{
	AD9954_Delay(1);
	if(state == AD9954_SET) // enable on chip oszillator
	{
		HAL_GPIO_WritePin(AD9954_CLKMODESELECT_GPIO_Port, AD9954_CLKMODESELECT_PIN, GPIO_PIN_SET);
	}
	else if(state == AD9954_RESET) // disable on chip oszillator
	{
		HAL_GPIO_WritePin(AD9954_CLKMODESELECT_GPIO_Port, AD9954_CLKMODESELECT_PIN, GPIO_PIN_RESET);
	}
    AD9954_Delay(1);
}



void AD9954_WriteRegister(uint8_t regaddress, uint16_t regsize, uint8_t *data)
{
	uint32_t x;

	HAL_SPI_Transmit(&AD9954_SPI_HANDLE, &regaddress, 1, HAL_MAX_DELAY);
	HAL_SPI_Transmit(&AD9954_SPI_HANDLE, data, regsize, HAL_MAX_DELAY);
	if(regsize < 50)
	{
		printf("schreibe Registeraddresse = %d \n\r", regaddress);
		printf("Register groesse          = %d \n\r", regsize);
		printf("Daten: \r\n");
		for(x = 0; x < regsize; x ++)
		{
			printf("%ld = %d \n\r", x, data[x]);
		}
	}

}

void AD9954_ReadRegister(uint8_t regaddress, uint8_t regsize, uint8_t *data)
{
	uint32_t x;
	uint8_t regWrite;
	regWrite = regaddress | 0b10000000; // set MSB to 1 for read access

	HAL_SPI_Transmit(&AD9954_SPI_HANDLE, &regWrite, 1, HAL_MAX_DELAY); //
	// Vorgabe aus der HAL vor Receive erst mal deinit und init
	HAL_SPI_DeInit(&AD9954_SPI_HANDLE);
	HAL_SPI_Init(&AD9954_SPI_HANDLE);
	HAL_SPI_Receive(&AD9954_SPI_HANDLE, data, regsize, HAL_MAX_DELAY);

	printf("lese Registeraddresse = %d \n\r", regaddress);
	printf("Register groesse      = %d \n\r", regsize);
	printf("Daten: \r\n");
	for(x = 0; x < regsize; x ++)
	{
		printf("%ld = %d \n\r", x, data[x]);
	}
}

void AD9954_ReadAll(void)
{
	//processData
	AD9954_ReadCFR1(&AD9954Register.cfr1);
	AD9954_ReadCFR2(&AD9954Register.cfr2);
	AD9954_ReadASF(&AD9954Register.asf);
	AD9954_ReadARR(&AD9954Register.arr);
	AD9954_ReadFTW(&AD9954Register.ftw0);
	AD9954_ReadFTW(&AD9954Register.ftw1);
	AD9954_ReadPOW0(&AD9954Register.pow0);
	if(AD9954Register.cfr1.Linear_Sweep_Enable == 0)
	{
		/*
		HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_RESET);
		HAL_GPIO_WritePin(AD9954_PS1_GPIO_Port, AD9954_PS1_PIN, GPIO_PIN_RESET);
		AD9954_ReadRSCW(&AD9954Register.rscw0);

		HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_SET);
		HAL_GPIO_WritePin(AD9954_PS1_GPIO_Port, AD9954_PS1_PIN, GPIO_PIN_RESET);
		AD9954_ReadRSCW(&AD9954Register.rscw1);

		HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_RESET);
		HAL_GPIO_WritePin(AD9954_PS1_GPIO_Port, AD9954_PS1_PIN, GPIO_PIN_SET);
		AD9954_ReadRSCW(&AD9954Register.rscw2);

		HAL_GPIO_WritePin(AD9954_PS0_GPIO_Port, AD9954_PS0_PIN, GPIO_PIN_SET);
		HAL_GPIO_WritePin(AD9954_PS1_GPIO_Port, AD9954_PS1_PIN, GPIO_PIN_SET);
		AD9954_ReadRSCW(&AD9954Register.rscw3);
		*/
	}
	else if(AD9954Register.cfr1.Linear_Sweep_Enable == 1)
	{
		AD9954_ReadNLSCW(&AD9954Register.nlscw);
		AD9954_ReadPLSCW(&AD9954Register.plscw);
	}
	// RAM fehlt noch kommt aber
}

void AD9954_WriteAll(void)
{
	//processData
	AD9954_WriteCFR1(&AD9954Register.cfr1);
	AD9954_WriteCFR2(&AD9954Register.cfr2);
	AD9954_WriteASF(&AD9954Register.asf);
	AD9954_WriteARR(&AD9954Register.arr);
	AD9954_WriteFTW(&AD9954Register.ftw0);
	AD9954_WriteFTW(&AD9954Register.ftw1);
	AD9954_WritePOW0(&AD9954Register.pow0);
	if(AD9954Register.cfr1.Linear_Sweep_Enable == 0)
	{
		AD9954_WriteRSCW(&AD9954Register.rscw0);
		AD9954_WriteRSCW(&AD9954Register.rscw1);
		AD9954_WriteRSCW(&AD9954Register.rscw2);
		AD9954_WriteRSCW(&AD9954Register.rscw3);
	}
	else if(AD9954Register.cfr1.Linear_Sweep_Enable == 1)
	{
		AD9954_WriteNLSCW(&AD9954Register.nlscw);
		AD9954_WritePLSCW(&AD9954Register.plscw);
	}
	// RAM fehlt noch kommt aber
}


void AD9954_Test(void)
{
	// read Controll Function Register
	uint8_t receiveBuffer[10];
	memset(receiveBuffer, 0x00, 10);

	printf("\n\r readRegister CFR2:\n\r");
	AD9954_ReadRegister(CFR2_REGISTER_ADDRESS, CRF2_REGISTER_SIZE, receiveBuffer);
}

void AD9954_ReadCFR1(AD9954_reg_cfr1_struct_t *reg)
{

	AD9954_ReadRegister(reg->adress, reg->size, reg->data);

	uint32_t regData = 0;
	regData = ((reg->data[0] << 24) | (reg->data[1] << 16) | (reg->data[2] << 8) | (reg->data[3] << 0));

	reg->SYNC_CLK_disable 				= ((regData & CFR1_SYNC_CLK_DISABLE) 			>> (CFR1_SYNC_CLK_DISABLE_Pos));
	reg->Linear_Sweep_No_Dwell 			= ((regData & CFR1_LINEAR_SWEEP_NO_DWELL) 		>> (CFR1_LINEAR_SWEEP_NO_DWELL_Pos));
	reg->External_Power_Down_Mode 		= ((regData & CFR1_EXTERNAL_POWER_DOWN_MODE) 	>> (CFR1_EXTERNAL_POWER_DOWN_MODE_Pos));
	reg->Clock_Input_Power_Down 		= ((regData & CFR1_CLOCK_INPUT_POWER_DOWN) 		>> (CFR1_CLOCK_INPUT_POWER_DOWN_Pos));
	reg->DAC_Power_Down 				= ((regData & CFR1_DAC_POWER_DOWN) 				>> (CFR1_DAC_POWER_DOWN_Pos));
	reg->Comp_Power_Down 				= ((regData & CFR1_COMP_POWER_DOWN) 			>> (CFR1_COMP_POWER_DOWN_Pos));
	reg->Digital_Power_Down 			= ((regData & CFR1_DIGITAL_POWER_DOWN) 			>> (CFR1_DIGITAL_POWER_DOWN_Pos));
	reg->LSB_First 						= ((regData & CFR1_LSB_FIRST) 					>> (CFR1_LSB_FIRST_Pos));
	reg->SDIO_Input_Only 				= ((regData & CFR1_SDIO_INPUT_ONLY) 			>> (CFR1_SDIO_INPUT_ONLY_Pos));
	reg->Clear_Phase_Accum 				= ((regData & CFR1_CLEAR_PHASE_ACCUM) 			>> (CFR1_CLEAR_PHASE_ACCUM_Pos));
	reg->Clear_Freq_Accum				= ((regData & CFR1_CLEAR_FREQ_ACCUM) 			>> (CFR1_CLEAR_FREQ_ACCUM_Pos));
	reg->Sine_Cosine_Select 			= ((regData & CFR1_SINE_COSINE_SELECT) 			>> (CFR1_SINE_COSINE_SELECT_Pos));
	reg->Auto_Clr_Phase_Accum 			= ((regData & CFR1_AUTOCLR_PHASE_ACCUM) 		>> (CFR1_AUTOCLR_PHASE_ACCUM_Pos));
	reg->Auto_Clr_Freq_Accum 			= ((regData & CFR1_AUTOCLR_FREQ_ACCUM) 			>> (CFR1_AUTOCLR_FREQ_ACCUM_Pos));
	reg->SRR_Load_Enable 				= ((regData & CFR1_SRR_LOAD_ENABLE) 			>> (CFR1_SRR_LOAD_ENABLE_Pos));
	reg->Linear_Sweep_Enable 			= ((regData & CFR1_LINEAR_SWEEP_ENABLE) 		>> (CFR1_LINEAR_SWEEP_ENABLE_Pos));
	reg->Software_Manual_Sync 			= ((regData & CFR1_SOFTWARE_MANUAL_SYNC) 		>> (CFR1_SOFTWARE_MANUAL_SYNC_Pos));
	reg->Automatic_Sync_Enable 			= ((regData & CFR1_AUTOMATIC_SYNC_ENABLE) 		>> (CFR1_AUTOMATIC_SYNC_ENABLE_Pos));
	reg->Auto_OSK_Enable 				= ((regData & CFR1_AUTO_OSK_ENABLE) 			>> (CFR1_AUTO_OSK_ENABLE_Pos));
	reg->OSK_Enable 					= ((regData & CFR1_OSK_ENABLE) 					>> (CFR1_OSK_ENABLE_Pos));
	reg->Load_ARR_Control 				= ((regData & CFR1_LOAD_ARR_CONTROLL) 			>> (CFR1_LOAD_ARR_CONTROLL_Pos));
	reg->Internal_Profile_Control 		= ((regData & CFR1_INTERNAL_PROFILE_CONTROLL) 	>> (CFR1_INTERNAL_PROFILE_CONTROLL_Pos));
	reg->RAM_Destination 				= ((regData & CFR1_RAM_DESTINATION) 			>> (CFR1_RAM_DESTINATION_Pos));
	reg->RAM_Enable 					= ((regData & CFR1_RAM_ENABLE) 					>> (CFR1_RAM_ENABLE_Pos));
}

void AD9954_ReadCFR2(AD9954_reg_cfr2_struct_t *reg)
{
	AD9954_ReadRegister(reg->adress, reg->size, reg->data);

	uint32_t regData = 0;
	regData = ((reg->data[0] << 16) | (reg->data[1] << 8) | (reg->data[2] << 0));

	reg->Charge_Pump_Current			= ((regData & CFR2_CHARGE_PUMP_CURRENT) 			>> (CFR2_CHARGE_PUMP_CURRENT_Pos));
	reg->VCO_Range						= ((regData & CFR2_VCO_RANGE) 						>> (CFR2_VCO_RANGE_Pos));
	reg->REFCLK_Multiplier				= ((regData & CFR2_REFCLK_MULTIPLIER) 				>> (CFR2_REFCLK_MULTIPLIER_Pos));
	reg->XTAL_Out_Enable				= ((regData & CFR2_XTAL_OUT_ENABLE) 				>> (CFR2_XTAL_OUT_ENABLE_Pos));
	reg->Hardware_Manual_Sync_Enable	= ((regData & CFR2_HARDWARE_MANUAL_SYNC_ENABLE) 	>> (CFR2_HARDWARE_MANUAL_SYNC_ENABLE_Pos));
	reg->High_Speed_Sync_Enable			= ((regData & CFR2_HIGH_SPEED_SYNC_ENABLE) 			>> (CFR2_HIGH_SPEED_SYNC_ENABLE_Pos));
}

void AD9954_ReadASF(AD9954_reg_asf_struct_t *reg)
{
	AD9954_ReadRegister(reg->adress, reg->size, reg->data);

	uint32_t regData = 0;
	regData = ((reg->data[0] << 8) | (reg->data[1] << 0));

	reg->Amplitude_Scale_Factor			= ((regData & ASF_AMPLITUDE_SCALE_FACTOR) 					>> (ASF_AMPLITUDE_SCALE_FACTOR_Pos));
	reg->Auto_Ramp_Rate_Speed_Controll	= ((regData & ASF_AUTO_RAMP_RATE_SPEED_CONTROLL_ENABLE)		>> (ASF_AUTO_RAMP_RATE_SPEED_CONTROLL_Pos));
}

void AD9954_ReadARR(AD9954_reg_arr_struct_t *reg)
{

	AD9954_ReadRegister(reg->adress, reg->size, reg->data);

	uint32_t regData = 0;
	regData = ((reg->data[0] << 0));

	reg->Amplitude_Ramp_Rate			= ((regData & ARR_AMPLITUDE_RAMP_RATE) 					>> (ARR_AMPLITUDE_RAMP_RATE_Pos));
}

void AD9954_ReadFTW(AD9954_reg_ftw_struct_t *reg)
{

	AD9954_ReadRegister(reg->adress, reg->size, reg->data);

	uint32_t regData = 0;
	regData = ((reg->data[0] << 24) | (reg->data[1] << 16) | (reg->data[2] << 8) | (reg->data[3] << 0));

	reg->Frequency_Tuning_Word			= ((regData & FTW0_FREQUENCY_TUNING_WORD0) 					>> (FTW0_FREQUENCY_TUNING_WORD0_Pos));
}

void AD9954_ReadPOW0(AD9954_reg_pow_struct_t *reg)
{

	AD9954_ReadRegister(reg->adress, reg->size, reg->data);

	uint32_t regData = 0;
	regData = ((reg->data[0] << 8) | (reg->data[1] << 0));

	reg->Phase_Offset_Word			= ((regData & POW0_PHASE_OFFSET_WORD) 					>> (POW0_PHASE_OFFSET_WORD_Pos));
}

void AD9954_ReadNLSCW(AD9954_reg_nlscw_struct_t *reg)
{
	AD9954_ReadRegister(reg->adress, reg->size, reg->data);

	uint32_t regData1 = 0;
	uint8_t regData2 = 0;
	regData1 = ((reg->data[0] << 24) | (reg->data[1] << 16) | (reg->data[2] << 8) | (reg->data[3] << 0));
	regData2 = reg->data[4];

	reg->Falling_Delta_Frequency_Tuning_Word = regData1;
	reg->Falling_Sweep_Ramp_Word			 = regData2;
}

void AD9954_ReadPLSCW(AD9954_reg_plscw_struct_t *reg)
{
	AD9954_ReadRegister(reg->adress, reg->size, reg->data);

	uint32_t regData1 = 0;
	uint8_t regData2 = 0;
	regData1 = ((reg->data[0] << 24) | (reg->data[1] << 16) | (reg->data[2] << 8) | (reg->data[3] << 0));
	regData2 = reg->data[4];

	reg->Rising_Delta_Frequency_Tuning_Word = regData1;
	reg->Rising_Sweep_Ramp_Word			 	= regData2;
}

void AD9954_ReadRSCW(AD9954_reg_rscw_struct_t *reg)
{

	uint8_t regData1 = 0;
	uint8_t regData2 = 0;
	uint8_t regData3 = 0;
	uint8_t regData4 = 0;
	uint8_t regData5 = 0;

	AD9954_ReadRegister(reg->adress, reg->size, reg->data);

	reg->data[0] = regData1;
	reg->data[1] = regData2;
    reg->data[2] = regData3;
    reg->data[3] = regData4;
    reg->data[4] = regData5;

	regData1 = regData1 | ((reg->RAM_Beginning_Address & 0b0000001111111111) >> 6);
	regData1 = regData1 | ((reg->no_Dwell_Active & 0x01) << 4);
	regData1 = regData1 | ((reg->RAM_Mode & 0b00000111) << 5);
	regData2 = regData2 | ((reg->RAM_Final_Address & 0b0000001111111111) >> 8);
	regData2 = regData2 | ((reg->RAM_Beginning_Address & 0b0000000000111111) << 2);
	regData3 = regData3 | ((reg->RAM_Final_Address & 0b0000000011111111));
	regData4 = regData4 | ((reg->RAM_Ramp_Rate & 0b1111111100000000) >> 8);
	regData5 = regData5 | ((reg->RAM_Ramp_Rate & 0b0000000011111111));

	reg->no_Dwell_Active = ((regData1 & 0b00010000) >> 4);
	reg->RAM_Mode = ((regData1 & 0b11100000) >> 5);
	reg->RAM_Beginning_Address = ((regData1 & 0b00001111) << 6) | ((regData2 & 0b11111100) >> 2);
	reg->RAM_Final_Address = ((regData2 & 0b00000011) << 8) | (regData3);
	reg->RAM_Ramp_Rate = (regData4 << 8) | (regData5);

	/*
	uint32_t regData1 = 0;
	uint16_t regData2 = 0;

	regData1 = ((reg->data[0] << 24) | (reg->data[1] << 16) | (reg->data[2] << 8) | (reg->data[3] << 0));
	regData2 = ((reg->data[4] << 8) | (reg->data[3] << 0));

	reg->no_Dwell_Active			= ((regData1 & RSCW0_NO_DWELL_ACTIVE) 						>> (RSCW0_NO_DWELL_ACTIVE_Pos));
	reg->RAM_Mode					= ((regData1 & RSCW0_RAM_SEGMENT0_MODE_CONTROLL) 			>> (RSCW0_RAM_SEGMENT0_MODE_CONTROLL_Pos));
	reg->RAM_Beginning_Address		= (((regData1 & RSCW0_RAM_SEGMENT0_BEGINNING_ADDRESS_5_0) 	>> (RSCW0_RAM_SEGMENT0_BEGINNING_ADDRESS_5_0_Pos)) 	|  ((regData1 & RSCW0_RAM_SEGMENT0_BEGINNING_ADDRESS_9_6) 	<< 6));
	reg->RAM_Final_Address			= (((regData1 & RSCW0_RAM_SEGMENT0_FINAL_ADDRESS_7_0) 		>> (RSCW0_RAM_SEGMENT0_FINAL_ADDRESS_7_0_Pos)) 		|  (regData1 & RSCW0_RAM_SEGMENT0_FINAL_ADDRESS_9_8));
	reg->RAM_Ramp_Rate				= ((regData2));
	*/

}


void AD9954_WriteCFR1(AD9954_reg_cfr1_struct_t *reg)
{

	uint32_t regData = 0;

	regData = regData | ((reg->SYNC_CLK_disable 		<< CFR1_SYNC_CLK_DISABLE_Pos) 			& CFR1_SYNC_CLK_DISABLE);
	regData = regData | ((reg->Linear_Sweep_No_Dwell 	<< CFR1_LINEAR_SWEEP_NO_DWELL_Pos) 		& CFR1_LINEAR_SWEEP_NO_DWELL);
	regData = regData | ((reg->External_Power_Down_Mode << CFR1_EXTERNAL_POWER_DOWN_MODE_Pos) 	& CFR1_EXTERNAL_POWER_DOWN_MODE);
	regData = regData | ((reg->Clock_Input_Power_Down 	<< CFR1_CLOCK_INPUT_POWER_DOWN_Pos) 	& CFR1_CLOCK_INPUT_POWER_DOWN);
	regData = regData | ((reg->DAC_Power_Down 			<< CFR1_DAC_POWER_DOWN_Pos) 			& CFR1_DAC_POWER_DOWN);
	regData = regData | ((reg->Comp_Power_Down 			<< CFR1_COMP_POWER_DOWN_Pos) 			& CFR1_COMP_POWER_DOWN);
	regData = regData | ((reg->Digital_Power_Down 		<< CFR1_DIGITAL_POWER_DOWN_Pos) 		& CFR1_DIGITAL_POWER_DOWN);
	regData = regData | ((reg->LSB_First 				<< CFR1_LSB_FIRST_Pos) 					& CFR1_LSB_FIRST);
	regData = regData | ((reg->SDIO_Input_Only 			<< CFR1_SDIO_INPUT_ONLY_Pos) 			& CFR1_SDIO_INPUT_ONLY);
	regData = regData | ((reg->Clear_Phase_Accum 		<< CFR1_CLEAR_PHASE_ACCUM_Pos) 			& CFR1_CLEAR_PHASE_ACCUM);
	regData = regData | ((reg->Clear_Freq_Accum 		<< CFR1_CLEAR_FREQ_ACCUM_Pos) 			& CFR1_CLEAR_FREQ_ACCUM);
	regData = regData | ((reg->Sine_Cosine_Select 		<< CFR1_SINE_COSINE_SELECT_Pos) 		& CFR1_SINE_COSINE_SELECT);
	regData = regData | ((reg->Auto_Clr_Phase_Accum 	<< CFR1_AUTOCLR_PHASE_ACCUM_Pos) 		& CFR1_AUTOCLR_PHASE_ACCUM);
	regData = regData | ((reg->Auto_Clr_Freq_Accum 		<< CFR1_AUTOCLR_FREQ_ACCUM_Pos) 		& CFR1_AUTOCLR_FREQ_ACCUM);
	regData = regData | ((reg->SRR_Load_Enable 			<< CFR1_SRR_LOAD_ENABLE_Pos) 			& CFR1_SRR_LOAD_ENABLE);
	regData = regData | ((reg->Linear_Sweep_Enable 		<< CFR1_LINEAR_SWEEP_ENABLE_Pos) 		& CFR1_LINEAR_SWEEP_ENABLE);
	regData = regData | ((reg->Software_Manual_Sync 	<< CFR1_SOFTWARE_MANUAL_SYNC_Pos) 		& CFR1_SOFTWARE_MANUAL_SYNC);
	regData = regData | ((reg->Automatic_Sync_Enable 	<< CFR1_AUTOMATIC_SYNC_ENABLE_Pos) 		& CFR1_AUTOMATIC_SYNC_ENABLE);
	regData = regData | ((reg->Auto_OSK_Enable 			<< CFR1_AUTO_OSK_ENABLE_Pos) 			& CFR1_AUTO_OSK_ENABLE);
	regData = regData | ((reg->OSK_Enable 				<< CFR1_OSK_ENABLE_Pos) 				& CFR1_OSK_ENABLE);
	regData = regData | ((reg->Load_ARR_Control 		<< CFR1_LOAD_ARR_CONTROLL_Pos) 			& CFR1_LOAD_ARR_CONTROLL);
	regData = regData | ((reg->Internal_Profile_Control	<< CFR1_INTERNAL_PROFILE_CONTROLL_Pos) 	& CFR1_INTERNAL_PROFILE_CONTROLL);
	regData = regData | ((reg->RAM_Destination 			<< CFR1_RAM_DESTINATION_Pos) 			& CFR1_RAM_DESTINATION);
	regData = regData | ((reg->RAM_Enable 				<< CFR1_RAM_ENABLE_Pos) 				& CFR1_RAM_ENABLE);

	reg->data[0] = (regData & 0xFF000000) >> 24;
    reg->data[1] = (regData & 0x00FF0000) >> 16;
    reg->data[2] = (regData & 0x0000FF00) >> 8;
    reg->data[3] = (regData & 0x000000FF) >> 0;

    // Write
    AD9954_WriteRegister(reg->adress, reg->size, reg->data);

}

void AD9954_WriteCFR2(AD9954_reg_cfr2_struct_t *reg)
{

	uint32_t regData = 0;

	regData = regData | ((reg->Charge_Pump_Current 			<< CFR2_CHARGE_PUMP_CURRENT_Pos) 			& CFR2_CHARGE_PUMP_CURRENT);
	regData = regData | ((reg->VCO_Range 					<< CFR2_VCO_RANGE_Pos) 						& CFR2_VCO_RANGE);
	regData = regData | ((reg->REFCLK_Multiplier 			<< CFR2_REFCLK_MULTIPLIER_Pos) 				& CFR2_REFCLK_MULTIPLIER);
	regData = regData | ((reg->XTAL_Out_Enable 				<< CFR2_XTAL_OUT_ENABLE_Pos) 				& CFR2_XTAL_OUT_ENABLE);
	regData = regData | ((reg->Hardware_Manual_Sync_Enable 	<< CFR2_HARDWARE_MANUAL_SYNC_ENABLE_Pos) 	& CFR2_HARDWARE_MANUAL_SYNC_ENABLE);
	regData = regData | ((reg->High_Speed_Sync_Enable 		<< CFR2_HIGH_SPEED_SYNC_ENABLE_Pos) 		& CFR2_HIGH_SPEED_SYNC_ENABLE);

    reg->data[0] = (regData & 0x00FF0000) >> 16;
    reg->data[1] = (regData & 0x0000FF00) >> 8;
    reg->data[2] = (regData & 0x000000FF) >> 0;

    // Write
    AD9954_WriteRegister(reg->adress, reg->size, reg->data);

}



void AD9954_WriteASF(AD9954_reg_asf_struct_t *reg)
{

	uint32_t regData = 0;

	regData = regData | ((reg->Amplitude_Scale_Factor 			<< ASF_AMPLITUDE_SCALE_FACTOR_Pos) 			& ASF_AMPLITUDE_SCALE_FACTOR);
	regData = regData | ((reg->Auto_Ramp_Rate_Speed_Controll 	<< ASF_AUTO_RAMP_RATE_SPEED_CONTROLL_Pos) 	& ASF_AUTO_RAMP_RATE_SPEED_CONTROLL_ENABLE);

    reg->data[0] = (regData & 0x0000FF00) >> 8;
    reg->data[1] = (regData & 0x000000FF) >> 0;

    // Write
    AD9954_WriteRegister(reg->adress, reg->size, reg->data);

}

void AD9954_WriteARR(AD9954_reg_arr_struct_t *reg)
{
	uint32_t regData = 0;

	regData = regData | ((reg->Amplitude_Ramp_Rate 	<< ARR_AMPLITUDE_RAMP_RATE_Pos) 	& ARR_AMPLITUDE_RAMP_RATE);

    reg->data[0] = (regData & 0x000000FF) >> 0;

    // Write
    AD9954_WriteRegister(reg->adress, reg->size, reg->data);
}

void AD9954_WriteFTW(AD9954_reg_ftw_struct_t *reg)
{

	uint32_t regData = 0;

	regData = regData | ((reg->Frequency_Tuning_Word  << FTW0_FREQUENCY_TUNING_WORD0_Pos) 	& FTW0_FREQUENCY_TUNING_WORD0);

	reg->data[0] = (regData & 0xFF000000) >> 24;
    reg->data[1] = (regData & 0x00FF0000) >> 16;
    reg->data[2] = (regData & 0x0000FF00) >> 8;
    reg->data[3] = (regData & 0x000000FF) >> 0;


    // Write
    AD9954_WriteRegister(reg->adress, reg->size, reg->data);

}




void AD9954_WritePOW0(AD9954_reg_pow_struct_t *reg)
{
	uint32_t regData = 0;

	regData = regData | ((reg->Phase_Offset_Word 			<< POW0_PHASE_OFFSET_WORD_Pos) 			& POW0_PHASE_OFFSET_WORD);

    reg->data[0] = (regData & 0x0000FF00) >> 8;
    reg->data[1] = (regData & 0x000000FF) >> 0;

    // Write
    AD9954_WriteRegister(reg->adress, reg->size, reg->data);

}

void AD9954_WriteNLSCW(AD9954_reg_nlscw_struct_t *reg)
{

	uint32_t regData1 = 0;
	uint8_t regData2 = 0;

	regData1 = reg->Falling_Delta_Frequency_Tuning_Word;
	regData2 = reg->Falling_Sweep_Ramp_Word;

	reg->data[0] = (regData1 & 0xFF000000) >> 24;
    reg->data[1] = (regData1 & 0x00FF0000) >> 16;
    reg->data[2] = (regData1 & 0x0000FF00) >> 8;
    reg->data[3] = (regData1 & 0x000000FF) >> 0;

    reg->data[4] = (regData2 & 0x000000FF) >> 0;

    // Write
    AD9954_WriteRegister(reg->adress, reg->size, reg->data);


}

void AD9954_WritePLSCW(AD9954_reg_plscw_struct_t *reg)
{

	uint32_t regData1 = 0;
	uint8_t regData2 = 0;

	regData1 = reg->Rising_Delta_Frequency_Tuning_Word;
	regData2 = reg->Rising_Sweep_Ramp_Word;

	reg->data[0] = (regData1 & 0xFF000000) >> 24;
    reg->data[1] = (regData1 & 0x00FF0000) >> 16;
    reg->data[2] = (regData1 & 0x0000FF00) >> 8;
    reg->data[3] = (regData1 & 0x000000FF) >> 0;

    reg->data[4] = (regData2 & 0x000000FF) >> 0;

    // Write
    AD9954_WriteRegister(reg->adress, reg->size, reg->data);

}

void AD9954_WriteRSCW(AD9954_reg_rscw_struct_t *reg)
{

	uint8_t regData1 = 0;
	uint8_t regData2 = 0;
	uint8_t regData3 = 0;
	uint8_t regData4 = 0;
	uint8_t regData5 = 0;

	regData1 = regData1 | ((reg->RAM_Beginning_Address & 0b0000001111111111) >> 6);
	regData1 = regData1 | ((reg->no_Dwell_Active & 0x01) << 4);
	regData1 = regData1 | ((reg->RAM_Mode & 0b00000111) << 5);
	regData2 = regData2 | ((reg->RAM_Final_Address & 0b0000001111111111) >> 8);
	regData2 = regData2 | ((reg->RAM_Beginning_Address & 0b0000000000111111) << 2);
	regData3 = regData3 | ((reg->RAM_Final_Address & 0b0000000011111111));
	regData4 = regData4 | ((reg->RAM_Ramp_Rate & 0b1111111100000000) >> 8);
	regData5 = regData5 | ((reg->RAM_Ramp_Rate & 0b0000000011111111));

	/*
	uint32_t regData1 = 0;
	uint8_t regData2 = 0;


	regData1 = regData1 | ((reg->no_Dwell_Active << RSCW0_NO_DWELL_ACTIVE_Pos) & RSCW0_NO_DWELL_ACTIVE);
	regData1 = regData1 | ((reg->RAM_Mode << RSCW0_RAM_SEGMENT0_MODE_CONTROLL_Pos) & RSCW0_RAM_SEGMENT0_MODE_CONTROLL);
	regData1 = regData1 | ((reg->RAM_Ramp_Rate & 0xFF00) << 16);
	regData1 = regData1 | ((reg->RAM_Beginning_Address & 0x3C0) >> 6);
	regData1 = regData1 | ((reg->RAM_Beginning_Address & 0x1F) << 10);
	regData1 = regData1 | ((reg->RAM_Final_Address & 0x300));
	regData1 = regData1 | ((reg->RAM_Final_Address & 0xFF) << 16);

	regData2 = regData2 |  ((reg->RAM_Ramp_Rate & 0x00FF));

	reg->data[0] = (regData2 & 0x000000FF) >> 0;

	reg->data[1] = (regData1 & 0xFF000000) >> 24;
    reg->data[2] = (regData1 & 0x00FF0000) >> 16;
    reg->data[3] = (regData1 & 0x0000FF00) >> 8;
    reg->data[4] = (regData1 & 0x000000FF) >> 0;
	*/

	reg->data[0] = regData1;
	reg->data[1] = regData2;
    reg->data[2] = regData3;
    reg->data[3] = regData5;
    reg->data[4] = regData4;

    printf("RSCW Value = %x%x%x%x%x \r\n", regData4,regData5,regData3,regData2,regData1);

    // Write
    AD9954_WriteRegister(reg->adress, reg->size, reg->data);

}


osThreadId_t readMessages(AD99554_message_struct_t *message)
{
	  if(!(message->command & AD9954_REG_COMMAND_READWRITE))
	  {
		  if(message->command & AD9954_REG_COMMAND_ALL) AD9954_ReadAll();
		  if(message->command & AD9954_REG_COMMAND_CFR1) AD9954_ReadCFR1(&AD9954Register.cfr1);
		  if(message->command & AD9954_REG_COMMAND_CFR2) AD9954_ReadCFR2(&AD9954Register.cfr2);
		  if(message->command & AD9954_REG_COMMAND_ASF) AD9954_ReadASF(&AD9954Register.asf);
		  if(message->command & AD9954_REG_COMMAND_ARR) AD9954_ReadARR(&AD9954Register.arr);
		  if(message->command & AD9954_REG_COMMAND_FTW0) AD9954_ReadFTW(&AD9954Register.ftw0);
		  if(message->command & AD9954_REG_COMMAND_FTW1) AD9954_ReadFTW(&AD9954Register.ftw1);
		  if(message->command & AD9954_REG_COMMAND_POW0) AD9954_ReadPOW0(&AD9954Register.pow0);
		  if(AD9954Register.cfr1.Linear_Sweep_Enable == 0)
		  {
			  /*
			  if(message->command & AD9954_REG_COMMAND_RSCW0) AD9954_ReadRSCW(&AD9954Register.rscw0);
			  if(message->command & AD9954_REG_COMMAND_RSCW1) AD9954_ReadRSCW(&AD9954Register.rscw1);
			  if(message->command & AD9954_REG_COMMAND_RSCW2) AD9954_ReadRSCW(&AD9954Register.rscw2);
			  if(message->command & AD9954_REG_COMMAND_RSCW3) AD9954_ReadRSCW(&AD9954Register.rscw3);
		   	  */
		  }
		  else if(AD9954Register.cfr1.Linear_Sweep_Enable == 1)
		  {
			  if(message->command & AD9954_REG_COMMAND_NLSCW) AD9954_ReadNLSCW(&AD9954Register.nlscw);
			  if(message->command & AD9954_REG_COMMAND_PLSCW) AD9954_ReadPLSCW(&AD9954Register.plscw);
		  }
	  }
	  if((message->command & AD9954_REG_COMMAND_READWRITE))
	  {
		  if(message->command & AD9954_REG_COMMAND_ALL) AD9954_WriteAll();
		  if(message->command & AD9954_REG_COMMAND_CFR1) AD9954_WriteCFR1(&AD9954Register.cfr1);
		  if(message->command & AD9954_REG_COMMAND_CFR2) AD9954_WriteCFR2(&AD9954Register.cfr2);
		  if(message->command & AD9954_REG_COMMAND_ASF) AD9954_WriteASF(&AD9954Register.asf);
		  if(message->command & AD9954_REG_COMMAND_ARR) AD9954_WriteARR(&AD9954Register.arr);
		  if(message->command & AD9954_REG_COMMAND_FTW0) AD9954_WriteFTW(&AD9954Register.ftw0);
		  if(message->command & AD9954_REG_COMMAND_FTW1) AD9954_WriteFTW(&AD9954Register.ftw1);
		  if(message->command & AD9954_REG_COMMAND_POW0) AD9954_WritePOW0(&AD9954Register.pow0);
		  if(AD9954Register.cfr1.Linear_Sweep_Enable == 0)
		  {
			  if(message->command & AD9954_REG_COMMAND_RSCW0) AD9954_WriteRSCW(&AD9954Register.rscw0);
			  if(message->command & AD9954_REG_COMMAND_RSCW1) AD9954_WriteRSCW(&AD9954Register.rscw1);
			  if(message->command & AD9954_REG_COMMAND_RSCW2) AD9954_WriteRSCW(&AD9954Register.rscw2);
			  if(message->command & AD9954_REG_COMMAND_RSCW3) AD9954_WriteRSCW(&AD9954Register.rscw3);
		  }
		  else if(AD9954Register.cfr1.Linear_Sweep_Enable == 1)
		  {
			  if(message->command & AD9954_REG_COMMAND_NLSCW) AD9954_WriteNLSCW(&AD9954Register.nlscw);
			  if(message->command & AD9954_REG_COMMAND_PLSCW) AD9954_WritePLSCW(&AD9954Register.plscw);
		  }
		  if(message->command & AD9954_REG_COMMAND_FREQ) AD9954_SetFrequency(AD9954Register.frequency);

		  AD9954_Update();
		  // zu Testzwecken mit readback;
		  //AD9954_ReadAll();
	  }
	  return message->taskHandle;
}























