EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L fg_proj_lib:AD9954 U?
U 1 1 5DAB8F8A
P 9050 2525
AR Path="/5DAB8F8A" Ref="U?"  Part="1" 
AR Path="/5DAB097C/5DAB8F8A" Ref="U2"  Part="1" 
F 0 "U2" H 9050 4162 60  0000 C CNN
F 1 "AD9954" H 9050 4056 60  0000 C CNN
F 2 "fg_proj:AD9954" H 9000 2175 60  0001 C CNN
F 3 "" H 7750 3825 60  0000 C CNN
F 4 "AD9954YSVZ-REEL7CT-ND" H 9050 2525 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Analog Devices Inc." H 9050 2525 50  0001 C CNN "Hersteller"
F 6 "AD9954YSVZ-REEL7" H 9050 2525 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 9050 2525 50  0001 C CNN "Anbieter"
	1    9050 2525
	1    0    0    -1  
$EndComp
Wire Wire Line
	10350 3125 10425 3125
Wire Wire Line
	10425 3125 10425 3225
Wire Wire Line
	10425 3825 10350 3825
Wire Wire Line
	10350 3725 10425 3725
Connection ~ 10425 3725
Wire Wire Line
	10425 3725 10425 3825
Wire Wire Line
	10425 3625 10350 3625
Connection ~ 10425 3625
Wire Wire Line
	10425 3625 10425 3725
Wire Wire Line
	10350 3525 10425 3525
Connection ~ 10425 3525
Wire Wire Line
	10425 3525 10425 3625
Wire Wire Line
	10350 3225 10425 3225
Connection ~ 10425 3225
Wire Wire Line
	10425 3225 10425 3325
Wire Wire Line
	10350 3325 10425 3325
Connection ~ 10425 3325
Wire Wire Line
	10425 3325 10425 3425
Wire Wire Line
	10350 3425 10425 3425
Connection ~ 10425 3425
Wire Wire Line
	10425 3425 10425 3525
Wire Wire Line
	10350 2125 10425 2125
Wire Wire Line
	10425 2925 10350 2925
Wire Wire Line
	10350 2325 10425 2325
Connection ~ 10425 2325
Wire Wire Line
	10425 2325 10425 2425
Wire Wire Line
	10350 2425 10425 2425
Connection ~ 10425 2425
Wire Wire Line
	10425 2425 10425 2525
Wire Wire Line
	10350 2525 10425 2525
Connection ~ 10425 2525
Wire Wire Line
	10425 2525 10425 2625
Wire Wire Line
	10350 2625 10425 2625
Connection ~ 10425 2625
Wire Wire Line
	10425 2625 10425 2725
Wire Wire Line
	10350 2725 10425 2725
Connection ~ 10425 2725
Wire Wire Line
	10425 2725 10425 2825
Wire Wire Line
	10350 2825 10425 2825
Connection ~ 10425 2825
Wire Wire Line
	10425 2825 10425 2925
Wire Wire Line
	10350 1525 10425 1525
Wire Wire Line
	10425 1525 10425 1625
Wire Wire Line
	10350 1625 10425 1625
Wire Wire Line
	10525 1525 10425 1525
$Comp
L fg_proj_lib:+1V8 #PWR?
U 1 1 5DAB8FCD
P 10525 1525
AR Path="/5DAB8FCD" Ref="#PWR?"  Part="1" 
AR Path="/5DAB097C/5DAB8FCD" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 10525 1375 50  0001 C CNN
F 1 "+1V8" V 10525 1650 50  0000 L CNN
F 2 "" H 10525 1525 50  0001 C CNN
F 3 "" H 10525 1525 50  0001 C CNN
	1    10525 1525
	0    1    1    0   
$EndComp
$Comp
L fg_proj_lib:+1V8 #PWR?
U 1 1 5DAB8FD3
P 10525 2125
AR Path="/5DAB8FD3" Ref="#PWR?"  Part="1" 
AR Path="/5DAB097C/5DAB8FD3" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 10525 1975 50  0001 C CNN
F 1 "+1V8" V 10525 2350 50  0000 C CNN
F 2 "" H 10525 2125 50  0001 C CNN
F 3 "" H 10525 2125 50  0001 C CNN
	1    10525 2125
	0    1    1    0   
$EndComp
Connection ~ 10425 3825
Connection ~ 10425 1525
Wire Wire Line
	10525 2125 10425 2125
Connection ~ 10425 2125
Wire Wire Line
	10350 1825 10425 1825
Wire Wire Line
	10425 1825 10425 1925
Wire Wire Line
	10425 1925 10350 1925
Wire Wire Line
	10525 1925 10425 1925
Connection ~ 10425 1925
Wire Wire Line
	10425 3825 10425 4025
Wire Wire Line
	10425 4025 10350 4025
Wire Wire Line
	10525 4025 10425 4025
Connection ~ 10425 4025
Wire Notes Line
	7275 4500 7275 750 
Wire Notes Line
	7275 750  10950 750 
Wire Notes Line
	10950 750  10950 4500
Wire Notes Line
	10950 4500 7275 4500
Wire Notes Line
	7275 2725 9050 2725
Text Notes 8525 3275 0    50   ~ 0
Analogteil\n
Text Notes 8500 1975 0    50   ~ 0
Digitalteil\n
Text Notes 9100 1375 0    50   ~ 0
Spannungs-\nanpassung\nSPI\n
Wire Notes Line
	10950 2025 9050 2025
Wire Notes Line
	9050 1425 10950 1425
Wire Notes Line
	9050 1075 10950 1075
Wire Notes Line
	9050 1075 9050 4500
Text Notes 9225 1775 0    50   ~ 0
VCC\ndigital\n
Text Notes 9325 3175 0    50   ~ 0
VCC\nanalog
Wire Notes Line
	9075 3925 10950 3925
Text Notes 9300 4225 0    50   ~ 0
Exposed \nPad
Text Label 7750 3325 2    50   ~ 0
IOUT_1+
Text Label 7750 3225 2    50   ~ 0
IOUT_1-
Text GLabel 7750 2625 0    50   Input ~ 0
FG_SDIO
Text GLabel 7750 2325 0    50   Input ~ 0
FG_SDO
Text GLabel 7750 2425 0    50   Input ~ 0
FG_CS*
Text GLabel 7750 2525 0    50   Input ~ 0
FG_SCLK
Text GLabel 7750 1925 0    50   Input ~ 0
FG_PS0
Text GLabel 7750 2025 0    50   Input ~ 0
FG_PS1
Text GLabel 7750 1825 0    50   Input ~ 0
FG_OSK
Text GLabel 7750 1725 0    50   Input ~ 0
FG_SYNC_CLK
Text GLabel 7750 1625 0    50   Input ~ 0
FG_SYNC_IN
Text GLabel 7750 1225 0    50   Input ~ 0
FG_IOUPDATE
Text GLabel 7750 1325 0    50   Input ~ 0
FG_PWRDWNCTL
Text GLabel 7750 1425 0    50   Input ~ 0
FG_RESET
$Comp
L fg_proj_lib:GND #PWR0174
U 1 1 5D8DD1CB
P 10525 4025
F 0 "#PWR0174" H 10525 3775 50  0001 C CNN
F 1 "GND" V 10529 3915 50  0000 R CNN
F 2 "" H 10525 4025 50  0001 C CNN
F 3 "" H 10525 4025 50  0001 C CNN
	1    10525 4025
	0    -1   1    0   
