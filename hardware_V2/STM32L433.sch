EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3275 1925 3500 1925
Wire Wire Line
	3275 2025 3500 2025
Wire Wire Line
	3275 2225 3500 2225
Wire Wire Line
	3275 2125 3500 2125
Wire Wire Line
	3500 1625 3275 1625
Wire Wire Line
	3400 3225 3275 3225
Wire Wire Line
	1850 3725 1975 3725
Wire Wire Line
	3500 1825 3275 1825
Wire Wire Line
	3500 1725 3275 1725
Wire Wire Line
	1975 3525 1875 3525
Wire Wire Line
	3375 1525 3275 1525
Wire Wire Line
	1875 3425 1975 3425
$Comp
L fg_proj_lib:+3V3 #PWR?
U 1 1 5DAA3CB8
P 2375 875
AR Path="/5DAA3CB8" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/5DAA3CB8" Ref="#PWR0113"  Part="1" 
F 0 "#PWR0113" H 2375 725 50  0001 C CNN
F 1 "+3V3" H 2390 1048 50  0000 C CNN
F 2 "" H 2375 875 50  0001 C CNN
F 3 "" H 2375 875 50  0001 C CNN
	1    2375 875 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2375 875  2375 1200
Wire Wire Line
	2575 1325 2575 1200
Wire Wire Line
	2575 1200 2475 1200
Wire Wire Line
	2475 1200 2475 1325
Wire Wire Line
	2675 1325 2675 1200
Wire Wire Line
	2675 1200 2575 1200
Connection ~ 2575 1200
$Comp
L fg_proj_lib:STM32L433RBTx U?
U 1 1 5DAA3CC5
P 2675 3125
AR Path="/5DAA3CC5" Ref="U?"  Part="1" 
AR Path="/5DA8B132/5DAA3CC5" Ref="U1"  Part="1" 
F 0 "U1" H 2900 1200 50  0000 C CNN
F 1 "STM32L4A6RGT6" H 2925 1100 50  0000 C CNN
F 2 "fg_proj:LQFP-64_10x10mm_P0.5mm" H 2075 1425 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00257192.pdf" H 2675 3125 50  0001 C CNN
F 4 "497-17731-ND" H 2675 3125 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "STMicroelectronics" H 2675 3125 50  0001 C CNN "Hersteller"
F 6 "STM32L4A6RGT6" H 2675 3125 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 2675 3125 50  0001 C CNN "Anbieter"
	1    2675 3125
	1    0    0    -1  
$EndComp
Wire Wire Line
	2375 1325 2375 1200
Wire Wire Line
	2375 1200 2475 1200
Connection ~ 2375 1200
Connection ~ 2475 1200
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 5DAA3CD3
P 2375 5150
AR Path="/5DAA3CD3" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/5DAA3CD3" Ref="#PWR0121"  Part="1" 
F 0 "#PWR0121" H 2375 4900 50  0001 C CNN
F 1 "GND" H 2379 4995 50  0000 C CNN
F 2 "" H 2375 5150 50  0001 C CNN
F 3 "" H 2375 5150 50  0001 C CNN
	1    2375 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2375 4925 2375 5025
Wire Wire Line
	2475 5025 2375 5025
Connection ~ 2375 5025
Wire Wire Line
	2375 5025 2375 5150
Wire Wire Line
	2575 4925 2575 5025
Wire Wire Line
	2575 5025 2475 5025
Connection ~ 2475 5025
Wire Wire Line
	2475 4925 2475 5025
Wire Wire Line
	2675 4925 2675 5025
Connection ~ 2575 5025
Wire Wire Line
	2775 4925 2775 5025
Wire Wire Line
	2575 5025 2675 5025
Connection ~ 2675 5025
Wire Wire Line
	2675 5025 2775 5025
Text GLabel 3500 2925 2    50   Input ~ 0
SWCLK
Text GLabel 3500 2825 2    50   Input ~ 0
SWDIO
Wire Wire Line
	3275 2925 3500 2925
Text GLabel 3375 3525 2    50   Input ~ 0
SWO
Wire Wire Line
	3275 3525 3375 3525
Text GLabel 3500 2225 2    50   Input ~ 0
FG_SDIO
Wire Wire Line
	3275 2825 3500 2825
Text GLabel 1875 3625 0    50   Input ~ 0
FG_IO_SYNC
Wire Wire Line
	1875 3625 1975 3625
Text GLabel 3500 2125 2    50   Input ~ 0
FG_SDO
Text GLabel 3500 1925 2    50   Input ~ 0
FG_CS*
Text GLabel 3500 2025 2    50   Input ~ 0
FG_SCLK
Text GLabel 3500 1725 2    50   Input ~ 0
FG_PS1
Text GLabel 1875 3525 0    50   Input ~ 0
FG_PS0
Text GLabel 1875 3425 0    50   Input ~ 0
FG_OSK
Text GLabel 1875 3325 0    50   Input ~ 0
FG_SYNC_CLK
Text GLabel 3500 1825 2    50   Input ~ 0
FG_SYNC_IN
Text GLabel 1850 3725 0    50   Input ~ 0
FG_RESET
Text GLabel 3400 3225 2    50   Input ~ 0
FG_PWRDWNCTL
Text GLabel 3500 1625 2    50   Input ~ 0
FG_IOUPDATE
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 5DAC43D2
P 6850 1475
AR Path="/5DAC43D2" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/5DAC43D2" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 6850 1225 50  0001 C CNN
F 1 "GND" H 6854 1320 50  0000 C CNN
F 2 "" H 6850 1475 50  0001 C CNN
F 3 "" H 6850 1475 50  0001 C CNN
	1    6850 1475
	0    1    1    0   
$EndComp
$Comp
L fg_proj_lib:+3V3 #PWR?
U 1 1 5DAC43FA
P 7000 1025
AR Path="/5DAC43FA" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/5DAC43FA" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 7000 875 50  0001 C CNN
F 1 "+3V3" H 7015 1198 50  0000 C CNN
F 2 "" H 7000 1025 50  0001 C CNN
F 3 "" H 7000 1025 50  0001 C CNN
	1    7000 1025
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1275 7000 1025
Wire Wire Line
	7000 1275 7150 1275
Text GLabel 7775 1275 2    50   Input ~ 0
SWDIO
Text GLabel 7775 1375 2    50   Input ~ 0
SWCLK
Text GLabel 7775 1475 2    50   Input ~ 0
SWO
Text GLabel 7775 1675 2    50   Input ~ 0
RESET
Wire Wire Line
	7650 1375 7775 1375
Wire Wire Line
	7775 1275 7650 1275
Wire Wire Line
	7775 1475 7650 1475
Wire Wire Line
	7775 1675 7650 1675
Text GLabel 925  1525 0    50   Input ~ 0
RESET
Wire Wire Line
	1975 1525 1750 1525
