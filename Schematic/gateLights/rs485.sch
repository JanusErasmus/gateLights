EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:dc-dc
LIBS:gateLights-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title "RS485 interface"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Running GateLights"
$EndDescr
$Comp
L SP3485CN U8
U 1 1 592088A2
P 4800 3900
F 0 "U8" H 4500 4250 50  0000 L CNN
F 1 "SP3485CN" H 4900 4250 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5850 3550 50  0001 C CIN
F 3 "" H 4800 3900 50  0001 C CNN
	1    4800 3900
	-1   0    0    -1  
$EndComp
Text HLabel 2450 3800 0    60   Input ~ 0
RS485_A
Text HLabel 2450 4000 0    60   Input ~ 0
RS485_B
Text HLabel 5950 3800 2    60   Input ~ 0
DE
Text HLabel 5950 3700 2    60   Input ~ 0
DO
Text HLabel 5950 4100 2    60   Input ~ 0
DI
Wire Wire Line
	5950 4100 5200 4100
Wire Wire Line
	5200 3800 5950 3800
Wire Wire Line
	5300 3800 5300 4000
Wire Wire Line
	5300 4000 5200 4000
Connection ~ 5300 3800
Wire Wire Line
	5950 3700 5200 3700
Wire Wire Line
	4400 3800 2450 3800
Wire Wire Line
	4400 4000 2450 4000
$Comp
L GND #PWR019
U 1 1 59208970
P 4800 4650
F 0 "#PWR019" H 4800 4400 50  0001 C CNN
F 1 "GND" H 4800 4500 50  0000 C CNN
F 2 "" H 4800 4650 50  0001 C CNN
F 3 "" H 4800 4650 50  0001 C CNN
	1    4800 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4650 4800 4300
$Comp
L D D2
U 1 1 59208A13
P 4800 2400
F 0 "D2" H 4800 2500 50  0000 C CNN
F 1 "2N4001" H 4800 2300 50  0000 C CNN
F 2 "Diodes_THT:D_DO-15_P12.70mm_Horizontal" H 4800 2400 50  0001 C CNN
F 3 "http://docs-europe.electrocomponents.com/webdocs/137d/0900766b8137d734.pdf" H 4800 2400 50  0001 C CNN
	1    4800 2400
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR020
U 1 1 59208A37
P 4800 2100
F 0 "#PWR020" H 4800 1950 50  0001 C CNN
F 1 "+5V" H 4800 2240 50  0000 C CNN
F 2 "" H 4800 2100 50  0001 C CNN
F 3 "" H 4800 2100 50  0001 C CNN
	1    4800 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2100 4800 2250
Wire Wire Line
	4800 2550 4800 2650
Wire Wire Line
	4800 2950 4800 3500
$Comp
L D D5
U 1 1 5922AA27
P 4800 2800
F 0 "D5" H 4800 2900 50  0000 C CNN
F 1 "2N4001" H 4800 2700 50  0000 C CNN
F 2 "Diodes_THT:D_DO-15_P12.70mm_Horizontal" H 4800 2800 50  0001 C CNN
F 3 "http://docs-europe.electrocomponents.com/webdocs/137d/0900766b8137d734.pdf" H 4800 2800 50  0001 C CNN
	1    4800 2800
	0    -1   -1   0   
$EndComp
$Comp
L D D3
U 1 1 5923CAE9
P 3100 4400
F 0 "D3" H 3100 4500 50  0000 C CNN
F 1 "SMBJ5.0" H 3100 4300 50  0000 C CNN
F 2 "Diodes_SMD:D_SMB_Handsoldering" H 3100 4400 50  0001 C CNN
F 3 "http://docs-europe.electrocomponents.com/webdocs/137d/0900766b8137d734.pdf" H 3100 4400 50  0001 C CNN
	1    3100 4400
	0    1    1    0   
$EndComp
$Comp
L D D4
U 1 1 5923CB61
P 3500 4400
F 0 "D4" H 3500 4500 50  0000 C CNN
F 1 "SMBJ5.0" H 3500 4300 50  0000 C CNN
F 2 "Diodes_SMD:D_SMB_Handsoldering" H 3500 4400 50  0001 C CNN
F 3 "http://docs-europe.electrocomponents.com/webdocs/137d/0900766b8137d734.pdf" H 3500 4400 50  0001 C CNN
	1    3500 4400
	0    1    1    0   
$EndComp
$Comp
L GND #PWR021
U 1 1 5923CB97
P 3500 4650
F 0 "#PWR021" H 3500 4400 50  0001 C CNN
F 1 "GND" H 3500 4500 50  0000 C CNN
F 2 "" H 3500 4650 50  0001 C CNN
F 3 "" H 3500 4650 50  0001 C CNN
	1    3500 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 5923CBC5
P 3100 4650
F 0 "#PWR022" H 3100 4400 50  0001 C CNN
F 1 "GND" H 3100 4500 50  0000 C CNN
F 2 "" H 3100 4650 50  0001 C CNN
F 3 "" H 3100 4650 50  0001 C CNN
	1    3100 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4550 3100 4650
Wire Wire Line
	3500 4550 3500 4650
Wire Wire Line
	3500 4250 3500 3800
Connection ~ 3500 3800
Wire Wire Line
	3100 3900 3100 4250
Connection ~ 3100 4000
$Comp
L R R9
U 1 1 5923CC32
P 2800 3900
F 0 "R9" V 2750 3750 50  0000 C CNN
F 1 "240R" V 2800 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_1210_HandSoldering" V 2730 3900 50  0001 C CNN
F 3 "" H 2800 3900 50  0001 C CNN
	1    2800 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 3900 3100 3900
Wire Wire Line
	2650 3900 2500 3900
Wire Wire Line
	2500 3900 2500 3800
Connection ~ 2500 3800
$Comp
L C C6
U 1 1 592480DF
P 7250 3750
F 0 "C6" H 7275 3850 50  0000 L CNN
F 1 "100nF" H 7275 3650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7288 3600 50  0001 C CNN
F 3 "" H 7250 3750 50  0001 C CNN
	1    7250 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR023
U 1 1 592480E6
P 7250 4100
F 0 "#PWR023" H 7250 3850 50  0001 C CNN
F 1 "GND" H 7250 3950 50  0000 C CNN
F 2 "" H 7250 4100 50  0001 C CNN
F 3 "" H 7250 4100 50  0001 C CNN
	1    7250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3150 7250 3600
Wire Wire Line
	7250 3900 7250 4100
Wire Wire Line
	7250 3150 4800 3150
Connection ~ 4800 3150
$EndSCHEMATC