$EndComp
$Comp
L fg_proj_lib:GND #PWR0175
U 1 1 5D8E0E94
P 10525 1925
F 0 "#PWR0175" H 10525 1675 50  0001 C CNN
F 1 "GND" V 10529 1815 50  0000 R CNN
F 2 "" H 10525 1925 50  0001 C CNN
F 3 "" H 10525 1925 50  0001 C CNN
	1    10525 1925
	0    -1   1    0   
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 604421F4
P 8250 5175
AR Path="/604421F4" Ref="C?"  Part="1" 
AR Path="/5E0B731A/604421F4" Ref="C?"  Part="1" 
AR Path="/5DA8B132/604421F4" Ref="C?"  Part="1" 
AR Path="/5DAB097C/604421F4" Ref="C27"  Part="1" 
F 0 "C27" H 8365 5221 50  0000 L CNN
F 1 "10p" H 8365 5130 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 8288 5025 50  0001 C CNN
F 3 "~" H 8250 5175 50  0001 C CNN
F 4 "311-3607-1-ND" H 8250 5175 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CC0402CRNPO9BN100" H 8250 5175 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Yageo" H 8250 5175 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 8250 5175 50  0001 C CNN "Anbieter"
	1    8250 5175
	-1   0    0    1   
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 604421FA
P 8825 5625
AR Path="/604421FA" Ref="C?"  Part="1" 
AR Path="/5E0B731A/604421FA" Ref="C?"  Part="1" 
AR Path="/5DA8B132/604421FA" Ref="C?"  Part="1" 
AR Path="/5DAB097C/604421FA" Ref="C28"  Part="1" 
F 0 "C28" H 8940 5671 50  0000 L CNN
F 1 "10p" H 8940 5580 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 8863 5475 50  0001 C CNN
F 3 "~" H 8825 5625 50  0001 C CNN
F 4 "311-3607-1-ND" H 8825 5625 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CC0402CRNPO9BN100" H 8825 5625 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Yageo" H 8825 5625 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 8825 5625 50  0001 C CNN "Anbieter"
	1    8825 5625
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 60442213
P 8525 6125
AR Path="/60442213" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/60442213" Ref="#PWR?"  Part="1" 
AR Path="/5DAB097C/60442213" Ref="#PWR0132"  Part="1" 
F 0 "#PWR0132" H 8525 5875 50  0001 C CNN
F 1 "GND" H 8529 5970 50  0000 C CNN
F 2 "" H 8525 6125 50  0001 C CNN
F 3 "" H 8525 6125 50  0001 C CNN
	1    8525 6125
	1    0    0    -1  
$EndComp
Text GLabel 8175 5400 0    50   Input ~ 0
XTAL4
Text GLabel 8925 5400 2    50   Input ~ 0
XTAL3
Text GLabel 7750 3925 0    50   Input ~ 0
XTAL3
Text GLabel 7750 4025 0    50   Input ~ 0
XTAL4
Wire Wire Line
	10350 1225 10425 1225
$Comp
L fg_proj_lib:+3V3 #PWR?
U 1 1 5DAB8FAB
P 10425 1225
AR Path="/5DAB8FAB" Ref="#PWR?"  Part="1" 
AR Path="/5DAB097C/5DAB8FAB" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 10425 1075 50  0001 C CNN
F 1 "+3V3" V 10425 1450 50  0000 C CNN
F 2 "" H 10425 1225 50  0001 C CNN
F 3 "" H 10425 1225 50  0001 C CNN
	1    10425 1225
	0    1    1    0   
$EndComp
Wire Wire Line
	10350 1325 10425 1325
$Comp
L fg_proj_lib:GND #PWR0176
U 1 1 5D8E1A09
P 10425 1325
F 0 "#PWR0176" H 10425 1075 50  0001 C CNN
F 1 "GND" V 10429 1215 50  0000 R CNN
F 2 "" H 10425 1325 50  0001 C CNN
F 3 "" H 10425 1325 50  0001 C CNN
	1    10425 1325
	0    -1   1    0   
$EndComp
Wire Wire Line
	1750 3925 1750 3625
$Comp
L fg_proj_lib:R R?
U 1 1 6052C999
P 1700 3350
AR Path="/6052C999" Ref="R?"  Part="1" 
AR Path="/5E0B731A/6052C999" Ref="R?"  Part="1" 
AR Path="/5DAB097C/6052C999" Ref="R13"  Part="1" 
F 0 "R13" H 1770 3396 50  0000 L CNN
F 1 "0" H 1770 3305 50  0000 L CNN
F 2 "fg_proj:R_0603_1608Metric" V 1630 3350 50  0001 C CNN
F 3 "~" H 1700 3350 50  0001 C CNN
F 4 "CR0603-J/-000ELFCT-ND" H 1700 3350 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Bourns Inc." H 1700 3350 50  0001 C CNN "Hersteller"
F 6 "CR0603-J/-000ELF" H 1700 3350 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 1700 3350 50  0001 C CNN "Anbieter"
	1    1700 3350
	-1   0    0    -1  
$EndComp
$Comp
L fg_proj_lib:R R?
U 1 1 6052BF1A
P 2150 3350
AR Path="/6052BF1A" Ref="R?"  Part="1" 
AR Path="/5E0B731A/6052BF1A" Ref="R?"  Part="1" 
AR Path="/5DAB097C/6052BF1A" Ref="R12"  Part="1" 
F 0 "R12" H 2220 3396 50  0000 L CNN
F 1 "0" H 2220 3305 50  0000 L CNN
F 2 "fg_proj:R_0603_1608Metric" V 2080 3350 50  0001 C CNN
F 3 "~" H 2150 3350 50  0001 C CNN
F 4 "CR0603-J/-000ELFCT-ND" H 2150 3350 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Bourns Inc." H 2150 3350 50  0001 C CNN "Hersteller"
F 6 "CR0603-J/-000ELF" H 2150 3350 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 2150 3350 50  0001 C CNN "Anbieter"
	1    2150 3350
	1    0    0    1   
$EndComp
$Comp
L fg_proj_lib:+1V8 #PWR?
U 1 1 6052886B
P 1350 3925
AR Path="/6052886B" Ref="#PWR?"  Part="1" 
AR Path="/5DAB097C/6052886B" Ref="#PWR0133"  Part="1" 
F 0 "#PWR0133" H 1350 3775 50  0001 C CNN
F 1 "+1V8" V 1350 4150 50  0000 C CNN
F 2 "" H 1350 3925 50  0001 C CNN
F 3 "" H 1350 3925 50  0001 C CNN
	1    1350 3925
	0    -1   1    0   
$EndComp
$Comp
L fg_proj_lib:+1V8 #PWR?
U 1 1 60527846
P 2550 3925
AR Path="/60527846" Ref="#PWR?"  Part="1" 
AR Path="/5DAB097C/60527846" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 2550 3775 50  0001 C CNN
F 1 "+1V8" V 2550 4150 50  0000 C CNN
F 2 "" H 2550 3925 50  0001 C CNN
F 3 "" H 2550 3925 50  0001 C CNN
	1    2550 3925
	0    1    -1   0   
$EndComp
Connection ~ 2150 3925
Wire Wire Line
	2150 3925 2200 3925
Connection ~ 1750 3925
Wire Wire Line
	1750 3925 1700 3925
$Comp
L fg_proj_lib:R R?
U 1 1 60523A3A
P 1550 3925
AR Path="/60523A3A" Ref="R?"  Part="1" 
AR Path="/5E0B731A/60523A3A" Ref="R?"  Part="1" 
AR Path="/5DAB097C/60523A3A" Ref="R9"  Part="1" 
F 0 "R9" H 1620 3971 50  0000 L CNN
F 1 "49.9" H 1620 3880 50  0000 L CNN
F 2 "fg_proj:R_1206_3216Metric" V 1480 3925 50  0001 C CNN
F 3 "~" H 1550 3925 50  0001 C CNN
F 4 "311-49.9FRCT-ND" H 1550 3925 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 1550 3925 50  0001 C CNN "Hersteller"
F 6 "RC1206FR-0749R9L" H 1550 3925 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 1550 3925 50  0001 C CNN "Anbieter"
	1    1550 3925
	0    1    -1   0   
$EndComp
$Comp
L fg_proj_lib:R R?
U 1 1 60522B67
P 2350 3925
AR Path="/60522B67" Ref="R?"  Part="1" 
AR Path="/5E0B731A/60522B67" Ref="R?"  Part="1" 
AR Path="/5DAB097C/60522B67" Ref="R8"  Part="1" 
F 0 "R8" H 2420 3971 50  0000 L CNN
F 1 "49.9" H 2420 3880 50  0000 L CNN
F 2 "fg_proj:R_1206_3216Metric" V 2280 3925 50  0001 C CNN
F 3 "~" H 2350 3925 50  0001 C CNN
F 4 "311-49.9FRCT-ND" H 2350 3925 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 2350 3925 50  0001 C CNN "Hersteller"
F 6 "RC1206FR-0749R9L" H 2350 3925 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 2350 3925 50  0001 C CNN "Anbieter"
	1    2350 3925
	0    1    -1   0   
$EndComp
Wire Wire Line
	2150 3925 1975 3925
Wire Wire Line
	1875 3925 1750 3925
