EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L fg_proj_lib:C C?
U 1 1 5E102741
P 2725 4575
AR Path="/5E102741" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5E102741" Ref="C1"  Part="1" 
F 0 "C1" H 2840 4621 50  0000 L CNN
F 1 "100n" H 2840 4530 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 2763 4425 50  0001 C CNN
F 3 "~" H 2725 4575 50  0001 C CNN
F 4 "1276-6720-1-ND" H 2725 4575 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CL05B104KA5NNNC" H 2725 4575 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Samsung Electro-Mechanics" H 2725 4575 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 2725 4575 50  0001 C CNN "Anbieter"
	1    2725 4575
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:+3V3 #PWR?
U 1 1 5E12139E
P 1050 4250
AR Path="/5E12139E" Ref="#PWR?"  Part="1" 
AR Path="/5E0B731A/5E12139E" Ref="#PWR0115"  Part="1" 
F 0 "#PWR0115" H 1050 4100 50  0001 C CNN
F 1 "+3V3" H 1065 4423 50  0000 C CNN
F 2 "" H 1050 4250 50  0001 C CNN
F 3 "" H 1050 4250 50  0001 C CNN
	1    1050 4250
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 5E1213A4
P 1050 4900
AR Path="/5E1213A4" Ref="#PWR?"  Part="1" 
AR Path="/5E0B731A/5E1213A4" Ref="#PWR0116"  Part="1" 
F 0 "#PWR0116" H 1050 4650 50  0001 C CNN
F 1 "GND" H 1054 4745 50  0000 C CNN
F 2 "" H 1050 4900 50  0001 C CNN
F 3 "" H 1050 4900 50  0001 C CNN
	1    1050 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4725 2250 4825
Wire Wire Line
	1050 4425 1050 4325
Wire Wire Line
	1050 4325 1450 4325
Wire Wire Line
	2250 4325 2250 4425
Wire Wire Line
	1050 4725 1050 4825
Wire Wire Line
	1050 4825 1450 4825
Wire Wire Line
	2250 4825 1850 4825
Wire Wire Line
	1850 4425 1850 4325
Connection ~ 1850 4325
Wire Wire Line
	1850 4325 2250 4325
Wire Wire Line
	1850 4725 1850 4825
Connection ~ 1850 4825
Wire Wire Line
	1450 4425 1450 4325
Connection ~ 1450 4325
Wire Wire Line
	1450 4325 1850 4325
Wire Wire Line
	1450 4725 1450 4825
Connection ~ 1450 4825
Wire Wire Line
	1450 4825 1850 4825
$Comp
L fg_proj_lib:C C?
U 1 1 5E1213C0
P 2250 4575
AR Path="/5E1213C0" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5E1213C0" Ref="C7"  Part="1" 
F 0 "C7" H 2365 4621 50  0000 L CNN
F 1 "100n" H 2365 4530 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 2288 4425 50  0001 C CNN
F 3 "~" H 2250 4575 50  0001 C CNN
F 4 "1276-6720-1-ND" H 2250 4575 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CL05B104KA5NNNC" H 2250 4575 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Samsung Electro-Mechanics" H 2250 4575 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 2250 4575 50  0001 C CNN "Anbieter"
	1    2250 4575
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 5E1213C6
P 1850 4575
AR Path="/5E1213C6" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5E1213C6" Ref="C6"  Part="1" 
F 0 "C6" H 1965 4621 50  0000 L CNN
F 1 "100n" H 1965 4530 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 1888 4425 50  0001 C CNN
F 3 "~" H 1850 4575 50  0001 C CNN
F 4 "1276-6720-1-ND" H 1850 4575 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CL05B104KA5NNNC" H 1850 4575 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Samsung Electro-Mechanics" H 1850 4575 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 1850 4575 50  0001 C CNN "Anbieter"
	1    1850 4575
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 5E1213CC
P 1450 4575
AR Path="/5E1213CC" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5E1213CC" Ref="C5"  Part="1" 
F 0 "C5" H 1565 4621 50  0000 L CNN
F 1 "100n" H 1565 4530 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 1488 4425 50  0001 C CNN
F 3 "~" H 1450 4575 50  0001 C CNN
F 4 "1276-6720-1-ND" H 1450 4575 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CL05B104KA5NNNC" H 1450 4575 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Samsung Electro-Mechanics" H 1450 4575 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 1450 4575 50  0001 C CNN "Anbieter"
	1    1450 4575
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 5E1213D2
P 1050 4575
AR Path="/5E1213D2" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5E1213D2" Ref="C4"  Part="1" 
F 0 "C4" H 1165 4621 50  0000 L CNN
F 1 "100n" H 1165 4530 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 1088 4425 50  0001 C CNN
F 3 "~" H 1050 4575 50  0001 C CNN
F 4 "1276-6720-1-ND" H 1050 4575 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CL05B104KA5NNNC" H 1050 4575 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Samsung Electro-Mechanics" H 1050 4575 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 1050 4575 50  0001 C CNN "Anbieter"
	1    1050 4575
	1    0    0    -1  