$Comp
L fg_proj_lib:C C?
U 1 1 5D83A013
P 2200 6125
AR Path="/5D83A013" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5D83A013" Ref="C?"  Part="1" 
AR Path="/5DA8B132/5D83A013" Ref="C21"  Part="1" 
F 0 "C21" H 2315 6171 50  0000 L CNN
F 1 "10p" H 2315 6080 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 2238 5975 50  0001 C CNN
F 3 "~" H 2200 6125 50  0001 C CNN
F 4 "311-3607-1-ND" H 2200 6125 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CC0402CRNPO9BN100" H 2200 6125 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Yageo" H 2200 6125 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 2200 6125 50  0001 C CNN "Anbieter"
	1    2200 6125
	-1   0    0    1   
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 5D83A019
P 2775 6575
AR Path="/5D83A019" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5D83A019" Ref="C?"  Part="1" 
AR Path="/5DA8B132/5D83A019" Ref="C22"  Part="1" 
F 0 "C22" H 2890 6621 50  0000 L CNN
F 1 "10p" H 2890 6530 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 2813 6425 50  0001 C CNN
F 3 "~" H 2775 6575 50  0001 C CNN
F 4 "311-3607-1-ND" H 2775 6575 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CC0402CRNPO9BN100" H 2775 6575 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Yageo" H 2775 6575 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 2775 6575 50  0001 C CNN "Anbieter"
	1    2775 6575
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:R R?
U 1 1 5D85155D
P 1750 1325
AR Path="/5D85155D" Ref="R?"  Part="1" 
AR Path="/5E0B731A/5D85155D" Ref="R?"  Part="1" 
AR Path="/5DAB097C/5D85155D" Ref="R?"  Part="1" 
AR Path="/5DA8B132/5D85155D" Ref="R5"  Part="1" 
F 0 "R5" H 1680 1279 50  0000 R CNN
F 1 "10k" H 1680 1370 50  0000 R CNN
F 2 "fg_proj:R_0603_1608Metric" V 1680 1325 50  0001 C CNN
F 3 "~" H 1750 1325 50  0001 C CNN
F 4 "311-10.0KHRCT-ND" H 1750 1325 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 1750 1325 50  0001 C CNN "Hersteller"
F 6 "RC0603FR-0710KL" H 1750 1325 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 1750 1325 50  0001 C CNN "Anbieter"
	1    1750 1325
	-1   0    0    1   
$EndComp
$Comp
L fg_proj_lib:+3V3 #PWR?
U 1 1 5D8547AD
P 1750 875
AR Path="/5D8547AD" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/5D8547AD" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 1750 725 50  0001 C CNN
F 1 "+3V3" H 1765 1048 50  0000 C CNN
F 2 "" H 1750 875 50  0001 C CNN
F 3 "" H 1750 875 50  0001 C CNN
	1    1750 875 
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 5D859556
P 1750 1975
AR Path="/5D859556" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/5D859556" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 1750 1725 50  0001 C CNN
F 1 "GND" H 1754 1820 50  0000 C CNN
F 2 "" H 1750 1975 50  0001 C CNN
F 3 "" H 1750 1975 50  0001 C CNN
	1    1750 1975
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 875  1750 1175
Wire Wire Line
	1750 1475 1750 1525
Connection ~ 1750 1525
Wire Wire Line
	1750 1525 1300 1525
Wire Wire Line
	1750 1525 1750 1575
Wire Wire Line
	1750 1875 1750 1975
Wire Wire Line
	3400 4525 3275 4525
Wire Wire Line
	3400 4425 3275 4425
Text GLabel 10000 2225 0    50   Input ~ 0
LCD_V0
Text GLabel 10000 2125 0    50   Input ~ 0
LCD_CS
Text GLabel 10000 1925 0    50   Input ~ 0
LCD_SDIO
Text GLabel 10000 2025 0    50   Input ~ 0
LCD_SCLK
Text GLabel 10000 2325 0    50   Input ~ 0
LCD_RST
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 5EE202C2
P 10000 1725
AR Path="/5EE202C2" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/5EE202C2" Ref="#PWR0169"  Part="1" 
F 0 "#PWR0169" H 10000 1475 50  0001 C CNN
F 1 "GND" H 10004 1570 50  0000 C CNN
F 2 "" H 10000 1725 50  0001 C CNN
F 3 "" H 10000 1725 50  0001 C CNN
	1    10000 1725
	0    1    1    0   
$EndComp
$Comp
L fg_proj_lib:+3V3 #PWR?
U 1 1 5EE206F1
P 10000 1625
AR Path="/5EE206F1" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/5EE206F1" Ref="#PWR0170"  Part="1" 
F 0 "#PWR0170" H 10000 1475 50  0001 C CNN
F 1 "+3V3" H 9975 1775 50  0000 C CNN
F 2 "" H 10000 1625 50  0001 C CNN
F 3 "" H 10000 1625 50  0001 C CNN
	1    10000 1625
	1    0    0    -1  
$EndComp
Text GLabel 3400 4425 2    50   Input ~ 0
LCD_CS
Text GLabel 3400 4725 2    50   Input ~ 0
LCD_SDIO
Text GLabel 3400 4525 2    50   Input ~ 0
LCD_SCLK
$Comp
L fg_proj_lib:SW_SPST SW2
U 1 1 5EEAEB7B
P 5000 4850
F 0 "SW2" V 4954 4948 50  0000 L CNN
F 1 "FRONT" V 5045 4948 50  0000 L CNN
F 2 "fg_proj:SW_PUSH_6mm_H5mm" H 5000 4850 50  0001 C CNN
F 3 "~" H 5000 4850 50  0001 C CNN
F 4 "SW402-ND" H 5000 4850 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Omron Electronics Inc-EMC Div" H 5000 4850 50  0001 C CNN "Hersteller"
F 6 "B3F-1020" H 5000 4850 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 5000 4850 50  0001 C CNN "Anbieter"
	1    5000 4850
	0    1    1    0   
$EndComp
$Comp
L fg_proj_lib:SW_SPST SW3
U 1 1 5EEAF4E1
P 5475 4850
F 0 "SW3" V 5429 4948 50  0000 L CNN
F 1 "BACK" V 5520 4948 50  0000 L CNN
F 2 "fg_proj:SW_PUSH_6mm_H5mm" H 5475 4850 50  0001 C CNN
F 3 "~" H 5475 4850 50  0001 C CNN
F 4 "SW402-ND" H 5475 4850 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Omron Electronics Inc-EMC Div" H 5475 4850 50  0001 C CNN "Hersteller"
F 6 "B3F-1020" H 5475 4850 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 5475 4850 50  0001 C CNN "Anbieter"
	1    5475 4850
	0    1    1    0   