$Comp
L fg_proj_lib:Transformer_SP_1S_2S PWB2010-1
U 1 1 604AA265
P 1650 4700
F 0 "PWB2010-1" H 1650 5425 50  0000 C CNN
F 1 "PWB2010-1L_" H 1650 5334 50  0000 C CNN
F 2 "fg_proj:Transformer_NF_ETAL" H 1650 4700 50  0001 C CNN
F 3 "" H 1650 4700 50  0001 C CNN
F 4 "Coilcraft" H 1650 4700 50  0001 C CNN "Anbieter"
F 5 "PWB2010-1" H 1650 4700 50  0001 C CNN "Anbieter-Teilenummer"
F 6 "Coilcraft" H 1650 4700 50  0001 C CNN "Hersteller"
F 7 "PWB2010-1" H 1650 4700 50  0001 C CNN "Hersteller-Teilenummer"
F 8 "1465-1317-1-ND" H 1650 4700 50  0001 C CNN "Anbieter-Teilenummer_2"
F 9 "Digi-Key" H 1650 4700 50  0001 C CNN "Anbieter_2"
F 10 "MABAES0060" H 1650 4700 50  0001 C CNN "Hersteller-Teilenummer_2"
F 11 "MACOM Technology Solutions" H 1650 4700 50  0001 C CNN "Hersteller_2"
	1    1650 4700
	0    1    -1   0   
$EndComp
Text GLabel 7750 2225 0    50   Input ~ 0
FG_IO_SYNC
Wire Wire Line
	1975 3925 1975 3900
Wire Wire Line
	1875 3925 1875 3900
Text Label 1975 3900 1    50   ~ 0
IOUT_1-
Text Label 1875 3900 1    50   ~ 0
IOUT_1+
$Comp
L fg_proj_lib:+1V8 #PWR?
U 1 1 604C100B
P 1950 4300
AR Path="/604C100B" Ref="#PWR?"  Part="1" 
AR Path="/5DAB097C/604C100B" Ref="#PWR0118"  Part="1" 
F 0 "#PWR0118" H 1950 4150 50  0001 C CNN
F 1 "+1V8" V 1950 4525 50  0000 C CNN
F 2 "" H 1950 4300 50  0001 C CNN
F 3 "" H 1950 4300 50  0001 C CNN
	1    1950 4300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1750 4275 1750 4300
Wire Wire Line
	1750 3925 1750 3975
$Comp
L fg_proj_lib:R R?
U 1 1 604C0BC3
P 1750 4125
AR Path="/604C0BC3" Ref="R?"  Part="1" 
AR Path="/5E0B731A/604C0BC3" Ref="R?"  Part="1" 
AR Path="/5DAB097C/604C0BC3" Ref="R2"  Part="1" 
F 0 "R2" H 1820 4171 50  0000 L CNN
F 1 "0" H 1820 4080 50  0000 L CNN
F 2 "fg_proj:R_0603_1608Metric" V 1680 4125 50  0001 C CNN
F 3 "~" H 1750 4125 50  0001 C CNN
F 4 "CR0603-J/-000ELFCT-ND" H 1750 4125 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Bourns Inc." H 1750 4125 50  0001 C CNN "Hersteller"
F 6 "CR0603-J/-000ELF" H 1750 4125 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 1750 4125 50  0001 C CNN "Anbieter"
	1    1750 4125
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2150 3975 2150 3925
Wire Wire Line
	2150 4275 2150 4300
$Comp
L fg_proj_lib:R R?
U 1 1 604BBA72
P 2150 4125
AR Path="/604BBA72" Ref="R?"  Part="1" 
AR Path="/5E0B731A/604BBA72" Ref="R?"  Part="1" 
AR Path="/5DAB097C/604BBA72" Ref="R1"  Part="1" 
F 0 "R1" H 2220 4171 50  0000 L CNN
F 1 "0" H 2220 4080 50  0000 L CNN
F 2 "fg_proj:R_0603_1608Metric" V 2080 4125 50  0001 C CNN
F 3 "~" H 2150 4125 50  0001 C CNN
F 4 "CR0603-J/-000ELFCT-ND" H 2150 4125 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Bourns Inc." H 2150 4125 50  0001 C CNN "Hersteller"
F 6 "CR0603-J/-000ELF" H 2150 4125 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 2150 4125 50  0001 C CNN "Anbieter"
	1    2150 4125
	1    0    0    1   
$EndComp
Wire Wire Line
	1750 3625 1700 3625
Wire Wire Line
	2550 3925 2500 3925
Wire Wire Line
	1400 3925 1350 3925
$Comp
L fg_proj_lib:C C?
U 1 1 605BC86F
P 1125 5675
AR Path="/605BC86F" Ref="C?"  Part="1" 
AR Path="/5E0B731A/605BC86F" Ref="C?"  Part="1" 
AR Path="/5DA8B132/605BC86F" Ref="C?"  Part="1" 
AR Path="/5DAB097C/605BC86F" Ref="C36"  Part="1" 
F 0 "C36" H 1240 5721 50  0000 L CNN
F 1 "22p" H 1240 5630 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 1163 5525 50  0001 C CNN
F 3 "~" H 1125 5675 50  0001 C CNN
F 4 "311-3330-1-ND" H 1125 5675 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CC0402FRNPO9BN220" H 1125 5675 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Yageo" H 1125 5675 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 1125 5675 50  0001 C CNN "Anbieter"
	1    1125 5675
	0    1    -1   0   
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 605BD590
P 1125 6150
AR Path="/605BD590" Ref="C?"  Part="1" 
AR Path="/5E0B731A/605BD590" Ref="C?"  Part="1" 
AR Path="/5DA8B132/605BD590" Ref="C?"  Part="1" 
AR Path="/5DAB097C/605BD590" Ref="C34"  Part="1" 
F 0 "C34" H 1240 6196 50  0000 L CNN
F 1 "33p" H 1240 6105 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 1163 6000 50  0001 C CNN
F 3 "~" H 1125 6150 50  0001 C CNN
F 4 "311-3732-1-ND" H 1125 6150 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CC0402FRNPO9BN330" H 1125 6150 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Yageo" H 1125 6150 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 1125 6150 50  0001 C CNN "Anbieter"
	1    1125 6150
	0    1    -1   0   
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 605BDA2A
P 1125 6675
AR Path="/605BDA2A" Ref="C?"  Part="1" 
AR Path="/5E0B731A/605BDA2A" Ref="C?"  Part="1" 
AR Path="/5DA8B132/605BDA2A" Ref="C?"  Part="1" 
AR Path="/5DAB097C/605BDA2A" Ref="C29"  Part="1" 
F 0 "C29" H 1240 6721 50  0000 L CNN
F 1 "27p" H 1240 6630 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 1163 6525 50  0001 C CNN
F 3 "~" H 1125 6675 50  0001 C CNN
F 4 "311-1644-1-ND" H 1125 6675 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CC0402FRNPO9BN270" H 1125 6675 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Yageo" H 1125 6675 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 1125 6675 50  0001 C CNN "Anbieter"
	1    1125 6675
	0    1    -1   0   
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 605BDEBD
P 1125 7150
AR Path="/605BDEBD" Ref="C?"  Part="1" 
AR Path="/5E0B731A/605BDEBD" Ref="C?"  Part="1" 
AR Path="/5DA8B132/605BDEBD" Ref="C?"  Part="1" 
AR Path="/5DAB097C/605BDEBD" Ref="C8"  Part="1" 
F 0 "C8" H 1240 7196 50  0000 L CNN
F 1 "13p" H 1240 7105 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 1163 7000 50  0001 C CNN
F 3 "~" H 1125 7150 50  0001 C CNN
F 4 "399-8946-1-ND" H 1125 7150 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "C0402C130J5GACTU" H 1125 7150 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "KEMET" H 1125 7150 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 1125 7150 50  0001 C CNN "Anbieter"
	1    1125 7150
	0    1    -1   0   
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 605BE5BE
P 2150 5900
AR Path="/605BE5BE" Ref="C?"  Part="1" 
AR Path="/5E0B731A/605BE5BE" Ref="C?"  Part="1" 
AR Path="/5DA8B132/605BE5BE" Ref="C?"  Part="1" 
AR Path="/5DAB097C/605BE5BE" Ref="C35"  Part="1" 
F 0 "C35" H 2265 5946 50  0000 L CNN
F 1 "2.2p" H 2265 5855 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 2188 5750 50  0001 C CNN
F 3 "~" H 2150 5900 50  0001 C CNN
F 4 "311-1618-1-ND" H 2150 5900 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 2150 5900 50  0001 C CNN "Hersteller"
F 6 "CC0402BRNPO9BN2R2" H 2150 5900 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 2150 5900 50  0001 C CNN "Anbieter"
	1    2150 5900
	1    0    0    1   
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 605BF4D3
P 2150 6425
AR Path="/605BF4D3" Ref="C?"  Part="1" 
AR Path="/5E0B731A/605BF4D3" Ref="C?"  Part="1" 
AR Path="/5DA8B132/605BF4D3" Ref="C?"  Part="1" 
AR Path="/5DAB097C/605BF4D3" Ref="C33"  Part="1" 
F 0 "C33" H 2265 6471 50  0000 L CNN
F 1 "6.8p" H 2265 6380 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 2188 6275 50  0001 C CNN
F 3 "~" H 2150 6425 50  0001 C CNN
F 4 "311-1626-1-ND" H 2150 6425 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 2150 6425 50  0001 C CNN "Hersteller"
F 6 "CC0402BRNPO9BN6R8" H 2150 6425 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 2150 6425 50  0001 C CNN "Anbieter"
	1    2150 6425
	1    0    0    1   
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 605BF876
P 2150 6925
AR Path="/605BF876" Ref="C?"  Part="1" 
AR Path="/5E0B731A/605BF876" Ref="C?"  Part="1" 
AR Path="/5DA8B132/605BF876" Ref="C?"  Part="1" 
AR Path="/5DAB097C/605BF876" Ref="C20"  Part="1" 
F 0 "C20" H 2265 6971 50  0000 L CNN
F 1 "13p" H 2265 6880 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 2188 6775 50  0001 C CNN
F 3 "~" H 2150 6925 50  0001 C CNN
F 4 "399-8946-1-ND" H 2150 6925 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "C0402C130J5GACTU" H 2150 6925 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "KEMET" H 2150 6925 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 2150 6925 50  0001 C CNN "Anbieter"
	1    2150 6925
	1    0    0    1   