$EndComp
Connection ~ 4725 5950
Wire Wire Line
	5125 5950 4725 5950
Wire Wire Line
	5125 5900 5125 5950
Connection ~ 4725 5550
Wire Wire Line
	5125 5550 5125 5600
Wire Wire Line
	4725 5550 5125 5550
$Comp
L fg_proj_lib:+3V3 #PWR?
U 1 1 5E13A440
P 1050 5500
AR Path="/5E13A440" Ref="#PWR?"  Part="1" 
AR Path="/5E0B731A/5E13A440" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 1050 5350 50  0001 C CNN
F 1 "+3V3" H 1065 5673 50  0000 C CNN
F 2 "" H 1050 5500 50  0001 C CNN
F 3 "" H 1050 5500 50  0001 C CNN
	1    1050 5500
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:+1V8 #PWR?
U 1 1 5E13A434
P 1525 5500
AR Path="/5E13A434" Ref="#PWR?"  Part="1" 
AR Path="/5E0B731A/5E13A434" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 1525 5350 50  0001 C CNN
F 1 "+1V8" H 1540 5673 50  0000 C CNN
F 2 "" H 1525 5500 50  0001 C CNN
F 3 "" H 1525 5500 50  0001 C CNN
	1    1525 5500
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 5E13A428
P 1050 5750
AR Path="/5E13A428" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5E13A428" Ref="C10"  Part="1" 
F 0 "C10" H 1165 5796 50  0000 L CNN
F 1 "100n" H 1165 5705 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 1088 5600 50  0001 C CNN
F 3 "~" H 1050 5750 50  0001 C CNN
F 4 "1276-6720-1-ND" H 1050 5750 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CL05B104KA5NNNC" H 1050 5750 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Samsung Electro-Mechanics" H 1050 5750 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 1050 5750 50  0001 C CNN "Anbieter"
	1    1050 5750
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 5E13A422
P 5125 5750
AR Path="/5E13A422" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5E13A422" Ref="C12"  Part="1" 
F 0 "C12" H 5240 5796 50  0000 L CNN
F 1 "100n" H 5240 5705 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 5163 5600 50  0001 C CNN
F 3 "~" H 5125 5750 50  0001 C CNN
F 4 "1276-6720-1-ND" H 5125 5750 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CL05B104KA5NNNC" H 5125 5750 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Samsung Electro-Mechanics" H 5125 5750 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 5125 5750 50  0001 C CNN "Anbieter"
	1    5125 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 5500 1050 5600
Wire Wire Line
	1050 5900 1050 6000
$Comp
L fg_proj_lib:C C?
U 1 1 5E13A418
P 2325 5750
AR Path="/5E13A418" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5E13A418" Ref="C13"  Part="1" 
F 0 "C13" H 2440 5796 50  0000 L CNN
F 1 "100n" H 2440 5705 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 2363 5600 50  0001 C CNN
F 3 "~" H 2325 5750 50  0001 C CNN
F 4 "1276-6720-1-ND" H 2325 5750 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CL05B104KA5NNNC" H 2325 5750 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Samsung Electro-Mechanics" H 2325 5750 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 2325 5750 50  0001 C CNN "Anbieter"
	1    2325 5750
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 5E13A404
P 1525 5750
AR Path="/5E13A404" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5E13A404" Ref="C9"  Part="1" 
F 0 "C9" H 1640 5796 50  0000 L CNN
F 1 "100n" H 1640 5705 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 1563 5600 50  0001 C CNN
F 3 "~" H 1525 5750 50  0001 C CNN
F 4 "1276-6720-1-ND" H 1525 5750 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CL05B104KA5NNNC" H 1525 5750 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Samsung Electro-Mechanics" H 1525 5750 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 1525 5750 50  0001 C CNN "Anbieter"
	1    1525 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1525 5500 1525 5550
Wire Wire Line
	1525 5900 1525 5950
