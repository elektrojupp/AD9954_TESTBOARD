
#ifndef __BUTTON_H
#define __BUTTON_H

#ifdef __cplusplus
extern "C" {
#endif

#define TASTER_BACK_NUMBER	0
#define TASTER_FRONT_NUMBER	1
#define TASTER_UP_NUMBER	2
#define TASTER_DOWN_NUMBER	3
#define TASTER_OK_NUMBER	4

#define BUTTON_NUMBERS			5

#define BUTTON_PRELLTIME		10

typedef struct
{
  uint32_t buttonTimeOld;
  uint8_t buttonIsPressed;
  uint8_t buttonIsSet;
  GPIO_TypeDef* GPIOx;
  uint16_t GPIO_Pin;
} button_struct_t;

// Übersicht
void BUTTON_checkTaster(button_struct_t *button);


#ifdef __cplusplus
}
#endif

#endif /* __BUTTON_H */