$EndComp
$Comp
L fg_proj_lib:L L4
U 1 1 605C0285
P 1700 5900
F 0 "L4" V 1850 5975 50  0000 R CNN
F 1 "68n" V 1775 5975 50  0000 R CNN
F 2 "fg_proj:1008HQ39NXGLB" H 1700 5900 50  0001 C CNN
F 3 "~" H 1700 5900 50  0001 C CNN
F 4 "490-18513-1-ND" H 1700 5900 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Murata Electronics" H 1700 5900 50  0001 C CNN "Hersteller"
F 6 "LQW2UAS68NJ0CL" H 1700 5900 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 1700 5900 50  0001 C CNN "Anbieter"
	1    1700 5900
	1    0    0    1   
$EndComp
$Comp
L fg_proj_lib:L L3
U 1 1 605C117A
P 1700 6425
F 0 "L3" V 1850 6500 50  0000 R CNN
F 1 "56n" V 1775 6500 50  0000 R CNN
F 2 "fg_proj:1008HQ39NXGLB" H 1700 6425 50  0001 C CNN
F 3 "~" H 1700 6425 50  0001 C CNN
F 4 "490-18510-1-ND" H 1700 6425 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Murata Electronics" H 1700 6425 50  0001 C CNN "Hersteller"
F 6 "LQW2UAS56NJ0CL" H 1700 6425 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 1700 6425 50  0001 C CNN "Anbieter"
	1    1700 6425
	1    0    0    1   
$EndComp
$Comp
L fg_proj_lib:L L2
U 1 1 605C16E1
P 1700 6925
F 0 "L2" V 1850 7000 50  0000 R CNN
F 1 "39n" V 1775 7000 50  0000 R CNN
F 2 "fg_proj:1008HQ39NXGLB" H 1700 6925 50  0001 C CNN
F 3 "~" H 1700 6925 50  0001 C CNN
F 4 "490-18498-1-ND" H 1700 6925 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Murata Electronics" H 1700 6925 50  0001 C CNN "Hersteller"
F 6 "LQW2UAS39NJ0CL" H 1700 6925 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 1700 6925 50  0001 C CNN "Anbieter"
	1    1700 6925
	1    0    0    1   
$EndComp
Wire Wire Line
	1275 6150 1700 6150
Wire Wire Line
	2150 6150 2150 6050
Wire Wire Line
	2150 6675 2150 6575
Wire Wire Line
	2150 7150 2150 7075
Wire Wire Line
	2150 7150 1700 7150
Wire Wire Line
	975  7150 900  7150
Wire Wire Line
	900  7150 900  6675
Wire Wire Line
	900  5675 975  5675
Wire Wire Line
	975  6675 900  6675
Connection ~ 900  6675
Wire Wire Line
	900  6675 900  6400
Wire Wire Line
	975  6150 900  6150
Connection ~ 900  6150
Wire Wire Line
	900  6150 900  5675
Wire Wire Line
	2150 6675 1700 6675
Wire Wire Line
	1700 7075 1700 7150
Connection ~ 1700 7150
Wire Wire Line
	1700 6775 1700 6675
Connection ~ 1700 6675
Wire Wire Line
	1700 6675 1275 6675
Wire Wire Line
	1700 6675 1700 6575
Wire Wire Line
	1700 6275 1700 6150
Connection ~ 1700 6150
Wire Wire Line
	1700 6150 2150 6150
Wire Wire Line
	1700 6050 1700 6150
Wire Wire Line
	1700 5750 1700 5675
Wire Wire Line
	1700 5675 1275 5675
Wire Wire Line
	2150 6775 2150 6675
Connection ~ 2150 6675
Wire Wire Line
	2150 6275 2150 6150
Connection ~ 2150 6150
Wire Wire Line
	2150 5750 2150 5675
Wire Wire Line
	2150 5675 1700 5675
Connection ~ 1700 5675
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 60603088
P 1750 5100
AR Path="/60603088" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/60603088" Ref="#PWR?"  Part="1" 
AR Path="/5DAB097C/60603088" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 1750 4850 50  0001 C CNN
F 1 "GND" H 1754 4945 50  0000 C CNN
F 2 "" H 1750 5100 50  0001 C CNN
F 3 "" H 1750 5100 50  0001 C CNN
	1    1750 5100
	-1   0    0    -1  
$EndComp
$Comp
L fg_proj_lib:Conn_Coaxial J2
U 1 1 6060D76E
P 2825 6650
F 0 "J2" H 2753 6888 50  0000 C CNN
F 1 "Conn_Coaxial" H 2753 6797 50  0000 C CNN
F 2 "fg_proj:SMA_Amphenol_132291_Vertical" H 2825 6650 50  0001 C CNN
F 3 " ~" H 2825 6650 50  0001 C CNN
F 4 "2057-RF2-04A-T-00-50-G-ND" H 2825 6650 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Adam Tech" H 2825 6650 50  0001 C CNN "Hersteller"
F 6 "RF2-04A-T-00-50-G" H 2825 6650 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 2825 6650 50  0001 C CNN "Anbieter"
	1    2825 6650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2825 6850 2825 7150
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 60614974
P 3075 6650
AR Path="/60614974" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/60614974" Ref="#PWR?"  Part="1" 
AR Path="/5DAB097C/60614974" Ref="#PWR0137"  Part="1" 
F 0 "#PWR0137" H 3075 6400 50  0001 C CNN
F 1 "GND" H 3079 6495 50  0000 C CNN
F 2 "" H 3075 6650 50  0001 C CNN
F 3 "" H 3075 6650 50  0001 C CNN
	1    3075 6650
	0    -1   1    0   
$EndComp
Wire Wire Line
	3075 6650 3025 6650
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 60627A85
P 850 6400
AR Path="/60627A85" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/60627A85" Ref="#PWR?"  Part="1" 
AR Path="/5DAB097C/60627A85" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0138" H 850 6150 50  0001 C CNN
F 1 "GND" H 854 6245 50  0000 C CNN
F 2 "" H 850 6400 50  0001 C CNN
F 3 "" H 850 6400 50  0001 C CNN
	1    850  6400
	0    1    -1   0   
$EndComp
Connection ~ 900  6400
Wire Wire Line
	900  6400 900  6150
Wire Wire Line
	900  6400 850  6400
$Comp
L fg_proj_lib:Conn_Coaxial J6
U 1 1 6063D478
P 3875 6625
F 0 "J6" H 3803 6863 50  0000 C CNN
F 1 "Conn_Coaxial" H 3803 6772 50  0000 C CNN
F 2 "fg_proj:SMA_Amphenol_132291_Vertical" H 3875 6625 50  0001 C CNN
F 3 " ~" H 3875 6625 50  0001 C CNN
F 4 "2057-RF2-04A-T-00-50-G-ND" H 3875 6625 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Adam Tech" H 3875 6625 50  0001 C CNN "Hersteller"
F 6 "RF2-04A-T-00-50-G" H 3875 6625 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 3875 6625 50  0001 C CNN "Anbieter"
	1    3875 6625
	-1   0    0    -1  
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 6063D47E
P 3875 7000
AR Path="/6063D47E" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/6063D47E" Ref="#PWR?"  Part="1" 
AR Path="/5DAB097C/6063D47E" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 3875 6750 50  0001 C CNN
F 1 "GND" H 3879 6845 50  0000 C CNN
F 2 "" H 3875 7000 50  0001 C CNN
F 3 "" H 3875 7000 50  0001 C CNN
	1    3875 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3875 7000 3875 6825
Wire Wire Line
	4075 6625 4350 6625
