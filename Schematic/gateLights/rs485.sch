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
Sheet 5 5
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
Text HLabel 3700 3800 0    60   Input ~ 0
RS485_A
Text HLabel 3700 4000 0    60   Input ~ 0
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
	4400 3800 3700 3800
Wire Wire Line
	4400 4000 3700 4000
$Comp
L GND #PWR017
U 1 1 59208970
P 4800 4500
F 0 "#PWR017" H 4800 4250 50  0001 C CNN
F 1 "GND" H 4800 4350 50  0000 C CNN
F 2 "" H 4800 4500 50  0001 C CNN
F 3 "" H 4800 4500 50  0001 C CNN
	1    4800 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4500 4800 4300
$Comp
L D D2
U 1 1 59208A13
P 4800 2400
F 0 "D2" H 4800 2500 50  0000 C CNN
F 1 "2N2007" H 4800 2300 50  0000 C CNN
F 2 "Diodes_THT:D_DO-15_P12.70mm_Horizontal" H 4800 2400 50  0001 C CNN
F 3 "" H 4800 2400 50  0001 C CNN
	1    4800 2400
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR018
U 1 1 59208A37
P 4800 2100
F 0 "#PWR018" H 4800 1950 50  0001 C CNN
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
	4800 2950 4800 3050
Wire Wire Line
	4800 3350 4800 3500
$Comp
L D D3
U 1 1 59208AB8
P 4800 2800
F 0 "D3" H 4800 2900 50  0000 C CNN
F 1 "2N2007" H 4800 2700 50  0000 C CNN
F 2 "Diodes_THT:D_DO-15_P12.70mm_Horizontal" H 4800 2800 50  0001 C CNN
F 3 "" H 4800 2800 50  0001 C CNN
	1    4800 2800
	0    -1   -1   0   
$EndComp
$Comp
L D D4
U 1 1 59208ADD
P 4800 3200
F 0 "D4" H 4800 3300 50  0000 C CNN
F 1 "2N2007" H 4800 3100 50  0000 C CNN
F 2 "Diodes_THT:D_DO-15_P12.70mm_Horizontal" H 4800 3200 50  0001 C CNN
F 3 "" H 4800 3200 50  0001 C CNN
	1    4800 3200
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