$Comp
L fg_proj_lib:C C?
U 1 1 5E13A3FC
P 1925 5750
AR Path="/5E13A3FC" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5E13A3FC" Ref="C11"  Part="1" 
F 0 "C11" H 2040 5796 50  0000 L CNN
F 1 "100n" H 2040 5705 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 1963 5600 50  0001 C CNN
F 3 "~" H 1925 5750 50  0001 C CNN
F 4 "1276-6720-1-ND" H 1925 5750 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CL05B104KA5NNNC" H 1925 5750 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Samsung Electro-Mechanics" H 1925 5750 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 1925 5750 50  0001 C CNN "Anbieter"
	1    1925 5750
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 5E13A3F6
P 2725 5750
AR Path="/5E13A3F6" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5E13A3F6" Ref="C14"  Part="1" 
F 0 "C14" H 2840 5796 50  0000 L CNN
F 1 "100n" H 2840 5705 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 2763 5600 50  0001 C CNN
F 3 "~" H 2725 5750 50  0001 C CNN
F 4 "1276-6720-1-ND" H 2725 5750 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CL05B104KA5NNNC" H 2725 5750 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Samsung Electro-Mechanics" H 2725 5750 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 2725 5750 50  0001 C CNN "Anbieter"
	1    2725 5750
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 5E13A3F0
P 3125 5750
AR Path="/5E13A3F0" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5E13A3F0" Ref="C15"  Part="1" 
F 0 "C15" H 3240 5796 50  0000 L CNN
F 1 "100n" H 3240 5705 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 3163 5600 50  0001 C CNN
F 3 "~" H 3125 5750 50  0001 C CNN
F 4 "1276-6720-1-ND" H 3125 5750 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CL05B104KA5NNNC" H 3125 5750 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Samsung Electro-Mechanics" H 3125 5750 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 3125 5750 50  0001 C CNN "Anbieter"
	1    3125 5750
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 5E13A3EA
P 3525 5750
AR Path="/5E13A3EA" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5E13A3EA" Ref="C16"  Part="1" 
F 0 "C16" H 3640 5796 50  0000 L CNN
F 1 "100n" H 3640 5705 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 3563 5600 50  0001 C CNN
F 3 "~" H 3525 5750 50  0001 C CNN
F 4 "1276-6720-1-ND" H 3525 5750 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CL05B104KA5NNNC" H 3525 5750 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Samsung Electro-Mechanics" H 3525 5750 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 3525 5750 50  0001 C CNN "Anbieter"
	1    3525 5750
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 5E13A3E4
P 3925 5750
AR Path="/5E13A3E4" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5E13A3E4" Ref="C17"  Part="1" 
F 0 "C17" H 4040 5796 50  0000 L CNN
F 1 "100n" H 4040 5705 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 3963 5600 50  0001 C CNN
F 3 "~" H 3925 5750 50  0001 C CNN
F 4 "1276-6720-1-ND" H 3925 5750 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CL05B104KA5NNNC" H 3925 5750 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Samsung Electro-Mechanics" H 3925 5750 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 3925 5750 50  0001 C CNN "Anbieter"
	1    3925 5750
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 5E13A3DE
P 4325 5750
AR Path="/5E13A3DE" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5E13A3DE" Ref="C18"  Part="1" 
F 0 "C18" H 4440 5796 50  0000 L CNN
F 1 "100n" H 4440 5705 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 4363 5600 50  0001 C CNN
F 3 "~" H 4325 5750 50  0001 C CNN
F 4 "1276-6720-1-ND" H 4325 5750 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CL05B104KA5NNNC" H 4325 5750 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Samsung Electro-Mechanics" H 4325 5750 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 4325 5750 50  0001 C CNN "Anbieter"
	1    4325 5750
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 5E13A3D8
P 4725 5750
AR Path="/5E13A3D8" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5E13A3D8" Ref="C19"  Part="1" 
F 0 "C19" H 4840 5796 50  0000 L CNN
F 1 "100n" H 4840 5705 50  0000 L CNN
F 2 "fg_proj:C_0402_1005Metric" H 4763 5600 50  0001 C CNN
F 3 "~" H 4725 5750 50  0001 C CNN
F 4 "1276-6720-1-ND" H 4725 5750 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "CL05B104KA5NNNC" H 4725 5750 50  0001 C CNN "Hersteller-Teilenummer"
F 6 "Samsung Electro-Mechanics" H 4725 5750 50  0001 C CNN "Hersteller"
F 7 "Digi-Key" H 4725 5750 50  0001 C CNN "Anbieter"
	1    4725 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1525 5550 1925 5550
Wire Wire Line
	1925 5550 1925 5600
Connection ~ 1525 5550
Wire Wire Line
	1525 5550 1525 5600
Wire Wire Line
	1925 5550 2325 5550
Wire Wire Line
	2325 5550 2325 5600
Connection ~ 1925 5550
Wire Wire Line
	2325 5550 2725 5550
Wire Wire Line
	2725 5550 2725 5600
Connection ~ 2325 5550
Wire Wire Line
	2725 5550 3125 5550
Wire Wire Line
	3125 5550 3125 5600
Connection ~ 2725 5550
Wire Wire Line
	1925 5900 1925 5950
Wire Wire Line
	1925 5950 1525 5950
Connection ~ 1525 5950
Wire Wire Line
	1525 5950 1525 6000
Wire Wire Line
	2325 5950 1925 5950
Wire Wire Line
	2325 5900 2325 5950
Connection ~ 1925 5950
Wire Wire Line
	2725 5900 2725 5950
Wire Wire Line
	2725 5950 2325 5950
Connection ~ 2325 5950
Wire Wire Line
	3125 5900 3125 5950
Wire Wire Line
	3125 5950 2725 5950
Connection ~ 2725 5950
Wire Wire Line
	3125 5550 3525 5550
Wire Wire Line
	4725 5550 4725 5600
Connection ~ 3125 5550
Wire Wire Line
	4325 5600 4325 5550
Connection ~ 4325 5550
Wire Wire Line
	4325 5550 4725 5550
Wire Wire Line
	3925 5600 3925 5550
Connection ~ 3925 5550
Wire Wire Line
	3925 5550 4325 5550
Wire Wire Line
	3525 5600 3525 5550
Connection ~ 3525 5550
Wire Wire Line
	3525 5550 3925 5550