$Comp
L fg_proj_lib:C C?
U 1 1 606A541C
P 1925 1250
AR Path="/606A541C" Ref="C?"  Part="1" 
AR Path="/5E0B731A/606A541C" Ref="C?"  Part="1" 
AR Path="/5DA8B132/606A541C" Ref="C?"  Part="1" 
AR Path="/5DAB097C/606A541C" Ref="C46"  Part="1" 
F 0 "C46" H 2040 1296 50  0000 L CNN
F 1 "22p" H 2040 1205 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 1963 1100 50  0001 C CNN
F 3 "~" H 1925 1250 50  0001 C CNN
F 4 "311-3330-1-ND" H 1925 1250 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CC0402FRNPO9BN220" H 1925 1250 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Yageo" H 1925 1250 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 1925 1250 50  0001 C CNN "Anbieter"
	1    1925 1250
	0    1    1    0   
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 606A631A
P 1925 1875
AR Path="/606A631A" Ref="C?"  Part="1" 
AR Path="/5E0B731A/606A631A" Ref="C?"  Part="1" 
AR Path="/5DA8B132/606A631A" Ref="C?"  Part="1" 
AR Path="/5DAB097C/606A631A" Ref="C43"  Part="1" 
F 0 "C43" H 2040 1921 50  0000 L CNN
F 1 "33p" H 2040 1830 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 1963 1725 50  0001 C CNN
F 3 "~" H 1925 1875 50  0001 C CNN
F 4 "311-3732-1-ND" H 1925 1875 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CC0402FRNPO9BN330" H 1925 1875 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Yageo" H 1925 1875 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 1925 1875 50  0001 C CNN "Anbieter"
	1    1925 1875
	0    1    1    0   
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 606A6690
P 2450 1650
AR Path="/606A6690" Ref="C?"  Part="1" 
AR Path="/5E0B731A/606A6690" Ref="C?"  Part="1" 
AR Path="/5DA8B132/606A6690" Ref="C?"  Part="1" 
AR Path="/5DAB097C/606A6690" Ref="C44"  Part="1" 
F 0 "C44" H 2565 1696 50  0000 L CNN
F 1 "39p" H 2565 1605 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 2488 1500 50  0001 C CNN
F 3 "~" H 2450 1650 50  0001 C CNN
F 4 "311-3733-1-ND" H 2450 1650 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CC0402FRNPO9BN390" H 2450 1650 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Yageo" H 2450 1650 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 2450 1650 50  0001 C CNN "Anbieter"
	1    2450 1650
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 606A6BC7
P 1475 2275
AR Path="/606A6BC7" Ref="C?"  Part="1" 
AR Path="/5E0B731A/606A6BC7" Ref="C?"  Part="1" 
AR Path="/5DA8B132/606A6BC7" Ref="C?"  Part="1" 
AR Path="/5DAB097C/606A6BC7" Ref="C42"  Part="1" 
F 0 "C42" H 1590 2321 50  0000 L CNN
F 1 "22p" H 1590 2230 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 1513 2125 50  0001 C CNN
F 3 "~" H 1475 2275 50  0001 C CNN
F 4 "311-3330-1-ND" H 1475 2275 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CC0402FRNPO9BN220" H 1475 2275 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Yageo" H 1475 2275 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 1475 2275 50  0001 C CNN "Anbieter"
	1    1475 2275
	-1   0    0    1   
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 606A6EFB
P 1475 1650
AR Path="/606A6EFB" Ref="C?"  Part="1" 
AR Path="/5E0B731A/606A6EFB" Ref="C?"  Part="1" 
AR Path="/5DA8B132/606A6EFB" Ref="C?"  Part="1" 
AR Path="/5DAB097C/606A6EFB" Ref="C45"  Part="1" 
F 0 "C45" H 1590 1696 50  0000 L CNN
F 1 "39p" H 1590 1605 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 1513 1500 50  0001 C CNN
F 3 "~" H 1475 1650 50  0001 C CNN
F 4 "311-3733-1-ND" H 1475 1650 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CC0402FRNPO9BN390" H 1475 1650 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Yageo" H 1475 1650 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 1475 1650 50  0001 C CNN "Anbieter"
	1    1475 1650
	-1   0    0    1   
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 606A74AF
P 1925 3075
AR Path="/606A74AF" Ref="C?"  Part="1" 
AR Path="/5E0B731A/606A74AF" Ref="C?"  Part="1" 
AR Path="/5DA8B132/606A74AF" Ref="C?"  Part="1" 
AR Path="/5DAB097C/606A74AF" Ref="C37"  Part="1" 
F 0 "C37" H 2040 3121 50  0000 L CNN
F 1 "33p" H 2040 3030 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 1963 2925 50  0001 C CNN
F 3 "~" H 1925 3075 50  0001 C CNN
F 4 "311-3732-1-ND" H 1925 3075 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CC0402FRNPO9BN330" H 1925 3075 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Yageo" H 1925 3075 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 1925 3075 50  0001 C CNN "Anbieter"
	1    1925 3075
	0    1    1    0   
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 606A7940
P 1925 2500
AR Path="/606A7940" Ref="C?"  Part="1" 
AR Path="/5E0B731A/606A7940" Ref="C?"  Part="1" 
AR Path="/5DA8B132/606A7940" Ref="C?"  Part="1" 
AR Path="/5DAB097C/606A7940" Ref="C40"  Part="1" 
F 0 "C40" H 2040 2546 50  0000 L CNN
F 1 "39p" H 2040 2455 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 1963 2350 50  0001 C CNN
F 3 "~" H 1925 2500 50  0001 C CNN
F 4 "311-3733-1-ND" H 1925 2500 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CC0402FRNPO9BN390" H 1925 2500 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Yageo" H 1925 2500 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 1925 2500 50  0001 C CNN "Anbieter"
	1    1925 2500
	0    1    1    0   
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 606A7C96
P 2450 2275
AR Path="/606A7C96" Ref="C?"  Part="1" 
AR Path="/5E0B731A/606A7C96" Ref="C?"  Part="1" 
AR Path="/5DA8B132/606A7C96" Ref="C?"  Part="1" 
AR Path="/5DAB097C/606A7C96" Ref="C41"  Part="1" 
F 0 "C41" H 2565 2321 50  0000 L CNN
F 1 "22p" H 2565 2230 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 2488 2125 50  0001 C CNN
F 3 "~" H 2450 2275 50  0001 C CNN
F 4 "311-3330-1-ND" H 2450 2275 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CC0402FRNPO9BN220" H 2450 2275 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Yageo" H 2450 2275 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 2450 2275 50  0001 C CNN "Anbieter"
	1    2450 2275
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 606A808D
P 1475 2850
AR Path="/606A808D" Ref="C?"  Part="1" 
AR Path="/5E0B731A/606A808D" Ref="C?"  Part="1" 
AR Path="/5DA8B132/606A808D" Ref="C?"  Part="1" 
AR Path="/5DAB097C/606A808D" Ref="C39"  Part="1" 
F 0 "C39" H 1590 2896 50  0000 L CNN
F 1 "6.8p" H 1590 2805 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 1513 2700 50  0001 C CNN
F 3 "~" H 1475 2850 50  0001 C CNN
F 4 "311-1626-1-ND" H 1475 2850 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 1475 2850 50  0001 C CNN "Hersteller"
F 6 "CC0402BRNPO9BN6R8" H 1475 2850 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 1475 2850 50  0001 C CNN "Anbieter"
	1    1475 2850
	-1   0    0    1   