$EndComp
$Comp
L fg_proj_lib:SW_SPST SW5
U 1 1 5EEAFFA1
P 6425 4850
F 0 "SW5" V 6379 4948 50  0000 L CNN
F 1 "DOWN" V 6470 4948 50  0000 L CNN
F 2 "fg_proj:SW_PUSH_6mm_H5mm" H 6425 4850 50  0001 C CNN
F 3 "~" H 6425 4850 50  0001 C CNN
F 4 "SW402-ND" H 6425 4850 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Omron Electronics Inc-EMC Div" H 6425 4850 50  0001 C CNN "Hersteller"
F 6 "B3F-1020" H 6425 4850 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 6425 4850 50  0001 C CNN "Anbieter"
	1    6425 4850
	0    1    1    0   
$EndComp
$Comp
L fg_proj_lib:SW_SPST SW6
U 1 1 5EEB020E
P 6900 4850
F 0 "SW6" V 6854 4948 50  0000 L CNN
F 1 "OK" V 6945 4948 50  0000 L CNN
F 2 "fg_proj:SW_PUSH_6mm_H5mm" H 6900 4850 50  0001 C CNN
F 3 "~" H 6900 4850 50  0001 C CNN
F 4 "SW402-ND" H 6900 4850 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Omron Electronics Inc-EMC Div" H 6900 4850 50  0001 C CNN "Hersteller"
F 6 "B3F-1020" H 6900 4850 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 6900 4850 50  0001 C CNN "Anbieter"
	1    6900 4850
	0    1    1    0   
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 5EEB0697
P 5000 5325
AR Path="/5EEB0697" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/5EEB0697" Ref="#PWR0173"  Part="1" 
F 0 "#PWR0173" H 5000 5075 50  0001 C CNN
F 1 "GND" H 5004 5170 50  0000 C CNN
F 2 "" H 5000 5325 50  0001 C CNN
F 3 "" H 5000 5325 50  0001 C CNN
	1    5000 5325
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5050 6900 5125
Wire Wire Line
	6900 5125 6425 5125
Wire Wire Line
	5000 5125 5000 5050
Wire Wire Line
	5000 5325 5000 5125
Connection ~ 5000 5125
Wire Wire Line
	5475 5050 5475 5125
Connection ~ 5475 5125
Wire Wire Line
	5475 5125 5000 5125
Wire Wire Line
	5950 5050 5950 5125
Connection ~ 5950 5125
Wire Wire Line
	5950 5125 5475 5125
Wire Wire Line
	6425 5050 6425 5125
Connection ~ 6425 5125
Wire Wire Line
	6425 5125 5950 5125
Wire Wire Line
	5000 4650 5000 4500
Wire Wire Line
	5475 4500 5475 4650
Wire Wire Line
	5950 4500 5950 4650
Wire Wire Line
	6425 4475 6425 4650
Wire Wire Line
	6900 4475 6900 4650
$Comp
L fg_proj_lib:SW_SPST SW4
U 1 1 5EEAF8C5
P 5950 4850
F 0 "SW4" V 5904 4948 50  0000 L CNN
F 1 "UP" V 5995 4948 50  0000 L CNN
F 2 "fg_proj:SW_PUSH_6mm_H5mm" H 5950 4850 50  0001 C CNN
F 3 "~" H 5950 4850 50  0001 C CNN
F 4 "SW402-ND" H 5950 4850 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Omron Electronics Inc-EMC Div" H 5950 4850 50  0001 C CNN "Hersteller"
F 6 "B3F-1020" H 5950 4850 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 5950 4850 50  0001 C CNN "Anbieter"
	1    5950 4850
	0    1    1    0   
$EndComp
Text GLabel 3500 2625 2    50   Input ~ 0
USB_D-
Text GLabel 3500 2725 2    50   Input ~ 0
USB_D+
Wire Wire Line
	3500 2625 3275 2625
Wire Wire Line
	3500 2725 3275 2725
$Comp
L fg_proj_lib:USB_B_Micro J4
U 1 1 6016E5B7
P 8450 5750
F 0 "J4" H 8507 6217 50  0000 C CNN
F 1 "USB_B_Micro" H 8507 6126 50  0000 C CNN
F 2 "fg_proj:USB_Micro-B_Wuerth_629105150521" H 8600 5700 50  0001 C CNN
F 3 "~" H 8600 5700 50  0001 C CNN
F 4 "732-5960-1-ND" H 8450 5750 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Würth Elektronik" H 8450 5750 50  0001 C CNN "Hersteller"
F 6 "629105150521" H 8450 5750 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 8450 5750 50  0001 C CNN "Anbieter"
	1    8450 5750
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 6016F5EC
P 9400 5675
AR Path="/6016F5EC" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/6016F5EC" Ref="#PWR0180"  Part="1" 
F 0 "#PWR0180" H 9400 5425 50  0001 C CNN
F 1 "GND" H 9404 5520 50  0000 C CNN
F 2 "" H 9400 5675 50  0001 C CNN
F 3 "" H 9400 5675 50  0001 C CNN
	1    9400 5675
	0    1    1    0   
$EndComp
Text GLabel 10300 6200 2    50   Input ~ 0
USB_D-
Text GLabel 10275 5150 2    50   Input ~ 0
USB_D+
$Comp
L fg_proj_lib:USBLC6-2SC6 U7
U 1 1 602C5454
P 9900 5675
F 0 "U7" V 10150 5325 50  0000 R CNN
F 1 "USBLC6-2SC6" V 10250 5325 50  0000 R CNN
F 2 "fg_proj:SOT-23-6" H 9150 6075 50  0001 C CNN
F 3 "http://www2.st.com/resource/en/datasheet/CD00050750.pdf" H 10100 6025 50  0001 C CNN
F 4 "497-5235-1-ND" H 9900 5675 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "STMicroelectronics" H 9900 5675 50  0001 C CNN "Hersteller"
F 6 "USBLC6-2SC6" H 9900 5675 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 9900 5675 50  0001 C CNN "Anbieter"
	1    9900 5675
	0    1    -1   0   
$EndComp
Wire Wire Line
	9075 6200 9800 6200
Wire Wire Line
	9800 6200 9800 6175
Wire Wire Line
	9075 5850 9075 6200
Wire Wire Line
	8750 5750 9075 5750
Wire Wire Line
	9075 5750 9075 5150
Wire Wire Line
	9075 5150 9800 5150
Wire Wire Line
	9800 5150 9800 5175
Wire Wire Line
	10000 5150 10275 5150
Wire Wire Line
	10000 5150 10000 5175
Wire Wire Line
	10000 6200 10000 6175
Wire Wire Line
	10000 6200 10300 6200