Wire Wire Line
	3125 5950 3525 5950
Wire Wire Line
	4725 5950 4725 5900
Connection ~ 3125 5950
Wire Wire Line
	4325 5900 4325 5950
Connection ~ 4325 5950
Wire Wire Line
	4325 5950 4725 5950
Wire Wire Line
	3925 5900 3925 5950
Connection ~ 3925 5950
Wire Wire Line
	3925 5950 4325 5950
Wire Wire Line
	3525 5900 3525 5950
Connection ~ 3525 5950
Wire Wire Line
	3525 5950 3925 5950
$Comp
L fg_proj_lib:C C?
U 1 1 5DBF5F7B
P 6175 2825
AR Path="/5DBF5F7B" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5DBF5F7B" Ref="C30"  Part="1" 
F 0 "C30" H 6290 2871 50  0000 L CNN
F 1 "4µ7" H 6290 2780 50  0000 L CNN
F 2 "fg_proj:C_1206_3216Metric" H 6213 2675 50  0001 C CNN
F 3 "~" H 6175 2825 50  0001 C CNN
F 4 "1276-2880-1-ND" H 6175 2825 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Samsung Electro-Mechanics" H 6175 2825 50  0001 C CNN "Hersteller"
F 6 "CL31A475KAHNNNE" H 6175 2825 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 6175 2825 50  0001 C CNN "Anbieter"
	1    6175 2825
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 5DBF5F81
P 6175 3200
AR Path="/5DBF5F81" Ref="#PWR?"  Part="1" 
AR Path="/5E0B731A/5DBF5F81" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 6175 2950 50  0001 C CNN
F 1 "GND" H 6179 3045 50  0000 C CNN
F 2 "" H 6175 3200 50  0001 C CNN
F 3 "" H 6175 3200 50  0001 C CNN
	1    6175 3200
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:R R?
U 1 1 5DBF5F87
P 7175 2825
AR Path="/5DBF5F87" Ref="R?"  Part="1" 
AR Path="/5E0B731A/5DBF5F87" Ref="R10"  Part="1" 
F 0 "R10" H 7245 2871 50  0000 L CNN
F 1 "33k" H 7245 2780 50  0000 L CNN
F 2 "fg_proj:R_0603_1608Metric" V 7105 2825 50  0001 C CNN
F 3 "~" H 7175 2825 50  0001 C CNN
F 4 "311-33.0KHRCT-ND" H 7175 2825 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 7175 2825 50  0001 C CNN "Hersteller"
F 6 "RC0603FR-0733KL" H 7175 2825 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 7175 2825 50  0001 C CNN "Anbieter"
	1    7175 2825
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 5DBF5F8D
P 6850 2825
AR Path="/5DBF5F8D" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5DBF5F8D" Ref="C31"  Part="1" 
F 0 "C31" H 6965 2871 50  0000 L CNN
F 1 "4µ7" H 6965 2780 50  0000 L CNN
F 2 "fg_proj:C_1206_3216Metric" H 6888 2675 50  0001 C CNN
F 3 "~" H 6850 2825 50  0001 C CNN
F 4 "1276-2880-1-ND" H 6850 2825 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Samsung Electro-Mechanics" H 6850 2825 50  0001 C CNN "Hersteller"
F 6 "CL31A475KAHNNNE" H 6850 2825 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 6850 2825 50  0001 C CNN "Anbieter"
	1    6850 2825
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 5DBF5F93
P 7450 3200
AR Path="/5DBF5F93" Ref="#PWR?"  Part="1" 
AR Path="/5E0B731A/5DBF5F93" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0145" H 7450 2950 50  0001 C CNN
F 1 "GND" H 7454 3045 50  0000 C CNN
F 2 "" H 7450 3200 50  0001 C CNN
F 3 "" H 7450 3200 50  0001 C CNN
	1    7450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3200 7450 2800
Wire Wire Line
	7450 2700 7525 2700
Wire Wire Line
	7175 2675 7175 2500
Wire Wire Line
	7175 2500 7525 2500
Wire Wire Line
	6850 2675 6850 2500
Wire Wire Line
	6850 2500 7175 2500
Connection ~ 7175 2500
Wire Wire Line
	7175 2975 7175 3200
Wire Wire Line
	6850 2975 6850 3200
Wire Wire Line
	6175 2975 6175 3200
Wire Wire Line
	7525 2000 7375 2000
Wire Wire Line
	7375 2000 7375 1900
Connection ~ 7375 1900
Wire Wire Line
	7375 1900 7525 1900
Wire Wire Line
	7525 2100 7375 2100
Connection ~ 7375 2000
Wire Wire Line
	9125 2000 9275 2000
Wire Wire Line
	9275 2000 9275 2100
Wire Wire Line
	9125 2100 9275 2100
