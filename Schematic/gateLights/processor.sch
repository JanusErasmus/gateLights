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
Sheet 2 5
Title "Processor"
Date "2017-05-20"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Running Gate Lights"
$EndDescr
$Comp
L ATTINY1634-SU U6
U 1 1 59201E00
P 2300 2900
F 0 "U6" H 1550 4100 50  0000 C CNN
F 1 "ATTINY1634-SU" H 2850 1900 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-20W_7.5x12.8mm_Pitch1.27mm" H 2300 3150 50  0001 C CIN
F 3 "" H 2300 3350 50  0001 C CNN
	1    2300 2900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR3
U 1 1 59201E2F
P 1250 1600
F 0 "#PWR3" H 1250 1450 50  0001 C CNN
F 1 "+5V" H 1250 1740 50  0000 C CNN
F 2 "" H 1250 1600 50  0001 C CNN
F 3 "" H 1250 1600 50  0001 C CNN
	1    1250 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 59201EA0
P 1200 3850
F 0 "#PWR2" H 1200 3600 50  0001 C CNN
F 1 "GND" H 1200 3700 50  0000 C CNN
F 2 "" H 1200 3850 50  0001 C CNN
F 3 "" H 1200 3850 50  0001 C CNN
	1    1200 3850
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 J2
U 1 1 59202650
P 9300 1650
F 0 "J2" H 9300 1850 50  0000 C CNN
F 1 "CONN_02X03" H 9300 1450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 9300 450 50  0001 C CNN
F 3 "" H 9300 450 50  0001 C CNN
	1    9300 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1600 1250 1850
Wire Wire Line
	1200 3750 1350 3750
Wire Wire Line
	1200 3750 1200 3850
Wire Wire Line
	9550 1650 10150 1650
Wire Wire Line
	9050 1550 8550 1550
Wire Wire Line
	9050 1650 8550 1650
Wire Wire Line
	9050 1750 8550 1750
Text Label 8650 1550 0    60   ~ 0
MISO
Text Label 8650 1650 0    60   ~ 0
SCK
Text Label 9900 1650 0    60   ~ 0
MOSI
Text Label 8650 1750 0    60   ~ 0
RESET
$Comp
L +5V #PWR6
U 1 1 5920299B
P 9700 1500
F 0 "#PWR6" H 9700 1350 50  0001 C CNN
F 1 "+5V" H 9700 1640 50  0000 C CNN
F 2 "" H 9700 1500 50  0001 C CNN
F 3 "" H 9700 1500 50  0001 C CNN
	1    9700 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR7
U 1 1 592029C9
P 9700 1850
F 0 "#PWR7" H 9700 1600 50  0001 C CNN
F 1 "GND" H 9700 1700 50  0000 C CNN
F 2 "" H 9700 1850 50  0001 C CNN
F 3 "" H 9700 1850 50  0001 C CNN
	1    9700 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1500 9700 1550
Wire Wire Line
	9700 1550 9550 1550
Wire Wire Line
	9550 1750 9700 1750
Wire Wire Line
	9700 1750 9700 1850
Wire Wire Line
	3250 2850 4100 2850
Wire Wire Line
	3250 2950 4100 2950
Wire Wire Line
	3250 3350 3650 3350
Wire Wire Line
	3250 3550 3650 3550
Text Label 3350 2850 0    60   ~ 0
MOSI
Text Label 3350 2950 0    60   ~ 0
MISO
Text Label 3350 3350 0    60   ~ 0
SCK
Text Label 3350 3550 0    60   ~ 0
RESET
Wire Wire Line
	3250 1850 3650 1850
Wire Wire Line
	3250 1950 3650 1950
Wire Wire Line
	3250 2050 3650 2050
Wire Wire Line
	3250 2150 3650 2150
Wire Wire Line
	3250 2250 3650 2250
Wire Wire Line
	3250 2350 3650 2350
Wire Wire Line
	3250 2450 3650 2450
Text HLabel 3650 1850 2    60   Output ~ 0
OUT1
Text HLabel 3650 1950 2    60   Output ~ 0
OUT2
Text HLabel 3650 2050 2    60   Output ~ 0
OUT3
Text HLabel 3650 2150 2    60   Output ~ 0
OUT4
Text HLabel 3650 2250 2    60   Output ~ 0
OUT5
Wire Wire Line
	1250 1850 1350 1850
$Comp
L C C5
U 1 1 5920810E
P 5950 6750
F 0 "C5" H 5975 6850 50  0000 L CNN
F 1 "100nF" H 5975 6650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5988 6600 50  0001 C CNN
F 3 "" H 5950 6750 50  0001 C CNN
	1    5950 6750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 592081D8
P 5950 7100
F 0 "#PWR5" H 5950 6850 50  0001 C CNN
F 1 "GND" H 5950 6950 50  0000 C CNN
F 2 "" H 5950 7100 50  0001 C CNN
F 3 "" H 5950 7100 50  0001 C CNN
	1    5950 7100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR4
U 1 1 592081EC
P 5950 6450
F 0 "#PWR4" H 5950 6300 50  0001 C CNN
F 1 "+5V" H 5950 6590 50  0000 C CNN
F 2 "" H 5950 6450 50  0001 C CNN
F 3 "" H 5950 6450 50  0001 C CNN
	1    5950 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 6450 5950 6600
Wire Wire Line
	5950 6900 5950 7100
Text HLabel 4100 2950 2    60   Input ~ 0
UART1_TX
Text HLabel 4100 2850 2    60   Input ~ 0
UART1_RX
Text HLabel 4100 2550 2    60   Input ~ 0
UART0_RX
Text HLabel 4100 2650 2    60   Input ~ 0
UART0_TX
Wire Wire Line
	4100 2550 3250 2550
Wire Wire Line
	4100 2650 3300 2650
Wire Wire Line
	3300 2650 3300 2750
Wire Wire Line
	3300 2750 3250 2750
Text HLabel 4100 3050 2    60   Input ~ 0
RS485_DE
Wire Wire Line
	4100 3050 3250 3050
$EndSCHEMATC