Text GLabel 8750 5550 2    50   Input ~ 0
VBUS
Text GLabel 10400 5675 2    50   Input ~ 0
VBUS
Wire Wire Line
	8750 5850 9075 5850
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 6041255D
P 8450 6250
AR Path="/6041255D" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/6041255D" Ref="#PWR0117"  Part="1" 
F 0 "#PWR0117" H 8450 6000 50  0001 C CNN
F 1 "GND" H 8454 6095 50  0000 C CNN
F 2 "" H 8450 6250 50  0001 C CNN
F 3 "" H 8450 6250 50  0001 C CNN
	1    8450 6250
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 603F3580
P 2475 7075
AR Path="/603F3580" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/603F3580" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 2475 6825 50  0001 C CNN
F 1 "GND" H 2479 6920 50  0000 C CNN
F 2 "" H 2475 7075 50  0001 C CNN
F 3 "" H 2475 7075 50  0001 C CNN
	1    2475 7075
	1    0    0    -1  
$EndComp
Text GLabel 1975 2625 0    50   Input ~ 0
XTAL1
Text GLabel 1975 2725 0    50   Input ~ 0
XTAL2
Text GLabel 2875 6350 2    50   Input ~ 0
XTAL2
Text GLabel 2125 6350 0    50   Input ~ 0
XTAL1
Text GLabel 3375 1525 2    50   Input ~ 0
CLKMODESELECT
$Comp
L fg_proj_lib:Net-Tie_2 NT5
U 1 1 6057F55F
P 2475 6975
F 0 "NT5" V 2521 6931 50  0000 R CNN
F 1 "NT5" V 2430 6931 50  0000 R CNN
F 2 "fg_proj:NetTie-2_SMD_Pad0.5mm" H 2475 6975 50  0001 C CNN
F 3 "~" H 2475 6975 50  0001 C CNN
	1    2475 6975
	0    -1   -1   0   
$EndComp
Text GLabel 2550 5900 2    50   Input ~ 0
XTAL_GND_2
Text GLabel 2400 6800 0    50   Input ~ 0
XTAL_GND_2
$Comp
L fg_proj_lib:R R22
U 1 1 6065832F
P 8825 6175
F 0 "R22" H 8895 6221 50  0000 L CNN
F 1 "100k" H 8895 6130 50  0000 L CNN
F 2 "fg_proj:R_0603_1608Metric" V 8755 6175 50  0001 C CNN
F 3 "~" H 8825 6175 50  0001 C CNN
F 4 "311-100KHRCT-ND" H 8825 6175 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 8825 6175 50  0001 C CNN "Hersteller"
F 6 "RC0603FR-07100KL" H 8825 6175 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 8825 6175 50  0001 C CNN "Anbieter"
	1    8825 6175
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5950 8825 5950
Wire Wire Line
	8825 5950 8825 6025
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 6065EBDA
P 8825 6325
AR Path="/6065EBDA" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/6065EBDA" Ref="#PWR0120"  Part="1" 
F 0 "#PWR0120" H 8825 6075 50  0001 C CNN
F 1 "GND" H 8829 6170 50  0000 C CNN
F 2 "" H 8825 6325 50  0001 C CNN
F 3 "" H 8825 6325 50  0001 C CNN
	1    8825 6325
	1    0    0    -1  
$EndComp
Text GLabel 6900 4475 1    50   Input ~ 0
TASTER_OK
Text GLabel 6425 4475 1    50   Input ~ 0
TASTER_DOWN
Text GLabel 5950 4500 1    50   Input ~ 0
TASTER_UP
Text GLabel 5000 4500 1    50   Input ~ 0
TASTER_FRONT
Text GLabel 5475 4500 1    50   Input ~ 0
TASTER_BACK
Text GLabel 3400 4225 2    50   Input ~ 0
TASTER_FRONT
Wire Wire Line
	3400 3325 3275 3325
Text GLabel 3400 3325 2    50   Input ~ 0
TASTER_BACK
Wire Wire Line
	3275 3425 3400 3425
Text GLabel 3400 4325 2    50   Input ~ 0
TASTER_DOWN
Text GLabel 3400 3425 2    50   Input ~ 0
TASTER_OK
Wire Wire Line
	3400 4225 3275 4225
Wire Wire Line
	3275 4325 3400 4325
Text GLabel 1850 3825 0    50   Input ~ 0
TASTER_UP
Wire Wire Line
	1875 3325 1975 3325
Wire Wire Line
	7150 1375 7000 1375
Wire Wire Line
	7150 1475 7000 1475
Wire Wire Line
	7000 1375 7000 1475
Connection ~ 7000 1475
Wire Wire Line
	7150 1675 7000 1675
Wire Wire Line
	7000 1475 6850 1475
$Comp
L fg_proj_lib:TCAN330 U4
U 1 1 607B5874
P 9100 3600
F 0 "U4" H 9100 4181 50  0000 C CNN
F 1 "TCAN330" H 9100 4090 50  0000 C CNN
F 2 "fg_proj:SOT-23-8" H 9100 3100 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tcan337.pdf" H 9100 3600 50  0001 C CNN
F 4 "296-44210-1-ND" H 9100 3600 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Texas Instruments" H 9100 3600 50  0001 C CNN "Hersteller"
F 6 "TCAN330DCNT" H 9100 3600 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 9100 3600 50  0001 C CNN "Anbieter"
	1    9100 3600
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 607BC9A5
P 9100 4075
AR Path="/607BC9A5" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/607BC9A5" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 9100 3825 50  0001 C CNN
F 1 "GND" H 9104 3920 50  0000 C CNN
F 2 "" H 9100 4075 50  0001 C CNN
F 3 "" H 9100 4075 50  0001 C CNN
	1    9100 4075
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4000 9100 4075
Wire Wire Line
	9100 3150 9100 3200
Wire Wire Line
	9100 3150 9325 3150
Text GLabel 8375 3400 0    50   Input ~ 0
CAN_TX_-
Text GLabel 8375 3500 0    50   Input ~ 0
CAN_RX_+
Text GLabel 8375 3700 0    50   Input ~ 0
CAN_SHDN
Text GLabel 8375 3800 0    50   Input ~ 0
CAN_S
Wire Wire Line
	8375 3400 8600 3400
Wire Wire Line
	8600 3500 8375 3500
Wire Wire Line
	8375 3700 8600 3700
Wire Wire Line
	8375 3800 8600 3800
Text GLabel 3425 4125 2    50   Input ~ 0
CAN_TX_-
Text GLabel 3425 4025 2    50   Input ~ 0
CAN_RX_+
Wire Wire Line
	3275 4025 3425 4025
Wire Wire Line
	3275 4125 3425 4125
Text GLabel 1825 4525 0    50   Input ~ 0
CAN_S
Wire Wire Line
	1825 4525 1975 4525