$Comp
L fg_proj_lib:C C?
U 1 1 5DBF5FBF
P 10075 2525
AR Path="/5DBF5FBF" Ref="C?"  Part="1" 
AR Path="/5E0B731A/5DBF5FBF" Ref="C32"  Part="1" 
F 0 "C32" H 10190 2571 50  0000 L CNN
F 1 "10µ" H 10190 2480 50  0000 L CNN
F 2 "fg_proj:C_1206_3216Metric" H 10113 2375 50  0001 C CNN
F 3 "~" H 10075 2525 50  0001 C CNN
F 4 "1276-1181-1-ND" H 10075 2525 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Samsung Electro-Mechanics" H 10075 2525 50  0001 C CNN "Hersteller"
F 6 "CL31A106MAHNNNE" H 10075 2525 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 10075 2525 50  0001 C CNN "Anbieter"
	1    10075 2525
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:R R?
U 1 1 5DBF5FC5
P 9225 2950
AR Path="/5DBF5FC5" Ref="R?"  Part="1" 
AR Path="/5E0B731A/5DBF5FC5" Ref="R11"  Part="1" 
F 0 "R11" H 9295 2996 50  0000 L CNN
F 1 "330R" H 9295 2905 50  0000 L CNN
F 2 "fg_proj:R_0603_1608Metric" V 9155 2950 50  0001 C CNN
F 3 "~" H 9225 2950 50  0001 C CNN
F 4 "311-330HRCT-ND" H 9225 2950 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 9225 2950 50  0001 C CNN "Hersteller"
F 6 "RC0603FR-07330RL" H 9225 2950 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 9225 2950 50  0001 C CNN "Anbieter"
	1    9225 2950
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 5DBF5FCB
P 9225 3200
AR Path="/5DBF5FCB" Ref="#PWR?"  Part="1" 
AR Path="/5E0B731A/5DBF5FCB" Ref="#PWR0148"  Part="1" 
F 0 "#PWR0148" H 9225 2950 50  0001 C CNN
F 1 "GND" H 9229 3045 50  0000 C CNN
F 2 "" H 9225 3200 50  0001 C CNN
F 3 "" H 9225 3200 50  0001 C CNN
	1    9225 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9125 2700 9225 2700
Wire Wire Line
	9225 2700 9225 2800
Wire Wire Line
	9225 3100 9225 3200
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 5DBF5FD6
P 10075 2950
AR Path="/5DBF5FD6" Ref="#PWR?"  Part="1" 
AR Path="/5E0B731A/5DBF5FD6" Ref="#PWR0149"  Part="1" 
F 0 "#PWR0149" H 10075 2700 50  0001 C CNN
F 1 "GND" H 10079 2795 50  0000 C CNN
F 2 "" H 10075 2950 50  0001 C CNN
F 3 "" H 10075 2950 50  0001 C CNN
	1    10075 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10075 2950 10075 2675
Wire Wire Line
	10075 2375 10075 2350
Wire Wire Line
	10075 1775 10075 2000
Connection ~ 10075 2000
Wire Wire Line
	6175 1750 6175 1900
Connection ~ 6175 1900
Wire Wire Line
	6175 1900 6175 2675
$Comp
L fg_proj_lib:+1V8 #PWR0151
U 1 1 5DBFE9DF
P 4900 1850
F 0 "#PWR0151" H 4900 1700 50  0001 C CNN
F 1 "+1V8" H 4915 2023 50  0000 C CNN
F 2 "" H 4900 1850 50  0001 C CNN
F 3 "" H 4900 1850 50  0001 C CNN
	1    4900 1850
	1    0    0    -1  
$EndComp
Connection ~ 1050 4825
Connection ~ 1050 4325
Wire Wire Line
	1050 4250 1050 4325
Wire Wire Line
	1050 4825 1050 4900
$Comp
L fg_proj_lib:LT3045EMSE-PBF U5
U 1 1 5DD9A3BE
P 7525 1900
F 0 "U5" H 8325 2287 60  0000 C CNN
F 1 "LT3045EMSE-PBF" H 8325 2181 60  0000 C CNN
F 2 "fg_proj:LT3045EMSE-PBF" H 8325 2140 60  0001 C CNN
F 3 "" H 7525 1900 60  0000 C CNN
F 4 "LT3045EMSE#PBF-ND" H 7525 1900 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Analog Devices Inc." H 7525 1900 50  0001 C CNN "Hersteller"
F 6 "LT3045EMSE#PBF" H 7525 1900 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 7525 1900 50  0001 C CNN "Anbieter"
	1    7525 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7525 2800 7450 2800
Connection ~ 7450 2800
Wire Wire Line
	7450 2800 7450 2700
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 5D8F1C5E
P 1050 6000
AR Path="/5D8F1C5E" Ref="#PWR?"  Part="1" 
AR Path="/5E0B731A/5D8F1C5E" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 1050 5750 50  0001 C CNN
F 1 "GND" H 1054 5845 50  0000 C CNN
F 2 "" H 1050 6000 50  0001 C CNN
F 3 "" H 1050 6000 50  0001 C CNN
	1    1050 6000
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 5D8F2337
P 1525 6000
AR Path="/5D8F2337" Ref="#PWR?"  Part="1" 
AR Path="/5E0B731A/5D8F2337" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 1525 5750 50  0001 C CNN
F 1 "GND" H 1529 5845 50  0000 C CNN
F 2 "" H 1525 6000 50  0001 C CNN
F 3 "" H 1525 6000 50  0001 C CNN
	1    1525 6000
	1    0    0    -1  