$EndComp
$Comp
L fg_proj_lib:L L9
U 1 1 606A9424
P 2150 1650
F 0 "L9" V 2300 1725 50  0000 R CNN
F 1 "18n" V 2225 1725 50  0000 R CNN
F 2 "fg_proj:L_0603_1608Metric" H 2150 1650 50  0001 C CNN
F 3 "~" H 2150 1650 50  0001 C CNN
F 4 "490-1172-1-ND" H 2150 1650 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Murata Electronics" H 2150 1650 50  0001 C CNN "Hersteller"
F 6 "LQW18AN18NJ00D" H 2150 1650 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 2150 1650 50  0001 C CNN "Anbieter"
	1    2150 1650
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:L L10
U 1 1 606AA2AE
P 1700 1650
F 0 "L10" V 1850 1725 50  0000 R CNN
F 1 "18n" V 1775 1725 50  0000 R CNN
F 2 "fg_proj:L_0603_1608Metric" H 1700 1650 50  0001 C CNN
F 3 "~" H 1700 1650 50  0001 C CNN
F 4 "490-1172-1-ND" H 1700 1650 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Murata Electronics" H 1700 1650 50  0001 C CNN "Hersteller"
F 6 "LQW18AN18NJ00D" H 1700 1650 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 1700 1650 50  0001 C CNN "Anbieter"
	1    1700 1650
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:L L7
U 1 1 606AA847
P 2150 2275
F 0 "L7" V 2300 2350 50  0000 R CNN
F 1 "12n" V 2225 2350 50  0000 R CNN
F 2 "fg_proj:L_0603_1608Metric" H 2150 2275 50  0001 C CNN
F 3 "~" H 2150 2275 50  0001 C CNN
F 4 "490-1170-1-ND" H 2150 2275 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Murata Electronics" H 2150 2275 50  0001 C CNN "Hersteller"
F 6 "LQW18AN12NJ00D" H 2150 2275 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 2150 2275 50  0001 C CNN "Anbieter"
	1    2150 2275
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:L L8
U 1 1 606AACCB
P 1700 2275
F 0 "L8" V 1850 2350 50  0000 R CNN
F 1 "12n" V 1775 2350 50  0000 R CNN
F 2 "fg_proj:L_0603_1608Metric" H 1700 2275 50  0001 C CNN
F 3 "~" H 1700 2275 50  0001 C CNN
F 4 "490-1170-1-ND" H 1700 2275 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Murata Electronics" H 1700 2275 50  0001 C CNN "Hersteller"
F 6 "LQW18AN12NJ00D" H 1700 2275 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 1700 2275 50  0001 C CNN "Anbieter"
	1    1700 2275
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:L L5
U 1 1 606AB0DD
P 2150 2850
F 0 "L5" V 2300 2925 50  0000 R CNN
F 1 "20n" V 2225 2925 50  0000 R CNN
F 2 "fg_proj:L_0603_1608Metric" H 2150 2850 50  0001 C CNN
F 3 "~" H 2150 2850 50  0001 C CNN
F 4 "490-6873-1-ND" H 2150 2850 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Murata Electronics" H 2150 2850 50  0001 C CNN "Hersteller"
F 6 "LQW18AN20NJ00D" H 2150 2850 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 2150 2850 50  0001 C CNN "Anbieter"
	1    2150 2850
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:L L6
U 1 1 606AB881
P 1700 2850
F 0 "L6" V 1850 2925 50  0000 R CNN
F 1 "20n" V 1775 2925 50  0000 R CNN
F 2 "fg_proj:L_0603_1608Metric" H 1700 2850 50  0001 C CNN
F 3 "~" H 1700 2850 50  0001 C CNN
F 4 "490-6873-1-ND" H 1700 2850 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Murata Electronics" H 1700 2850 50  0001 C CNN "Hersteller"
F 6 "LQW18AN20NJ00D" H 1700 2850 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 1700 2850 50  0001 C CNN "Anbieter"
	1    1700 2850
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:R R?
U 1 1 606ABC8D
P 1925 1000
AR Path="/606ABC8D" Ref="R?"  Part="1" 
AR Path="/5E0B731A/606ABC8D" Ref="R?"  Part="1" 
AR Path="/5DAB097C/606ABC8D" Ref="R14"  Part="1" 
F 0 "R14" H 1995 1046 50  0000 L CNN
F 1 "49.9" H 1995 955 50  0000 L CNN
F 2 "fg_proj:R_1206_3216Metric" V 1855 1000 50  0001 C CNN
F 3 "~" H 1925 1000 50  0001 C CNN
F 4 "311-49.9FRCT-ND" H 1925 1000 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 1925 1000 50  0001 C CNN "Hersteller"
F 6 "RC1206FR-0749R9L" H 1925 1000 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 1925 1000 50  0001 C CNN "Anbieter"
	1    1925 1000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1775 2500 1700 2500
Wire Wire Line
	1475 2500 1475 2425
Wire Wire Line
	1700 2425 1700 2500
Connection ~ 1700 2500
Wire Wire Line
	1700 2500 1475 2500
Wire Wire Line
	1700 2700 1700 2500
Wire Wire Line
	1475 2700 1475 2500
Connection ~ 1475 2500
Wire Wire Line
	1475 2125 1475 1875
Wire Wire Line
	1775 1875 1700 1875
Connection ~ 1475 1875
Wire Wire Line
	1475 1875 1475 1800
Wire Wire Line
	1700 1800 1700 1875
Connection ~ 1700 1875
Wire Wire Line
	1700 1875 1475 1875
Wire Wire Line
	1700 2125 1700 1875
Wire Wire Line
	1475 3000 1475 3075
Wire Wire Line
	1475 3075 1700 3075
Wire Wire Line
	1700 3000 1700 3075
Connection ~ 1700 3075
Wire Wire Line
	1700 3075 1775 3075
Wire Wire Line
	2150 3000 2150 3075
Wire Wire Line
	2150 3075 2075 3075
Wire Wire Line
	2450 3000 2450 3075
Wire Wire Line
	2450 3075 2150 3075
Connection ~ 2150 3075
Wire Wire Line
	2150 2425 2150 2500
Wire Wire Line
	2450 2700 2450 2500
Wire Wire Line
	2075 2500 2150 2500
Connection ~ 2150 2500
Wire Wire Line
	2150 2500 2150 2700
Wire Wire Line
	2150 2500 2450 2500
Connection ~ 2450 2500
Wire Wire Line
	2450 2500 2450 2425
Wire Wire Line
	2150 1800 2150 1875
Wire Wire Line
	2075 1875 2150 1875
Connection ~ 2150 1875
Wire Wire Line
	2150 1875 2150 2125
Wire Wire Line
	2450 1800 2450 1875
Wire Wire Line
	2150 1875 2450 1875
Connection ~ 2450 1875
Wire Wire Line
	2450 1875 2450 2125
Wire Wire Line
	2450 1500 2450 1250
Wire Wire Line
	2450 1250 2150 1250
Wire Wire Line
	1775 1250 1700 1250
Wire Wire Line
	1475 1250 1475 1500
Wire Wire Line
	1700 1500 1700 1250
Connection ~ 1700 1250
Wire Wire Line
	1700 1250 1475 1250
Wire Wire Line
	2150 1500 2150 1250
Connection ~ 2150 1250
Wire Wire Line
	2150 1250 2075 1250
Wire Wire Line
	2150 1250 2150 1000
Wire Wire Line
	2150 1000 2075 1000
Wire Wire Line
	1775 1000 1700 1000
Wire Wire Line
	1700 1000 1700 1250
Text GLabel 7750 2925 0    50   Input ~ 0
COMP_IN
Text GLabel 7750 3025 0    50   Input ~ 0
COMP_IN*
Text GLabel 1575 1000 0    50   Input ~ 0
COMP_IN
Text GLabel 2275 1000 2    50   Input ~ 0
COMP_IN*
Wire Wire Line
	2150 1000 2275 1000
Connection ~ 2150 1000
Wire Wire Line
	1700 1000 1575 1000
Connection ~ 1700 1000
Wire Wire Line
	1700 3500 1700 3625
Wire Wire Line
	2150 3925 2150 3500
Wire Wire Line
	2150 3200 2150 3075
Wire Wire Line
	1700 3200 1700 3075
Connection ~ 2150 5675
Wire Wire Line
	1700 7150 1275 7150
Wire Wire Line
	2825 7150 2150 7150
Connection ~ 2150 7150
Text GLabel 7750 2825 0    50   Input ~ 0
COMP_OUT
Text GLabel 4350 6625 2    50   Input ~ 0
COMP_OUT
$Comp
L fg_proj_lib:C C?
U 1 1 60A3B3F6
P 7050 3600
AR Path="/60A3B3F6" Ref="C?"  Part="1" 
AR Path="/5E0B731A/60A3B3F6" Ref="C?"  Part="1" 
AR Path="/5DA8B132/60A3B3F6" Ref="C?"  Part="1" 
AR Path="/5DAB097C/60A3B3F6" Ref="C48"  Part="1" 
F 0 "C48" H 7165 3646 50  0000 L CNN
F 1 "1u" H 7175 3550 50  0000 L CNN
F 2 "fg_proj:C_1206_3216Metric" H 7088 3450 50  0001 C CNN
F 3 "~" H 7050 3600 50  0001 C CNN
F 4 "1276-3086-1-ND" H 7050 3600 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Samsung Electro-Mechanics" H 7050 3600 50  0001 C CNN "Hersteller"
F 6 "CL31B105KAHNFNE" H 7050 3600 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 7050 3600 50  0001 C CNN "Anbieter"
	1    7050 3600
	0    1    -1   0   