Text GLabel 1975 2825 0    50   Input ~ 0
BOOT0
$Comp
L fg_proj_lib:Conn_02x12_Odd_Even J1
U 1 1 6096BE31
P 7350 1775
F 0 "J1" H 7400 2492 50  0000 C CNN
F 1 "DEBUG/CAN/BOOT" H 7400 2401 50  0000 C CNN
F 2 "fg_proj:PinHeader_2x12_P2.54mm_Vertical" H 7350 1775 50  0001 C CNN
F 3 "~" H 7350 1775 50  0001 C CNN
F 4 "Digi-Key" H 7350 1775 50  0001 C CNN "Anbieter"
F 5 "732-5303-ND" H 7350 1775 50  0001 C CNN "Anbieter-Teilenummer"
F 6 "Würth Elektronik" H 7350 1775 50  0001 C CNN "Hersteller"
F 7 "61302421121" H 7350 1775 50  0001 C CNN "Hersteller-Teilenummer"
	1    7350 1775
	1    0    0    -1  
$EndComp
NoConn ~ 7650 1575
NoConn ~ 7150 1575
NoConn ~ 7150 1775
NoConn ~ 7650 1775
Text GLabel 7025 2225 0    50   Input ~ 0
BOOT0
Text GLabel 10825 3125 2    50   Input ~ 0
CAN_H
Text GLabel 10775 4000 2    50   Input ~ 0
CAN_L
Text GLabel 9325 3150 2    50   Input ~ 0
CAN_VBUS
Text GLabel 7650 1975 2    50   Input ~ 0
CAN_H
Text GLabel 7650 1875 2    50   Input ~ 0
CAN_L
Text GLabel 7025 2025 0    50   Input ~ 0
CAN_VBUS
Wire Wire Line
	7150 1875 7000 1875
Wire Wire Line
	7000 1475 7000 1675
Connection ~ 7000 1675
Wire Wire Line
	7000 1675 7000 1875
Wire Wire Line
	7100 2075 7150 2075
Wire Wire Line
	7150 1975 7100 1975
Wire Wire Line
	7100 1975 7100 2025
Wire Wire Line
	7025 2025 7100 2025
Connection ~ 7100 2025
Wire Wire Line
	7100 2025 7100 2075
Wire Wire Line
	7150 2175 7100 2175
Wire Wire Line
	7100 2175 7100 2225
Wire Wire Line
	7100 2275 7150 2275
Wire Wire Line
	7025 2225 7100 2225
Connection ~ 7100 2225
Wire Wire Line
	7100 2225 7100 2275
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 60A22606
P 7925 2275
AR Path="/60A22606" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/60A22606" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 7925 2025 50  0001 C CNN
F 1 "GND" H 7929 2120 50  0000 C CNN
F 2 "" H 7925 2275 50  0001 C CNN
F 3 "" H 7925 2275 50  0001 C CNN
	1    7925 2275
	0    -1   -1   0   
$EndComp
$Comp
L fg_proj_lib:+3V3 #PWR?
U 1 1 60A233EB
P 7775 2175
AR Path="/60A233EB" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/60A233EB" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0147" H 7775 2025 50  0001 C CNN
F 1 "+3V3" H 7790 2348 50  0000 C CNN
F 2 "" H 7775 2175 50  0001 C CNN
F 3 "" H 7775 2175 50  0001 C CNN
	1    7775 2175
	0    1    1    0   
$EndComp
Wire Wire Line
	7925 2275 7650 2275
Wire Wire Line
	7775 2175 7700 2175
Wire Wire Line
	7700 2175 7700 2075
Wire Wire Line
	7700 2075 7650 2075
Connection ~ 7700 2175
Wire Wire Line
	7700 2175 7650 2175
$Comp
L fg_proj_lib:LED LED3
U 1 1 6063E114
P 6050 2625
F 0 "LED3" H 5950 2475 50  0000 L CNN
F 1 "ERROR" H 6125 2575 50  0000 L CNN
F 2 "fg_proj:LED_D5.0mm" H 6050 2625 50  0001 C CNN
F 3 "~" H 6050 2625 50  0001 C CNN
F 4 "Digi-Key" H 6050 2625 50  0001 C CNN "Anbieter"
F 5 "732-11408-ND" H 6050 2625 50  0001 C CNN "Anbieter-Teilenummer"
F 6 "Würth Elektronik" H 6050 2625 50  0001 C CNN "Hersteller"
F 7 "151054RS03000" H 6050 2625 50  0001 C CNN "Hersteller-Teilenummer"
	1    6050 2625
	0    1    1    0   
$EndComp
$Comp
L fg_proj_lib:R R?
U 1 1 6063F68B
P 5450 3000
AR Path="/6063F68B" Ref="R?"  Part="1" 
AR Path="/5E0B731A/6063F68B" Ref="R?"  Part="1" 
AR Path="/5DAB097C/6063F68B" Ref="R?"  Part="1" 
AR Path="/5DA8B132/6063F68B" Ref="R23"  Part="1" 
F 0 "R23" H 5380 2954 50  0000 R CNN
F 1 "10k" H 5380 3045 50  0000 R CNN
F 2 "fg_proj:R_0603_1608Metric" V 5380 3000 50  0001 C CNN
F 3 "~" H 5450 3000 50  0001 C CNN
F 4 "311-10.0KHRCT-ND" H 5450 3000 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 5450 3000 50  0001 C CNN "Hersteller"
F 6 "RC0603FR-0710KL" H 5450 3000 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 5450 3000 50  0001 C CNN "Anbieter"
	1    5450 3000
	-1   0    0    1   
$EndComp
$Comp
L fg_proj_lib:R R?
U 1 1 6063FFBA
P 6050 3000
AR Path="/6063FFBA" Ref="R?"  Part="1" 
AR Path="/5E0B731A/6063FFBA" Ref="R?"  Part="1" 
AR Path="/5DAB097C/6063FFBA" Ref="R?"  Part="1" 
AR Path="/5DA8B132/6063FFBA" Ref="R24"  Part="1" 
F 0 "R24" H 5980 2954 50  0000 R CNN
F 1 "10k" H 5980 3045 50  0000 R CNN
F 2 "fg_proj:R_0603_1608Metric" V 5980 3000 50  0001 C CNN
F 3 "~" H 6050 3000 50  0001 C CNN
F 4 "311-10.0KHRCT-ND" H 6050 3000 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 6050 3000 50  0001 C CNN "Hersteller"
F 6 "RC0603FR-0710KL" H 6050 3000 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 6050 3000 50  0001 C CNN "Anbieter"
	1    6050 3000
	-1   0    0    1   
