#include "eeprom.h"
#include "main.h"
#include "stm32l4xx_hal_flash_ex.h"

/*
uin8_t backupArray[126] = SNAKE_HIGHSCORE_LOW
uin8_t backupArray[127] = SNAKE_HIGHSCORE_HIGH
*/

// ACHTUNG Alignement überall

#define EEPROM_SIZE	0x80 /*must be multiple of 8*/
#define EEPROM_SIZE_DW EEPROM_SIZE/8

__attribute__((__section__(".eeprom_data"))) const uint8_t backupArray[EEPROM_SIZE];

typedef union
{
	uint8_t eeprom_byte[EEPROM_SIZE];
	uint64_t eeprom_dword[EEPROM_SIZE_DW];
}eeprom_union_t;

eeprom_union_t backupArrayRAM;



void EEPROM_Read(uint8_t adr, uint8_t * data, uint8_t size)
{
	uint32_t x = 0;
	if(adr + size > EEPROM_SIZE)
	{
		return;
	}
	else
	{
		//flashRead(backupArray, backupArray, EEPROM_SIZE);
		for(x = 0; x < EEPROM_SIZE; x ++)
		{
			backupArrayRAM.eeprom_byte[x] = backupArray[x];
		}
		for(x = 0; x < size; x ++)
		{
			data[x] = backupArrayRAM.eeprom_byte[x + adr];
		}
	}
}

/*
void EEPROM_Write(uint16_t adr, uint8_t * values, uint16_t size)
{
	uint32_t x = 0;
	if(adr + size > EEPROM_SIZE)
	{
		return;
	}
	else
	{
		//flashRead(backupArray, backupArray, EEPROM_SIZE);


		//int i = ADDR_FLASH_PAGE_16
		for(x = 0; x < EEPROM_SIZE; x ++)
		{
			backupArrayRAM.eeprom_byte[x] = backupArray[x];
		}

		for(x = 0; x < size; x ++)
		{
			backupArrayRAM.eeprom_byte[x + adr] = values[x];
		}


		if(HAL_FLASH_Unlock() != HAL_OK)
		{
			while(1);
		}
		//if(HAL_FLASH_Program(FLASH_TYPEPROGRAM_DOUBLEWORD, (uint32_t)&backupArray[0], backupArrayRAM.eeprom_dword[0]) != HAL_OK)
		if(HAL_FLASH_Program(FLASH_TYPEPROGRAM_FAST, 0x080FFF80, (uint32_t)&backupArrayRAM.eeprom_byte[0]) != HAL_OK)
		{
			while(1);
		}
		if(HAL_FLASH_Program(FLASH_TYPEPROGRAM_FAST_AND_LAST, 0x080FFFC0, (uint32_t)&backupArrayRAM.eeprom_byte[4]) != HAL_OK)
		{
			while(1);
		}
		if(HAL_FLASH_Lock() != HAL_OK)
		{
			while(1);
		}


		//flashWrite(backupArrayRAM, backupArray, EEPROM_SIZE);
	}
}
*/

void EEPROM_Write(uint16_t adr, uint8_t * values, uint16_t size)
{
	uint32_t x = 0;
	uint32_t Address = 0;
	uint32_t PAGEError = 0;
	/*Variable used for Erase procedure*/
	FLASH_EraseInitTypeDef EraseInitStruct;

	if(adr + size > EEPROM_SIZE)
	{
		return;
	}
	else
	{


		for(x = 0; x < EEPROM_SIZE; x ++)
		{
			backupArrayRAM.eeprom_byte[x] = backupArray[x];
		}

		for(x = 0; x < size; x ++)
		{
			backupArrayRAM.eeprom_byte[x + adr] = values[x];
		}


		/*Unlock Flash*/
		HAL_FLASH_Unlock();

		/* Erase the user Flash area */


		/* Clear OPTVERR bit set on virgin samples */
		__HAL_FLASH_CLEAR_FLAG(FLASH_FLAG_OPTVERR);

		/*Fill struct*/
		EraseInitStruct.TypeErase   = FLASH_TYPEERASE_PAGES;
		EraseInitStruct.Banks       = 2;
		EraseInitStruct.Page        = 255;
		EraseInitStruct.NbPages     = 1;

		/* Note: If an erase operation in Flash memory also concerns data in the data or instruction cache,
		you have to make sure that these data are rewritten before they are accessed during code
		execution. If this cannot be done safely, it is recommended to flush the caches by setting the
		DCRST and ICRST bits in the FLASH_CR register. */
		if (HAL_FLASHEx_Erase(&EraseInitStruct, &PAGEError) != HAL_OK)
		{
			/*
			Error occurred while page erase.
			User can add here some code to deal with this error.
			PAGEError will contain the faulty page and then to know the code error on this page,
			user can call function 'HAL_FLASH_GetError()'
			*/
			/* Infinite loop */
			while (1)
			{

			}
		}

		/* Program the user Flash area word by word
		(area defined by FLASH_USER_START_ADDR and FLASH_USER_END_ADDR) ***********/


		Address = (uint32_t)backupArray;
		uint32_t currentAdress = Address;
		x = 0;

		while (currentAdress < Address + EEPROM_SIZE)
		{

			if (HAL_FLASH_Program(FLASH_TYPEPROGRAM_DOUBLEWORD, currentAdress, backupArrayRAM.eeprom_dword[x]) == HAL_OK)
			{
				currentAdress = currentAdress + 8;
				x ++;
			}
			else
			{
				/* Error occurred while writing data in Flash memory.
				User can add here some code to deal with this error */
				while (1)
				{

				}
			}
		}

		/* Lock the Flash to disable the flash control register access (recommended
		to protect the FLASH memory against possible unwanted operation) *********/
		HAL_FLASH_Lock();

	}

}