$EndComp
$Comp
L fg_proj_lib:R R?
U 1 1 60A3DCC2
P 7050 3750
AR Path="/60A3DCC2" Ref="R?"  Part="1" 
AR Path="/5E0B731A/60A3DCC2" Ref="R?"  Part="1" 
AR Path="/5DAB097C/60A3DCC2" Ref="R17"  Part="1" 
F 0 "R17" H 7120 3796 50  0000 L CNN
F 1 "3.92k" H 7120 3705 50  0000 L CNN
F 2 "fg_proj:R_0603_1608Metric" V 6980 3750 50  0001 C CNN
F 3 "~" H 7050 3750 50  0001 C CNN
F 4 "311-3.92KHRCT-ND" H 7050 3750 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 7050 3750 50  0001 C CNN "Hersteller"
F 6 "RC0603FR-073K92L" H 7050 3750 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 7050 3750 50  0001 C CNN "Anbieter"
	1    7050 3750
	0    -1   1    0   
$EndComp
Wire Wire Line
	7200 3625 7200 3600
Wire Wire Line
	7750 3725 7200 3725
Wire Wire Line
	7200 3725 7200 3750
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 60A55BCC
P 6750 3675
AR Path="/60A55BCC" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/60A55BCC" Ref="#PWR?"  Part="1" 
AR Path="/5DAB097C/60A55BCC" Ref="#PWR0140"  Part="1" 
F 0 "#PWR0140" H 6750 3425 50  0001 C CNN
F 1 "GND" H 6754 3520 50  0000 C CNN
F 2 "" H 6750 3675 50  0001 C CNN
F 3 "" H 6750 3675 50  0001 C CNN
	1    6750 3675
	0    1    -1   0   
$EndComp
Wire Wire Line
	6900 3600 6850 3600
Wire Wire Line
	6850 3600 6850 3675
Wire Wire Line
	6850 3750 6900 3750
Wire Wire Line
	6750 3675 6850 3675
Connection ~ 6850 3675
Wire Wire Line
	6850 3675 6850 3750
$Comp
L fg_proj_lib:R R?
U 1 1 60A6C996
P 7050 3275
AR Path="/60A6C996" Ref="R?"  Part="1" 
AR Path="/5E0B731A/60A6C996" Ref="R?"  Part="1" 
AR Path="/5DAB097C/60A6C996" Ref="R16"  Part="1" 
F 0 "R16" H 7120 3321 50  0000 L CNN
F 1 "243" H 7120 3230 50  0000 L CNN
F 2 "fg_proj:R_1206_3216Metric" V 6980 3275 50  0001 C CNN
F 3 "~" H 7050 3275 50  0001 C CNN
F 4 "311-243FRCT-ND" H 7050 3275 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 7050 3275 50  0001 C CNN "Hersteller"
F 6 "RC1206FR-07243RL" H 7050 3275 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 7050 3275 50  0001 C CNN "Anbieter"
	1    7050 3275
	0    1    -1   0   
$EndComp
Wire Wire Line
	7750 3525 7325 3525
Wire Wire Line
	7325 3525 7325 3275
Wire Wire Line
	7325 3275 7200 3275
$Comp
L fg_proj_lib:C C?
U 1 1 60A7946C
P 6675 3275
AR Path="/60A7946C" Ref="C?"  Part="1" 
AR Path="/5E0B731A/60A7946C" Ref="C?"  Part="1" 
AR Path="/5DA8B132/60A7946C" Ref="C?"  Part="1" 
AR Path="/5DAB097C/60A7946C" Ref="C47"  Part="1" 
F 0 "C47" H 6790 3321 50  0000 L CNN
F 1 "10n" H 6800 3225 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 6713 3125 50  0001 C CNN
F 3 "~" H 6675 3275 50  0001 C CNN
F 4 "311-1349-1-ND" H 6675 3275 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CC0402KRX7R9BB103" H 6675 3275 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Yageo" H 6675 3275 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 6675 3275 50  0001 C CNN "Anbieter"
	1    6675 3275
	0    1    -1   0   
$EndComp
Wire Wire Line
	6900 3275 6825 3275
Wire Wire Line
	6525 3275 6450 3275
Wire Wire Line
	7750 3625 7200 3625
$Comp
L fg_proj_lib:Conn_Coaxial J7
U 1 1 60540068
P 5100 6625
F 0 "J7" H 5028 6863 50  0000 C CNN
F 1 "Conn_Coaxial" H 5028 6772 50  0000 C CNN
F 2 "fg_proj:SMA_Amphenol_132291_Vertical" H 5100 6625 50  0001 C CNN
F 3 " ~" H 5100 6625 50  0001 C CNN
F 4 "2057-RF2-04A-T-00-50-G-ND" H 5100 6625 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Adam Tech" H 5100 6625 50  0001 C CNN "Hersteller"
F 6 "RF2-04A-T-00-50-G" H 5100 6625 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 5100 6625 50  0001 C CNN "Anbieter"
	1    5100 6625
	-1   0    0    -1  
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 6054006E
P 5100 7000
AR Path="/6054006E" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/6054006E" Ref="#PWR?"  Part="1" 
AR Path="/5DAB097C/6054006E" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 5100 6750 50  0001 C CNN
F 1 "GND" H 5104 6845 50  0000 C CNN
F 2 "" H 5100 7000 50  0001 C CNN
F 3 "" H 5100 7000 50  0001 C CNN
	1    5100 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 7000 5100 6825
Wire Wire Line
	5300 6625 5575 6625
Text GLabel 7750 4125 0    50   Input ~ 0
CRYSTALOUT
Text GLabel 5575 6625 2    50   Input ~ 0
CRYSTALOUT
$Comp
L fg_proj_lib:R R?
U 1 1 6054CCA0
P 6425 4425
AR Path="/6054CCA0" Ref="R?"  Part="1" 
AR Path="/5E0B731A/6054CCA0" Ref="R?"  Part="1" 
AR Path="/5DAB097C/6054CCA0" Ref="R19"  Part="1" 
F 0 "R19" H 6495 4471 50  0000 L CNN
F 1 "3.92k" H 6495 4380 50  0000 L CNN
F 2 "fg_proj:R_0603_1608Metric" V 6355 4425 50  0001 C CNN
F 3 "~" H 6425 4425 50  0001 C CNN
F 4 "311-3.92KHRCT-ND" H 6425 4425 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 6425 4425 50  0001 C CNN "Hersteller"
F 6 "RC0603FR-073K92L" H 6425 4425 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 6425 4425 50  0001 C CNN "Anbieter"
	1    6425 4425
	-1   0    0    -1  
$EndComp
$Comp
L fg_proj_lib:R R?
U 1 1 6054F8F2
P 6425 4025
AR Path="/6054F8F2" Ref="R?"  Part="1" 
AR Path="/5E0B731A/6054F8F2" Ref="R?"  Part="1" 
AR Path="/5DAB097C/6054F8F2" Ref="R18"  Part="1" 
F 0 "R18" H 6495 4071 50  0000 L CNN
F 1 "3.92k" H 6495 3980 50  0000 L CNN
F 2 "fg_proj:R_0603_1608Metric" V 6355 4025 50  0001 C CNN
F 3 "~" H 6425 4025 50  0001 C CNN
F 4 "311-3.92KHRCT-ND" H 6425 4025 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 6425 4025 50  0001 C CNN "Hersteller"
F 6 "RC0603FR-073K92L" H 6425 4025 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 6425 4025 50  0001 C CNN "Anbieter"
	1    6425 4025
	-1   0    0    -1  
$EndComp
Text GLabel 6325 3700 0    50   Input ~ 0
CLKMODESELECT
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 60608F47
P 6425 4725
AR Path="/60608F47" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/60608F47" Ref="#PWR?"  Part="1" 
AR Path="/5DAB097C/60608F47" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 6425 4475 50  0001 C CNN
F 1 "GND" H 6429 4570 50  0000 C CNN
F 2 "" H 6425 4725 50  0001 C CNN
F 3 "" H 6425 4725 50  0001 C CNN
	1    6425 4725
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6425 4175 6425 4225
Connection ~ 6425 4225
Wire Wire Line
	6425 4225 7750 4225
Wire Wire Line
	6425 4225 6425 4275
Wire Wire Line
	6425 4575 6425 4650
Wire Wire Line
	6425 3875 6425 3700
Wire Wire Line
	6425 3700 6325 3700
$Comp
L fg_proj_lib:C C?
U 1 1 6065A5DB
P 6125 4450
AR Path="/6065A5DB" Ref="C?"  Part="1" 
AR Path="/5E0B731A/6065A5DB" Ref="C?"  Part="1" 
AR Path="/5DA8B132/6065A5DB" Ref="C?"  Part="1" 
AR Path="/5DAB097C/6065A5DB" Ref="C49"  Part="1" 
F 0 "C49" H 6240 4496 50  0000 L CNN
F 1 "100n" H 6240 4405 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 6163 4300 50  0001 C CNN
F 3 "~" H 6125 4450 50  0001 C CNN
F 4 "1276-6720-1-ND" H 6125 4450 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CL05B104KA5NNNC" H 6125 4450 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Samsung Electro-Mechanics" H 6125 4450 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 6125 4450 50  0001 C CNN "Anbieter"
	1    6125 4450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6125 4650 6125 4600