$EndComp
$Comp
L fg_proj_lib:R R?
U 1 1 60640337
P 5750 3000
AR Path="/60640337" Ref="R?"  Part="1" 
AR Path="/5E0B731A/60640337" Ref="R?"  Part="1" 
AR Path="/5DAB097C/60640337" Ref="R?"  Part="1" 
AR Path="/5DA8B132/60640337" Ref="R25"  Part="1" 
F 0 "R25" H 5680 2954 50  0000 R CNN
F 1 "10k" H 5680 3045 50  0000 R CNN
F 2 "fg_proj:R_0603_1608Metric" V 5680 3000 50  0001 C CNN
F 3 "~" H 5750 3000 50  0001 C CNN
F 4 "311-10.0KHRCT-ND" H 5750 3000 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 5750 3000 50  0001 C CNN "Hersteller"
F 6 "RC0603FR-0710KL" H 5750 3000 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 5750 3000 50  0001 C CNN "Anbieter"
	1    5750 3000
	-1   0    0    1   
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 60640AAF
P 6050 2250
AR Path="/60640AAF" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/60640AAF" Ref="#PWR0150"  Part="1" 
F 0 "#PWR0150" H 6050 2000 50  0001 C CNN
F 1 "GND" H 6054 2095 50  0000 C CNN
F 2 "" H 6050 2250 50  0001 C CNN
F 3 "" H 6050 2250 50  0001 C CNN
	1    6050 2250
	-1   0    0    1   
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 6064146A
P 5450 2250
AR Path="/6064146A" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/6064146A" Ref="#PWR0152"  Part="1" 
F 0 "#PWR0152" H 5450 2000 50  0001 C CNN
F 1 "GND" H 5454 2095 50  0000 C CNN
F 2 "" H 5450 2250 50  0001 C CNN
F 3 "" H 5450 2250 50  0001 C CNN
	1    5450 2250
	-1   0    0    1   
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 6064175F
P 5750 2250
AR Path="/6064175F" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/6064175F" Ref="#PWR0153"  Part="1" 
F 0 "#PWR0153" H 5750 2000 50  0001 C CNN
F 1 "GND" H 5754 2095 50  0000 C CNN
F 2 "" H 5750 2250 50  0001 C CNN
F 3 "" H 5750 2250 50  0001 C CNN
	1    5750 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 2250 5750 2475
Wire Wire Line
	5450 2250 5450 2475
Wire Wire Line
	6050 2250 6050 2475
Wire Wire Line
	6050 2775 6050 2850
Wire Wire Line
	5450 2775 5450 2850
Wire Wire Line
	5750 2775 5750 2850
Wire Wire Line
	3275 4725 3400 4725
Text GLabel 3500 2325 2    50   Input ~ 0
LED_3
Wire Wire Line
	1975 3825 1850 3825
Text GLabel 5750 3300 3    50   Input ~ 0
LED_1
Text GLabel 5450 3300 3    50   Input ~ 0
LED_2
Text GLabel 6050 3300 3    50   Input ~ 0
LED_3
Wire Wire Line
	5750 3150 5750 3300
Wire Wire Line
	5450 3150 5450 3300
Wire Wire Line
	6050 3150 6050 3300
$Comp
L fg_proj_lib:LED LED1
U 1 1 6069674A
P 5450 2625
F 0 "LED1" H 5275 2475 50  0000 L CNN
F 1 "STM32" H 5525 2575 50  0000 L CNN
F 2 "fg_proj:LED_D5.0mm" H 5450 2625 50  0001 C CNN
F 3 "~" H 5450 2625 50  0001 C CNN
F 4 "Digi-Key" H 5450 2625 50  0001 C CNN "Anbieter"
F 5 "732-5019-ND" H 5450 2625 50  0001 C CNN "Anbieter-Teilenummer"
F 6 "Würth Elektronik" H 5450 2625 50  0001 C CNN "Hersteller"
F 7 "151053BS04500" H 5450 2625 50  0001 C CNN "Hersteller-Teilenummer"
	1    5450 2625
	0    1    1    0   
$EndComp
$Comp
L fg_proj_lib:LED LED2
U 1 1 60696ACD
P 5750 2625
F 0 "LED2" H 5625 2475 50  0000 L CNN
F 1 "AD" H 5825 2575 50  0000 L CNN
F 2 "fg_proj:LED_D5.0mm" H 5750 2625 50  0001 C CNN
F 3 "~" H 5750 2625 50  0001 C CNN
F 4 "Digi-Key" H 5750 2625 50  0001 C CNN "Anbieter"
F 5 "732-5020-ND" H 5750 2625 50  0001 C CNN "Anbieter-Teilenummer"
F 6 "Würth Elektronik" H 5750 2625 50  0001 C CNN "Hersteller"
F 7 "151053GS03000" H 5750 2625 50  0001 C CNN "Hersteller-Teilenummer"
	1    5750 2625
	0    1    1    0   
$EndComp
Text GLabel 1850 4125 0    50   Input ~ 0
LED_2
Text GLabel 1850 4025 0    50   Input ~ 0
LED_1
Text GLabel 1850 3925 0    50   Input ~ 0
1V8_ON
Wire Wire Line
	1975 3925 1850 3925
Wire Wire Line
	1975 4025 1850 4025
Wire Wire Line
	1975 4125 1850 4125
Wire Wire Line
	3500 2325 3275 2325
Wire Wire Line
	3275 3925 3425 3925
Text GLabel 3425 3925 2    50   Input ~ 0
CAN_SHDN
Wire Wire Line
	2675 1200 2775 1200
Connection ~ 2675 1200
Wire Wire Line
	2775 1200 2775 1325
Wire Wire Line
	8450 6150 8450 6250
Text Label 9175 5150 0    50   ~ 0
USB_CONN_+
Text Label 9150 6200 0    50   ~ 0
USB_CONN_-
NoConn ~ 7650 2375
NoConn ~ 7150 2375
NoConn ~ 3275 3025
NoConn ~ 1975 4725
NoConn ~ 1975 4625
NoConn ~ 1975 4425
NoConn ~ 1975 4325
NoConn ~ 1975 4225
NoConn ~ 1975 3025
NoConn ~ 1975 3225
NoConn ~ 3275 3825
NoConn ~ 3275 3725
NoConn ~ 3275 3625
NoConn ~ 10000 1825
Text GLabel 3500 2525 2    50   Input ~ 0
LCD_V0
Text GLabel 3500 2425 2    50   Input ~ 0
LCD_RST
Wire Wire Line
	3500 2425 3275 2425
Wire Wire Line
	3500 2525 3275 2525
NoConn ~ 8350 6150
NoConn ~ 3275 4625
$Comp
L fg_proj_lib:MountingHole_Pad H1
U 1 1 607F6FA7
P 5275 6500
F 0 "H1" H 5375 6549 50  0000 L CNN
F 1 "MH" H 5375 6458 50  0000 L CNN
F 2 "fg_proj:MountingHole_2.7mm_M2.5_Pad_Via" H 5275 6500 50  0001 C CNN
F 3 "~" H 5275 6500 50  0001 C CNN
	1    5275 6500
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 607F7A07
P 5275 6675
AR Path="/607F7A07" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/607F7A07" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 5275 6425 50  0001 C CNN
F 1 "GND" H 5279 6520 50  0000 C CNN
F 2 "" H 5275 6675 50  0001 C CNN
F 3 "" H 5275 6675 50  0001 C CNN
	1    5275 6675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5275 6675 5275 6600
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 608009EE
P 5575 6675
AR Path="/608009EE" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/608009EE" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 5575 6425 50  0001 C CNN
F 1 "GND" H 5579 6520 50  0000 C CNN
F 2 "" H 5575 6675 50  0001 C CNN
F 3 "" H 5575 6675 50  0001 C CNN
	1    5575 6675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5575 6675 5575 6600
