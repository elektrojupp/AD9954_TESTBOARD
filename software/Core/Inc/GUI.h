
#ifndef __GUI_H
#define __GUI_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct
{
	char *text;
	SSD1306_COLOR color;
	FontDef *font;
}GUI_text_struct_t;


typedef struct
{
	GUI_text_struct_t * display;
	uint32_t lines;
	uint32_t focus;
	uint32_t toUpdate;
	uint32_t infoData;
	button_struct_t * buttons;
	void(*CallbackFuntion)();
	GUI_value_struct_t * values;

}GUI_page_struct_t;


#ifdef __cplusplus
}
#endif

#endif /* __GUI_REGISTER_H */