Wire Wire Line
	6125 4650 6425 4650
Connection ~ 6425 4650
Wire Wire Line
	6425 4650 6425 4725
Wire Wire Line
	6125 4300 6125 4225
Wire Wire Line
	6125 4225 6425 4225
$Comp
L fg_proj_lib:Conn_Coaxial J5
U 1 1 607AE9F5
P 3900 5575
F 0 "J5" H 3828 5813 50  0000 C CNN
F 1 "Conn_Coaxial" H 3828 5722 50  0000 C CNN
F 2 "fg_proj:SMA_Amphenol_132291_Vertical" H 3900 5575 50  0001 C CNN
F 3 " ~" H 3900 5575 50  0001 C CNN
F 4 "2057-RF2-04A-T-00-50-G-ND" H 3900 5575 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Adam Tech" H 3900 5575 50  0001 C CNN "Hersteller"
F 6 "RF2-04A-T-00-50-G" H 3900 5575 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 3900 5575 50  0001 C CNN "Anbieter"
	1    3900 5575
	-1   0    0    -1  
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 607AE9FB
P 3900 5950
AR Path="/607AE9FB" Ref="#PWR?"  Part="1" 
AR Path="/5DA8B132/607AE9FB" Ref="#PWR?"  Part="1" 
AR Path="/5DAB097C/607AE9FB" Ref="#PWR0146"  Part="1" 
F 0 "#PWR0146" H 3900 5700 50  0001 C CNN
F 1 "GND" H 3904 5795 50  0000 C CNN
F 2 "" H 3900 5950 50  0001 C CNN
F 3 "" H 3900 5950 50  0001 C CNN
	1    3900 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5950 3900 5775
Wire Wire Line
	4100 5575 4375 5575
Text GLabel 2750 5175 2    50   Input ~ 0
OUT_OHNE_FILTER
Text GLabel 4375 5575 2    50   Input ~ 0
OUT_OHNE_FILTER
$Comp
L fg_proj_lib:R R?
U 1 1 607FE817
P 2150 5375
AR Path="/607FE817" Ref="R?"  Part="1" 
AR Path="/5E0B731A/607FE817" Ref="R?"  Part="1" 
AR Path="/5DAB097C/607FE817" Ref="R20"  Part="1" 
F 0 "R20" H 2220 5421 50  0000 L CNN
F 1 "0" H 2220 5330 50  0000 L CNN
F 2 "fg_proj:R_0603_1608Metric" V 2080 5375 50  0001 C CNN
F 3 "~" H 2150 5375 50  0001 C CNN
F 4 "CR0603-J/-000ELFCT-ND" H 2150 5375 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Bourns Inc." H 2150 5375 50  0001 C CNN "Hersteller"
F 6 "CR0603-J/-000ELF" H 2150 5375 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 2150 5375 50  0001 C CNN "Anbieter"
	1    2150 5375
	1    0    0    1   
$EndComp
$Comp
L fg_proj_lib:R R?
U 1 1 607FEFDE
P 2425 5175
AR Path="/607FEFDE" Ref="R?"  Part="1" 
AR Path="/5E0B731A/607FEFDE" Ref="R?"  Part="1" 
AR Path="/5DAB097C/607FEFDE" Ref="R21"  Part="1" 
F 0 "R21" H 2495 5221 50  0000 L CNN
F 1 "0" H 2495 5130 50  0000 L CNN
F 2 "fg_proj:R_0603_1608Metric" V 2355 5175 50  0001 C CNN
F 3 "~" H 2425 5175 50  0001 C CNN
F 4 "CR0603-J/-000ELFCT-ND" H 2425 5175 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Bourns Inc." H 2425 5175 50  0001 C CNN "Hersteller"
F 6 "CR0603-J/-000ELF" H 2425 5175 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 2425 5175 50  0001 C CNN "Anbieter"
	1    2425 5175
	0    1    -1   0   
$EndComp
Wire Wire Line
	2150 5100 2150 5175
Wire Wire Line
	2150 5525 2150 5675
Wire Wire Line
	2275 5175 2150 5175
Connection ~ 2150 5175
Wire Wire Line
	2150 5175 2150 5225
Wire Wire Line
	2575 5175 2750 5175
$Comp
L fg_proj_lib:Net-Tie_2 NT6
U 1 1 60555542
P 8525 6025
F 0 "NT6" V 8571 5981 50  0000 R CNN
F 1 "NT6" V 8480 5981 50  0000 R CNN
F 2 "fg_proj:NetTie-2_SMD_Pad0.5mm" H 8525 6025 50  0001 C CNN
F 3 "~" H 8525 6025 50  0001 C CNN
	1    8525 6025
	0    -1   -1   0   
$EndComp
Text GLabel 8450 5850 0    50   Input ~ 0
XTAL_GND
Text GLabel 8600 4950 2    50   Input ~ 0
XTAL_GND
NoConn ~ 1950 5100
Wire Wire Line
	10425 2125 10425 2225
Wire Wire Line
	10350 2225 10425 2225
Connection ~ 10425 2225
Wire Wire Line
	10425 2225 10425 2325
$Comp
L fg_proj_lib:C C?
U 1 1 606A8F5B
P 2450 2850
AR Path="/606A8F5B" Ref="C?"  Part="1" 
AR Path="/5E0B731A/606A8F5B" Ref="C?"  Part="1" 
AR Path="/5DA8B132/606A8F5B" Ref="C?"  Part="1" 
AR Path="/5DAB097C/606A8F5B" Ref="C38"  Part="1" 
F 0 "C38" H 2565 2896 50  0000 L CNN
F 1 "6.8p" H 2565 2805 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 2488 2700 50  0001 C CNN
F 3 "~" H 2450 2850 50  0001 C CNN
F 4 "311-1626-1-ND" H 2450 2850 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 2450 2850 50  0001 C CNN "Hersteller"
F 6 "CC0402BRNPO9BN6R8" H 2450 2850 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 2450 2850 50  0001 C CNN "Anbieter"
	1    2450 2850
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:LFXTAL035268REEL Y1
U 1 1 606D99CD
P 8525 5400
F 0 "Y1" H 8100 6050 60  0000 L CNN
F 1 "LFXTAL035268REEL" H 8100 5950 60  0000 L CNN
F 2 "fg_proj:CFPX-180" H 8525 5000 60  0001 C CNN
F 3 "" H 8275 5400 60  0000 C CNN
F 4 "Digi-Key" H 8525 5400 50  0001 C CNN "Anbieter"
F 5 "1923-1295-1-ND" H 8525 5400 50  0001 C CNN "Anbieter-Teilenummer"
F 6 "IQD Frequency Products" H 8525 5400 50  0001 C CNN "Hersteller"
F 7 "LFXTAL035268REEL" H 8525 5400 50  0001 C CNN "Hersteller-Teilenummer"
	1    8525 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4950 8525 4950
Wire Wire Line
	8825 5400 8925 5400
Wire Wire Line
	8525 4950 8525 5200
Wire Wire Line
	8825 5775 8825 5850
Wire Wire Line
	8825 5400 8825 5475
Wire Wire Line
	8675 5400 8825 5400
Connection ~ 8825 5400
Wire Wire Line
	8175 5400 8250 5400
Wire Wire Line
	8250 4950 8250 5025
Wire Wire Line
	8250 5325 8250 5400
Connection ~ 8250 5400
Wire Wire Line
	8250 5400 8375 5400
Wire Wire Line
	8450 5850 8525 5850
Connection ~ 8525 5850
Wire Wire Line
	8525 5850 8525 5600
Wire Wire Line
	8525 4950 8250 4950
Connection ~ 8525 4950
Wire Wire Line
	8825 5850 8525 5850
Wire Wire Line
	8525 5850 8525 5925
$Comp
L fg_proj_lib:+1V8 #PWR?
U 1 1 6125EDB5
P 6450 3275
AR Path="/6125EDB5" Ref="#PWR?"  Part="1" 
AR Path="/5DAB097C/6125EDB5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6450 3125 50  0001 C CNN
F 1 "+1V8" V 6450 3500 50  0000 C CNN
F 2 "" H 6450 3275 50  0001 C CNN
F 3 "" H 6450 3275 50  0001 C CNN
	1    6450 3275
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