$Comp
L fg_proj_lib:MountingHole_Pad H4
U 1 1 6080EFFA
P 6225 6500
F 0 "H4" H 6325 6549 50  0000 L CNN
F 1 "MH" H 6325 6458 50  0000 L CNN
F 2 "fg_proj:MountingHole_2.7mm_M2.5_Pad_Via" H 6225 6500 50  0001 C CNN
F 3 "~" H 6225 6500 50  0001 C CNN
	1    6225 6500
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 6080F000
P 6225 6675
AR Path="/6080F000" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/6080F000" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 6225 6425 50  0001 C CNN
F 1 "GND" H 6229 6520 50  0000 C CNN
F 2 "" H 6225 6675 50  0001 C CNN
F 3 "" H 6225 6675 50  0001 C CNN
	1    6225 6675
	1    0    0    -1  
$EndComp
Wire Wire Line
	6225 6675 6225 6600
$Comp
L fg_proj_lib:C C?
U 1 1 6062CEAF
P 1750 1725
AR Path="/6062CEAF" Ref="C?"  Part="1" 
AR Path="/5E0B731A/6062CEAF" Ref="C?"  Part="1" 
AR Path="/5DA8B132/6062CEAF" Ref="C2"  Part="1" 
F 0 "C2" H 1865 1771 50  0000 L CNN
F 1 "100n" H 1865 1680 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 1788 1575 50  0001 C CNN
F 3 "~" H 1750 1725 50  0001 C CNN
F 4 "1276-6720-1-ND" H 1750 1725 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CL05B104KA5NNNC" H 1750 1725 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Samsung Electro-Mechanics" H 1750 1725 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 1750 1725 50  0001 C CNN "Anbieter"
	1    1750 1725
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:R R?
U 1 1 606324D4
P 10275 3375
AR Path="/606324D4" Ref="R?"  Part="1" 
AR Path="/5E0B731A/606324D4" Ref="R?"  Part="1" 
AR Path="/5DAB097C/606324D4" Ref="R?"  Part="1" 
AR Path="/5DA8B132/606324D4" Ref="R3"  Part="1" 
F 0 "R3" H 10205 3329 50  0000 R CNN
F 1 "60.4R" H 10205 3420 50  0000 R CNN
F 2 "fg_proj:R_1206_3216Metric" V 10205 3375 50  0001 C CNN
F 3 "~" H 10275 3375 50  0001 C CNN
F 4 "311-60.4FRCT-ND" H 10275 3375 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 10275 3375 50  0001 C CNN "Hersteller"
F 6 "RC1206FR-0760R4L" H 10275 3375 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 10275 3375 50  0001 C CNN "Anbieter"
	1    10275 3375
	-1   0    0    1   
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 60633642
P 10650 3600
AR Path="/60633642" Ref="C?"  Part="1" 
AR Path="/5E0B731A/60633642" Ref="C?"  Part="1" 
AR Path="/5DA8B132/60633642" Ref="C3"  Part="1" 
F 0 "C3" H 10765 3646 50  0000 L CNN
F 1 "10p" H 10765 3555 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 10688 3450 50  0001 C CNN
F 3 "~" H 10650 3600 50  0001 C CNN
F 4 "311-3607-1-ND" H 10650 3600 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CC0402CRNPO9BN100" H 10650 3600 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Yageo" H 10650 3600 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 10650 3600 50  0001 C CNN "Anbieter"
	1    10650 3600
	0    1    1    0   
$EndComp
$Comp
L fg_proj_lib:R R?
U 1 1 6063C0B7
P 10275 3825
AR Path="/6063C0B7" Ref="R?"  Part="1" 
AR Path="/5E0B731A/6063C0B7" Ref="R?"  Part="1" 
AR Path="/5DAB097C/6063C0B7" Ref="R?"  Part="1" 
AR Path="/5DA8B132/6063C0B7" Ref="R4"  Part="1" 
F 0 "R4" H 10205 3779 50  0000 R CNN
F 1 "60.4R" H 10205 3870 50  0000 R CNN
F 2 "fg_proj:R_1206_3216Metric" V 10205 3825 50  0001 C CNN
F 3 "~" H 10275 3825 50  0001 C CNN
F 4 "311-60.4FRCT-ND" H 10275 3825 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 10275 3825 50  0001 C CNN "Hersteller"
F 6 "RC1206FR-0760R4L" H 10275 3825 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 10275 3825 50  0001 C CNN "Anbieter"
	1    10275 3825
	-1   0    0    1   
$EndComp
Wire Wire Line
	10775 4000 10275 4000
Wire Wire Line
	10025 3500 10025 3125
Wire Wire Line
	10025 3125 10275 3125
Wire Wire Line
	9600 3500 10025 3500
Wire Wire Line
	10275 3225 10275 3125
Connection ~ 10275 3125
Wire Wire Line
	10275 3125 10825 3125
Wire Wire Line
	10275 3975 10275 4000
Connection ~ 10275 4000
Wire Wire Line
	10275 4000 10025 4000
Wire Wire Line
	10275 3525 10275 3600
Wire Wire Line
	10500 3600 10275 3600
Connection ~ 10275 3600
Wire Wire Line
	10275 3600 10275 3675
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 6066AA4A
P 10800 3600
AR Path="/6066AA4A" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/6066AA4A" Ref="#PWR0114"  Part="1" 
F 0 "#PWR0114" H 10800 3350 50  0001 C CNN
F 1 "GND" H 10804 3445 50  0000 C CNN
F 2 "" H 10800 3600 50  0001 C CNN
F 3 "" H 10800 3600 50  0001 C CNN
	1    10800 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10025 3700 10025 4000
Wire Wire Line
	9600 3700 10025 3700
$Comp
L fg_proj_lib:SW_SPST SW1
U 1 1 606648BA
P 1300 1800
F 0 "SW1" V 1254 1898 50  0000 L CNN
F 1 "RESET" V 1345 1898 50  0000 L CNN
F 2 "fg_proj:SW_PUSH_6mm_H5mm" H 1300 1800 50  0001 C CNN
F 3 "~" H 1300 1800 50  0001 C CNN
F 4 "SW402-ND" H 1300 1800 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Omron Electronics Inc-EMC Div" H 1300 1800 50  0001 C CNN "Hersteller"
F 6 "B3F-1020" H 1300 1800 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 1300 1800 50  0001 C CNN "Anbieter"
	1    1300 1800
	0    1    1    0   
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 606648C0
P 1300 2075
AR Path="/606648C0" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/606648C0" Ref="#PWR0154"  Part="1" 
F 0 "#PWR0154" H 1300 1825 50  0001 C CNN
F 1 "GND" H 1304 1920 50  0000 C CNN
F 2 "" H 1300 2075 50  0001 C CNN
F 3 "" H 1300 2075 50  0001 C CNN
	1    1300 2075
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2000 1300 2075
Connection ~ 1300 1525
Wire Wire Line
	1300 1525 925  1525
