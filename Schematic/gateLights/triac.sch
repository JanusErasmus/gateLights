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
Sheet 3 4
Title "TRAIC Outputs"
Date "2017-05-20"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 "Running Gate Lights"
$EndDescr
$Comp
L OPTO-TRIAC U4
U 1 1 591FFB4F
P 5850 4300
F 0 "U4" H 5650 4500 50  0000 L CNN
F 1 "OPTO-TRIAC MOC302x" H 5650 4100 50  0001 L CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 5850 4300 50  0001 L CIN
F 3 "http://docs-europe.electrocomponents.com/webdocs/0de6/0900766b80de6ded.pdf" H 5825 4300 50  0001 L CNN
	1    5850 4300
	1    0    0    -1  
$EndComp
$Comp
L OPTO-TRIAC U3
U 1 1 592001F9
P 5850 3850
F 0 "U3" H 5650 4050 50  0000 L CNN
F 1 "OPTO-TRIAC MOC302x" H 5650 3650 50  0001 L CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 5850 3850 50  0001 L CIN
F 3 "http://docs-europe.electrocomponents.com/webdocs/0de6/0900766b80de6ded.pdf" H 5825 3850 50  0001 L CNN
	1    5850 3850
	1    0    0    -1  
$EndComp
$Comp
L OPTO-TRIAC U2
U 1 1 59200261
P 5850 3400
F 0 "U2" H 5650 3600 50  0000 L CNN
F 1 "OPTO-TRIAC MOC302x" H 5650 3200 50  0001 L CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 5850 3400 50  0001 L CIN
F 3 "http://docs-europe.electrocomponents.com/webdocs/0de6/0900766b80de6ded.pdf" H 5825 3400 50  0001 L CNN
	1    5850 3400
	1    0    0    -1  
$EndComp
$Comp
L OPTO-TRIAC U1
U 1 1 59200269
P 5850 2950
F 0 "U1" H 5650 3150 50  0000 L CNN
F 1 "OPTO-TRIAC MOC302x" H 5650 2750 50  0001 L CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 5850 2950 50  0001 L CIN
F 3 "http://docs-europe.electrocomponents.com/webdocs/0de6/0900766b80de6ded.pdf" H 5825 2950 50  0001 L CNN
	1    5850 2950
	1    0    0    -1  
$EndComp
$Comp
L OPTO-TRIAC U5
U 1 1 592002EC
P 5850 4750
F 0 "U5" H 5650 4950 50  0000 L CNN
F 1 "OPTO-TRIAC MOC302x" H 5650 4550 50  0001 L CNN
F 2 "Housings_DIP:DIP-6_W7.62mm" H 5850 4750 50  0001 L CIN
F 3 "http://docs-europe.electrocomponents.com/webdocs/0de6/0900766b80de6ded.pdf" H 5825 4750 50  0001 L CNN
	1    5850 4750
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 59200B93
P 5150 2850
F 0 "R1" V 5230 2850 50  0000 C CNN
F 1 "330R" V 5150 2850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5080 2850 50  0001 C CNN
F 3 "" H 5150 2850 50  0001 C CNN
	1    5150 2850
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 59200CE0
P 5150 3300
F 0 "R2" V 5230 3300 50  0000 C CNN
F 1 "330R" V 5150 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5080 3300 50  0001 C CNN
F 3 "" H 5150 3300 50  0001 C CNN
	1    5150 3300
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 59200D1A
P 5150 3750
F 0 "R3" V 5230 3750 50  0000 C CNN
F 1 "330R" V 5150 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5080 3750 50  0001 C CNN
F 3 "" H 5150 3750 50  0001 C CNN
	1    5150 3750
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 59200D55
P 5150 4200
F 0 "R4" V 5230 4200 50  0000 C CNN
F 1 "330R" V 5150 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5080 4200 50  0001 C CNN
F 3 "" H 5150 4200 50  0001 C CNN
	1    5150 4200
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 59200D9F
P 5150 4650
F 0 "R5" V 5230 4650 50  0000 C CNN
F 1 "330R" V 5150 4650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5080 4650 50  0001 C CNN
F 3 "" H 5150 4650 50  0001 C CNN
	1    5150 4650
	0    1    1    0   
$EndComp
$Comp
L GND #PWR07
U 1 1 59200E7F
P 5450 4950
F 0 "#PWR07" H 5450 4700 50  0001 C CNN
F 1 "GND" H 5450 4800 50  0000 C CNN
F 2 "" H 5450 4950 50  0001 C CNN
F 3 "" H 5450 4950 50  0001 C CNN
	1    5450 4950
	1    0    0    -1  
$EndComp
Text Label 4600 2850 0    60   ~ 0
OUT1
Text Label 4600 3300 0    60   ~ 0
OUT2
Text Label 4600 3750 0    60   ~ 0
OUT3
Text Label 4600 4200 0    60   ~ 0
OUT4
Text Label 4600 4650 0    60   ~ 0
OUT5
Text HLabel 6800 2850 2    60   Output ~ 0
AC_OUT1
Text HLabel 6800 3300 2    60   Output ~ 0
AC_OUT2
Text HLabel 6800 3750 2    60   Output ~ 0
AC_OUT3
Text HLabel 6800 4200 2    60   Output ~ 0
AC_OUT4
Text HLabel 6800 4650 2    60   Output ~ 0
AC_OUT5
Wire Wire Line
	5300 2850 5550 2850
Wire Wire Line
	5300 3300 5550 3300
Wire Wire Line
	5300 3750 5550 3750
Wire Wire Line
	5300 4200 5550 4200
Wire Wire Line
	5300 4650 5550 4650
Wire Wire Line
	5550 3050 5450 3050
Wire Wire Line
	5450 3050 5450 4950
Wire Wire Line
	5550 4850 5450 4850
Connection ~ 5450 4850
Wire Wire Line
	5550 4400 5450 4400
Connection ~ 5450 4400
Wire Wire Line
	5550 3950 5450 3950
Connection ~ 5450 3950
Wire Wire Line
	5550 3500 5450 3500
Connection ~ 5450 3500
Wire Wire Line
	6150 3050 6200 3050
Wire Wire Line
	6200 3050 6200 4850
Wire Wire Line
	6150 4400 6200 4400
Connection ~ 6200 4400
Connection ~ 6200 4850
Wire Wire Line
	6150 3950 6200 3950
Connection ~ 6200 3950
Wire Wire Line
	6150 3500 6200 3500
Connection ~ 6200 3500
Wire Wire Line
	5000 2850 4500 2850
Wire Wire Line
	5000 3300 4500 3300
Wire Wire Line
	5000 3750 4500 3750
Wire Wire Line
	5000 4200 4500 4200
Wire Wire Line
	5000 4650 4500 4650
Wire Wire Line
	6800 4650 6150 4650
Wire Wire Line
	6150 4200 6800 4200
Wire Wire Line
	6800 3750 6150 3750
Wire Wire Line
	6800 3300 6150 3300
Wire Wire Line
	6800 2850 6150 2850
Text HLabel 6800 4850 2    60   Output ~ 0
NEUTRAL
Wire Wire Line
	6150 4850 6800 4850
Text HLabel 4500 2850 0    60   Input ~ 0
IN1
Text HLabel 4500 3300 0    60   Input ~ 0
IN2
Text HLabel 4500 3750 0    60   Input ~ 0
IN3
Text HLabel 4500 4200 0    60   Input ~ 0
IN4
Text HLabel 4500 4650 0    60   Input ~ 0
IN5
$EndSCHEMATC