$EndComp
Text GLabel 1350 2125 2    50   Input ~ 0
1V8_ON
Wire Wire Line
	9125 2500 9425 2500
Wire Wire Line
	9425 2500 9425 1450
Wire Wire Line
	9425 1450 7375 1450
Wire Wire Line
	7375 1450 7375 1900
$Comp
L fg_proj_lib:R R?
U 1 1 5E9EFC8F
P 1350 2900
AR Path="/5E9EFC8F" Ref="R?"  Part="1" 
AR Path="/5E0B731A/5E9EFC8F" Ref="R15"  Part="1" 
F 0 "R15" H 1420 2946 50  0000 L CNN
F 1 "47k" H 1420 2855 50  0000 L CNN
F 2 "fg_proj:R_0603_1608Metric" V 1280 2900 50  0001 C CNN
F 3 "~" H 1350 2900 50  0001 C CNN
F 4 "311-47.0KHRCT-ND" H 1350 2900 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 1350 2900 50  0001 C CNN "Hersteller"
F 6 "RC0603FR-0747KL" H 1350 2900 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 1350 2900 50  0001 C CNN "Anbieter"
	1    1350 2900
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 5EA08496
P 1350 3275
AR Path="/5EA08496" Ref="#PWR?"  Part="1" 
AR Path="/5E0B731A/5EA08496" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 1350 3025 50  0001 C CNN
F 1 "GND" H 1354 3120 50  0000 C CNN
F 2 "" H 1350 3275 50  0001 C CNN
F 3 "" H 1350 3275 50  0001 C CNN
	1    1350 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2750 1350 2275
Wire Wire Line
	1350 2125 1350 2275
Connection ~ 1350 2275
Wire Wire Line
	1350 3050 1350 3275
Wire Wire Line
	6175 1900 7375 1900
Connection ~ 9275 2000
Wire Wire Line
	9275 2000 10075 2000
Wire Wire Line
	6850 3200 7175 3200
Wire Wire Line
	7175 3200 7175 3525
Wire Wire Line
	7175 3525 9725 3525
Wire Wire Line
	9725 3525 9725 2675
Connection ~ 7175 3200
$Comp
L fg_proj_lib:+3V3 #PWR?
U 1 1 5D9664A0
P 10075 1775
AR Path="/5D9664A0" Ref="#PWR?"  Part="1" 
AR Path="/5E0B731A/5D9664A0" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 10075 1625 50  0001 C CNN
F 1 "+3V3" H 10090 1948 50  0000 C CNN
F 2 "" H 10075 1775 50  0001 C CNN
F 3 "" H 10075 1775 50  0001 C CNN
	1    10075 1775
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 60429BCB
P 1000 2900
AR Path="/60429BCB" Ref="C?"  Part="1" 
AR Path="/5E0B731A/60429BCB" Ref="C24"  Part="1" 
F 0 "C24" H 1115 2946 50  0000 L CNN
F 1 "4µ7" H 1115 2855 50  0000 L CNN
F 2 "fg_proj:C_1206_3216Metric" H 1038 2750 50  0001 C CNN
F 3 "~" H 1000 2900 50  0001 C CNN
F 4 "1276-2880-1-ND" H 1000 2900 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Samsung Electro-Mechanics" H 1000 2900 50  0001 C CNN "Hersteller"
F 6 "CL31A475KAHNNNE" H 1000 2900 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 1000 2900 50  0001 C CNN "Anbieter"
	1    1000 2900
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 60429BD1
P 1000 3275
AR Path="/60429BD1" Ref="#PWR?"  Part="1" 
AR Path="/5E0B731A/60429BD1" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 1000 3025 50  0001 C CNN
F 1 "GND" H 1004 3120 50  0000 C CNN
F 2 "" H 1000 3275 50  0001 C CNN
F 3 "" H 1000 3275 50  0001 C CNN
	1    1000 3275
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:R R?
U 1 1 60429BD7
P 2000 2900
AR Path="/60429BD7" Ref="R?"  Part="1" 
AR Path="/5E0B731A/60429BD7" Ref="R6"  Part="1" 
F 0 "R6" H 2070 2946 50  0000 L CNN
F 1 "18k" H 2070 2855 50  0000 L CNN
F 2 "fg_proj:R_0603_1608Metric" V 1930 2900 50  0001 C CNN
F 3 "~" H 2000 2900 50  0001 C CNN
F 4 "311-18.0KHRCT-ND" H 2000 2900 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 2000 2900 50  0001 C CNN "Hersteller"
F 6 "RC0603FR-0718KL" H 2000 2900 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 2000 2900 50  0001 C CNN "Anbieter"
	1    2000 2900
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:C C?
U 1 1 60429BDD
P 1675 2900
AR Path="/60429BDD" Ref="C?"  Part="1" 
AR Path="/5E0B731A/60429BDD" Ref="C25"  Part="1" 
F 0 "C25" H 1790 2946 50  0000 L CNN
F 1 "4µ7" H 1790 2855 50  0000 L CNN
F 2 "fg_proj:C_1206_3216Metric" H 1713 2750 50  0001 C CNN
F 3 "~" H 1675 2900 50  0001 C CNN
F 4 "1276-2880-1-ND" H 1675 2900 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Samsung Electro-Mechanics" H 1675 2900 50  0001 C CNN "Hersteller"
F 6 "CL31A475KAHNNNE" H 1675 2900 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 1675 2900 50  0001 C CNN "Anbieter"
	1    1675 2900
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 60429BE3
P 2275 3275
AR Path="/60429BE3" Ref="#PWR?"  Part="1" 
AR Path="/5E0B731A/60429BE3" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 2275 3025 50  0001 C CNN
F 1 "GND" H 2279 3120 50  0000 C CNN
F 2 "" H 2275 3275 50  0001 C CNN
F 3 "" H 2275 3275 50  0001 C CNN
	1    2275 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	2275 3275 2275 2875