Wire Wire Line
	1300 1600 1300 1525
$Comp
L fg_proj_lib:MountingHole_Pad H2
U 1 1 608009E8
P 5575 6500
F 0 "H2" H 5675 6549 50  0000 L CNN
F 1 "MH" H 5675 6458 50  0000 L CNN
F 2 "fg_proj:MountingHole_2.7mm_M2.5_Pad_Via" H 5575 6500 50  0001 C CNN
F 3 "~" H 5575 6500 50  0001 C CNN
	1    5575 6500
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:LFXTAL035268REEL Y?
U 1 1 60B7D8DC
P 2475 6350
AR Path="/5DAB097C/60B7D8DC" Ref="Y?"  Part="1" 
AR Path="/5DA8B132/60B7D8DC" Ref="Y2"  Part="1" 
F 0 "Y2" H 2050 7000 60  0000 L CNN
F 1 "LFXTAL035268REEL" H 2050 6900 60  0000 L CNN
F 2 "fg_proj:CFPX-180" H 2475 5950 60  0001 C CNN
F 3 "" H 2225 6350 60  0000 C CNN
F 4 "Digi-Key" H 2475 6350 50  0001 C CNN "Anbieter"
F 5 "1923-1295-1-ND" H 2475 6350 50  0001 C CNN "Anbieter-Teilenummer"
F 6 "IQD Frequency Products" H 2475 6350 50  0001 C CNN "Hersteller"
F 7 "LFXTAL035268REEL" H 2475 6350 50  0001 C CNN "Hersteller-Teilenummer"
	1    2475 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5900 2475 5900
Wire Wire Line
	2775 6350 2875 6350
Wire Wire Line
	2475 5900 2475 6150
Wire Wire Line
	2775 6725 2775 6800
Wire Wire Line
	2775 6350 2775 6425
Wire Wire Line
	2625 6350 2775 6350
Connection ~ 2775 6350
Wire Wire Line
	2125 6350 2200 6350
Wire Wire Line
	2200 5900 2200 5975
Wire Wire Line
	2200 6275 2200 6350
Connection ~ 2200 6350
Wire Wire Line
	2200 6350 2325 6350
Wire Wire Line
	2400 6800 2475 6800
Connection ~ 2475 6800
Wire Wire Line
	2475 6800 2475 6550
Wire Wire Line
	2475 5900 2200 5900
Connection ~ 2475 5900
Wire Wire Line
	2775 6800 2475 6800
Wire Wire Line
	2475 6800 2475 6875
$Comp
L fg_proj_lib:Conn_01x08 J3
U 1 1 602C1CD3
P 10200 2025
F 0 "J3" H 10350 1700 50  0000 R CNN
F 1 "Conn_SSD1306" H 10825 1625 50  0000 R CNN
F 2 "fg_proj:Adafruit_SSD1306" H 10200 2025 50  0001 C CNN
F 3 "~" H 10200 2025 50  0001 C CNN
F 4 "WS41006" H 10200 2025 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Waveshare" H 10200 2025 50  0001 C CNN "Hersteller"
F 6 "9092" H 10200 2025 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Eckstein-Komponente" H 10200 2025 50  0001 C CNN "Anbieter"
	1    10200 2025
	1    0    0    1   
$EndComp
$Comp
L fg_proj_lib:Placeholder LOGO1
U 1 1 60759C03
P 4175 7075
F 0 "LOGO1" H 4403 7121 50  0000 L CNN
F 1 "Elektrojupp" H 4403 7030 50  0000 L CNN
F 2 "fg_proj:Logo_Elektrojupp" H 4175 7075 50  0001 C CNN
F 3 "" H 4175 7075 50  0001 C CNN
	1    4175 7075
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:Placeholder LOGO2
U 1 1 6075BCC7
P 4175 7425
F 0 "LOGO2" H 4403 7471 50  0000 L CNN
F 1 "Elektrojupp" H 4403 7380 50  0000 L CNN
F 2 "fg_proj:Logo_Elektrojupp" H 4175 7425 50  0001 C CNN
F 3 "" H 4175 7425 50  0001 C CNN
	1    4175 7425
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:Placeholder LOGO3
U 1 1 60769B73
P 5025 7075
F 0 "LOGO3" H 5253 7121 50  0000 L CNN
F 1 "Spike" H 5253 7030 50  0000 L CNN
F 2 "fg_proj:Spike" H 5025 7075 50  0001 C CNN
F 3 "" H 5025 7075 50  0001 C CNN
	1    5025 7075
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:Placeholder LOGO5
U 1 1 6076BFBD
P 5025 7400
F 0 "LOGO5" H 5253 7446 50  0000 L CNN
F 1 "Spike" H 5253 7355 50  0000 L CNN
F 2 "fg_proj:Spike" H 5025 7400 50  0001 C CNN
F 3 "" H 5025 7400 50  0001 C CNN
	1    5025 7400
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:Placeholder LOGO6
U 1 1 6076C296
P 5725 7075
F 0 "LOGO6" H 5953 7121 50  0000 L CNN
F 1 "Spike" H 5953 7030 50  0000 L CNN
F 2 "fg_proj:Spike" H 5725 7075 50  0001 C CNN
F 3 "" H 5725 7075 50  0001 C CNN
	1    5725 7075
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:Placeholder LOGO7
U 1 1 6076CB62
P 5725 7400
F 0 "LOGO7" H 5953 7446 50  0000 L CNN
F 1 "Spike" H 5953 7355 50  0000 L CNN
F 2 "fg_proj:Spike" H 5725 7400 50  0001 C CNN
F 3 "" H 5725 7400 50  0001 C CNN
	1    5725 7400
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:Placeholder LOGO4
U 1 1 6076CE20
P 3300 7075
F 0 "LOGO4" H 3528 7121 50  0000 L CNN
F 1 "KiCad" H 3528 7030 50  0000 L CNN
F 2 "fg_proj:KiCad-Logo2_12mm_SilkScreen" H 3300 7075 50  0001 C CNN
F 3 "" H 3300 7075 50  0001 C CNN
	1    3300 7075
	1    0    0    -1  
$EndComp
Text Label 8450 3400 1    50   ~ 0
CAN_-
Text Label 8525 3500 1    50   ~ 0
CAN_+
Wire Wire Line
	2775 1200 2875 1200
Connection ~ 2775 1200
Wire Wire Line
	2875 1200 2875 1325
$EndSCHEMATC
