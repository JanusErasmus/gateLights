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
Sheet 1 6
Title "Running Gate Lights"
Date "2017-05-20"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3050 2700 1200 2550
U 592040A2
F0 "Processor" 60
F1 "processor.sch" 60
F2 "OUT1" O R 4250 2800 60 
F3 "OUT2" O R 4250 2900 60 
F4 "OUT3" O R 4250 3000 60 
F5 "OUT4" O R 4250 3100 60 
F6 "OUT5" O R 4250 3200 60 
F7 "UART1_TX" I L 3050 3050 60 
F8 "UART1_RX" I L 3050 2850 60 
F9 "UART0_RX" I L 3050 3600 60 
F10 "UART0_TX" I L 3050 3700 60 
F11 "RS485_DE" I L 3050 3250 60 
F12 "IN_1" I L 3050 4700 60 
F13 "IN_2" I L 3050 4800 60 
F14 "IN_3" I L 3050 4900 60 
$EndSheet
$Sheet
S 5100 2700 1200 700 
U 59204231
F0 "TRIAC outputs" 60
F1 "triac.sch" 60
F2 "AC_OUT1" O R 6300 2800 60 
F3 "AC_OUT2" O R 6300 2900 60 
F4 "AC_OUT3" O R 6300 3000 60 
F5 "AC_OUT4" O R 6300 3100 60 
F6 "AC_OUT5" O R 6300 3200 60 
F7 "NEUTRAL" O R 6300 3300 60 
F8 "IN1" I L 5100 2800 60 
F9 "IN2" I L 5100 2900 60 
F10 "IN3" I L 5100 3000 60 
F11 "IN4" I L 5100 3100 60 
F12 "IN5" I L 5100 3200 60 
$EndSheet
$Comp
L CONN_01X06 J1
U 1 1 592049F0
P 7150 3050
F 0 "J1" H 7150 3400 50  0000 C CNN
F 1 "CONN_01X06" V 7250 3050 50  0000 C CNN
F 2 "GateLight:Pin_Header_Straight_1x6_Pitch5.08mm" H 7150 3050 50  0001 C CNN
F 3 "" H 7150 3050 50  0001 C CNN
	1    7150 3050
	1    0    0    -1  
$EndComp
$Sheet
S 3050 5550 1200 550 
U 5920687E
F0 "Power" 60
F1 "power.sch" 60
F2 "Vin" I L 3050 5700 60 
F3 "GND" I L 3050 5800 60 
$EndSheet
$Comp
L CONN_01X02 J3
U 1 1 592076EA
P 1050 5750
F 0 "J3" H 1050 5900 50  0000 C CNN
F 1 "CONN_01X02" V 1150 5750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 1050 5750 50  0001 C CNN
F 3 "" H 1050 5750 50  0001 C CNN
	1    1050 5750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6300 2800 6950 2800
Wire Wire Line
	6300 2900 6950 2900
Wire Wire Line
	6300 3000 6950 3000
Wire Wire Line
	6300 3100 6950 3100
Wire Wire Line
	6950 3200 6300 3200
Wire Wire Line
	6300 3300 6950 3300
Wire Wire Line
	4250 2800 5100 2800
Wire Wire Line
	4250 2900 5100 2900
Wire Wire Line
	4250 3000 5100 3000
Wire Wire Line
	4250 3100 5100 3100
Wire Wire Line
	5100 3200 4250 3200
Wire Wire Line
	1250 5700 3050 5700
Wire Wire Line
	3050 5800 1250 5800
$Sheet
S 1550 2700 1050 700 
U 59208773
F0 "RS485" 60
F1 "rs485.sch" 60
F2 "RS485_A" I L 1550 3050 60 
F3 "RS485_B" I L 1550 3150 60 
F4 "DE" I R 2600 3250 60 
F5 "DO" I R 2600 2850 60 
F6 "DI" I R 2600 3050 60 
$EndSheet
$Comp
L CONN_01X03 J4
U 1 1 5923CDB5
P 1000 3150
F 0 "J4" H 1000 3350 50  0000 C CNN
F 1 "CONN_01X03" V 1100 3150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1000 3150 50  0001 C CNN
F 3 "" H 1000 3150 50  0001 C CNN
	1    1000 3150
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5923CF80
P 1300 3550
F 0 "#PWR01" H 1300 3300 50  0001 C CNN
F 1 "GND" H 1300 3400 50  0000 C CNN
F 2 "" H 1300 3550 50  0001 C CNN
F 3 "" H 1300 3550 50  0001 C CNN
	1    1300 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3250 1300 3250
Wire Wire Line
	1300 3250 1300 3550
Wire Wire Line
	1550 3050 1200 3050
Wire Wire Line
	1200 3150 1550 3150
Wire Wire Line
	3050 2850 2600 2850
$Sheet
S 1650 4550 1000 500 
U 5926FBF0
F0 "Input" 60
F1 "input.sch" 60
F2 "IN_1" I L 1650 4700 60 
F3 "OUT_1" O R 2650 4700 60 
F4 "IN_2" I L 1650 4800 60 
F5 "OUT_2" O R 2650 4800 60 
F6 "IN_3" I L 1650 4900 60 
F7 "OUT_3" O R 2650 4900 60 
$EndSheet
$Comp
L CONN_01X04 J5
U 1 1 5927301C
P 1050 4850
F 0 "J5" H 1050 5100 50  0000 C CNN
F 1 "CONN_01X04" V 1150 4850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 1050 4850 50  0001 C CNN
F 3 "" H 1050 4850 50  0001 C CNN
	1    1050 4850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1250 4700 1650 4700
Wire Wire Line
	1250 4800 1650 4800
Wire Wire Line
	1250 4900 1650 4900
$Comp
L GND #PWR02
U 1 1 59273BAE
P 1300 5100
F 0 "#PWR02" H 1300 4850 50  0001 C CNN
F 1 "GND" H 1300 4950 50  0000 C CNN
F 2 "" H 1300 5100 50  0001 C CNN
F 3 "" H 1300 5100 50  0001 C CNN
	1    1300 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 5000 1300 5000
Wire Wire Line
	1300 5000 1300 5100
Wire Wire Line
	2650 4700 3050 4700
Wire Wire Line
	2650 4800 3050 4800
Wire Wire Line
	2650 4900 3050 4900
Wire Wire Line
	2600 3050 3050 3050
Wire Wire Line
	2600 3250 3050 3250
$EndSCHEMATC