Wire Wire Line
	2275 2775 2350 2775
Wire Wire Line
	2000 2750 2000 2575
Wire Wire Line
	2000 2575 2350 2575
Wire Wire Line
	1675 2750 1675 2575
Wire Wire Line
	1675 2575 2000 2575
Connection ~ 2000 2575
Wire Wire Line
	2000 3050 2000 3275
Wire Wire Line
	1675 3050 1675 3275
Wire Wire Line
	1000 3050 1000 3275
Wire Wire Line
	2350 2075 2200 2075
Wire Wire Line
	2200 2075 2200 1975
Connection ~ 2200 1975
Wire Wire Line
	2200 1975 2350 1975
Wire Wire Line
	2350 2175 2200 2175
Connection ~ 2200 2075
Wire Wire Line
	2200 2075 2200 2175
Wire Wire Line
	3950 2075 4100 2075
Wire Wire Line
	4100 2075 4100 2175
Wire Wire Line
	3950 2175 4100 2175
$Comp
L fg_proj_lib:C C?
U 1 1 60429BFD
P 4900 2600
AR Path="/60429BFD" Ref="C?"  Part="1" 
AR Path="/5E0B731A/60429BFD" Ref="C26"  Part="1" 
F 0 "C26" H 5015 2646 50  0000 L CNN
F 1 "10µ" H 5015 2555 50  0000 L CNN
F 2 "fg_proj:C_1206_3216Metric" H 4938 2450 50  0001 C CNN
F 3 "~" H 4900 2600 50  0001 C CNN
F 4 "1276-1181-1-ND" H 4900 2600 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Samsung Electro-Mechanics" H 4900 2600 50  0001 C CNN "Hersteller"
F 6 "CL31A106MAHNNNE" H 4900 2600 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 4900 2600 50  0001 C CNN "Anbieter"
	1    4900 2600
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:R R?
U 1 1 60429C03
P 4050 3025
AR Path="/60429C03" Ref="R?"  Part="1" 
AR Path="/5E0B731A/60429C03" Ref="R7"  Part="1" 
F 0 "R7" H 4120 3071 50  0000 L CNN
F 1 "330R" H 4120 2980 50  0000 L CNN
F 2 "fg_proj:R_0603_1608Metric" V 3980 3025 50  0001 C CNN
F 3 "~" H 4050 3025 50  0001 C CNN
F 4 "311-330HRCT-ND" H 4050 3025 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Yageo" H 4050 3025 50  0001 C CNN "Hersteller"
F 6 "RC0603FR-07330RL" H 4050 3025 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 4050 3025 50  0001 C CNN "Anbieter"
	1    4050 3025
	1    0    0    -1  
$EndComp
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 60429C09
P 4050 3275
AR Path="/60429C09" Ref="#PWR?"  Part="1" 
AR Path="/5E0B731A/60429C09" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 4050 3025 50  0001 C CNN
F 1 "GND" H 4054 3120 50  0000 C CNN
F 2 "" H 4050 3275 50  0001 C CNN
F 3 "" H 4050 3275 50  0001 C CNN
	1    4050 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2775 4050 2775
Wire Wire Line
	4050 2775 4050 2875
Wire Wire Line
	4050 3175 4050 3275
$Comp
L fg_proj_lib:GND #PWR?
U 1 1 60429C12
P 4900 3025
AR Path="/60429C12" Ref="#PWR?"  Part="1" 
AR Path="/5E0B731A/60429C12" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 4900 2775 50  0001 C CNN
F 1 "GND" H 4904 2870 50  0000 C CNN
F 2 "" H 4900 3025 50  0001 C CNN
F 3 "" H 4900 3025 50  0001 C CNN
	1    4900 3025
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3025 4900 2750
Wire Wire Line
	4900 2450 4900 2075
Wire Wire Line
	4900 1850 4900 2075
Connection ~ 4900 2075
Wire Wire Line
	1000 1825 1000 1975
Connection ~ 1000 1975
Wire Wire Line
	1000 1975 1000 2750
$Comp
L fg_proj_lib:LT3045EMSE-PBF U3
U 1 1 60429C2B
P 2350 1975
F 0 "U3" H 3150 2362 60  0000 C CNN
F 1 "LT3045EMSE-PBF" H 3150 2256 60  0000 C CNN
F 2 "fg_proj:LT3045EMSE-PBF" H 3150 2215 60  0001 C CNN
F 3 "" H 2350 1975 60  0000 C CNN
F 4 "LT3045EMSE#PBF-ND" H 2350 1975 50  0001 C CNN "Anbieter-Teilenummer"
F 5 "Analog Devices Inc." H 2350 1975 50  0001 C CNN "Hersteller"
F 6 "LT3045EMSE#PBF" H 2350 1975 50  0001 C CNN "Hersteller-Teilenummer"
F 7 "Digi-Key" H 2350 1975 50  0001 C CNN "Anbieter"
	1    2350 1975
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2875 2275 2875
Connection ~ 2275 2875
Wire Wire Line
	2275 2875 2275 2775
Wire Wire Line
	3950 2575 4250 2575
Wire Wire Line
	4250 2575 4250 1525
Wire Wire Line
	4250 1525 2200 1525
Wire Wire Line
	2200 1525 2200 1975
Wire Wire Line
	1000 1975 2200 1975
Connection ~ 4100 2075
Wire Wire Line
	4100 2075 4900 2075
Wire Wire Line
	1675 3275 2000 3275
Wire Wire Line
	2000 3275 2000 3600
Wire Wire Line
	2000 3600 4675 3600
Connection ~ 2000 3275
Text GLabel 1000 1825 1    50   Input ~ 0
VBUS
Text GLabel 6175 1750 1    50   Input ~ 0
VBUS
$Comp
L fg_proj_lib:Net-Tie_2 NT1
U 1 1 6030B6D4
P 4800 2450
F 0 "NT1" H 4800 2631 50  0000 C CNN
F 1 "NT1" H 4800 2540 50  0000 C CNN
F 2 "fg_proj:NetTie-2_SMD_Pad0.5mm" H 4800 2450 50  0001 C CNN
F 3 "~" H 4800 2450 50  0001 C CNN
	1    4800 2450
	1    0    0    -1  
$EndComp
Connection ~ 4900 2450
Wire Wire Line
	4675 2450 4675 2275
Wire Wire Line
	4675 2275 3950 2275
Wire Wire Line
	4700 2450 4675 2450
$Comp
L fg_proj_lib:Net-Tie_2 NT2
U 1 1 6032FC0C
P 9975 2350
F 0 "NT2" H 9975 2531 50  0000 C CNN
F 1 "NT2" H 9975 2440 50  0000 C CNN
F 2 "fg_proj:NetTie-2_SMD_Pad0.5mm" H 9975 2350 50  0001 C CNN
F 3 "~" H 9975 2350 50  0001 C CNN
	1    9975 2350
	1    0    0    -1  
$EndComp
Connection ~ 10075 2350
Wire Wire Line
	10075 2350 10075 2000
Wire Wire Line
	9875 2350 9625 2350
Wire Wire Line
	9625 2350 9625 2200
Wire Wire Line
	9625 2200 9125 2200
$Comp
L fg_proj_lib:Net-Tie_2 NT3
U 1 1 603A1F0D
P 4800 2750
F 0 "NT3" H 4800 2931 50  0000 C CNN
F 1 "NT3" H 4800 2840 50  0000 C CNN
F 2 "fg_proj:NetTie-2_SMD_Pad1.0mm" H 4800 2750 50  0001 C CNN
F 3 "~" H 4800 2750 50  0001 C CNN
	1    4800 2750
	1    0    0    -1  
$EndComp
Connection ~ 4900 2750
Wire Wire Line
	4700 2750 4675 2750
Wire Wire Line
	4675 2750 4675 3600
$Comp
L fg_proj_lib:Net-Tie_2 NT4
U 1 1 603D3CAA
P 9975 2675
F 0 "NT4" H 9975 2856 50  0000 C CNN
F 1 "NT4" H 9975 2765 50  0000 C CNN
F 2 "fg_proj:NetTie-2_SMD_Pad1.0mm" H 9975 2675 50  0001 C CNN
F 3 "~" H 9975 2675 50  0001 C CNN
	1    9975 2675
	1    0    0    -1  
$EndComp
Connection ~ 10075 2675
Wire Wire Line
	9875 2675 9725 2675
Wire Wire Line
	1350 2275 2350 2275
Wire Wire Line
	7525 2200 7375 2200
Wire Wire Line
	7375 2000 7375 2100
Connection ~ 7375 2100
Wire Wire Line
	7375 2100 7375 2200
Wire Wire Line
	2725 4325 2725 4425
Wire Wire Line
	2250 4325 2725 4325
Connection ~ 2250 4325
Wire Wire Line
	2725 4825 2250 4825
Wire Wire Line
	2725 4725 2725 4825
Connection ~ 2250 4825
NoConn ~ 2350 2375
NoConn ~ 7525 2300
$EndSCHEMATC
