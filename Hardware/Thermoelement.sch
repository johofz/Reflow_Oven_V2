EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 7
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
L Sensor_Temperature:MAX31855KASA U5
U 1 1 6035624A
P 5700 3750
F 0 "U5" H 6050 3250 50  0000 C CNN
F 1 "MAX31855KASA" H 6050 3350 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 6700 3400 50  0001 C CIN
F 3 "http://datasheets.maximintegrated.com/en/ds/MAX31855.pdf" H 5700 3750 50  0001 C CNN
F 4 "C52028" H 5700 3750 50  0001 C CNN "LCSC"
	1    5700 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 603576C1
P 5700 4200
F 0 "#PWR039" H 5700 3950 50  0001 C CNN
F 1 "GND" H 5705 4027 50  0000 C CNN
F 2 "" H 5700 4200 50  0001 C CNN
F 3 "" H 5700 4200 50  0001 C CNN
	1    5700 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2700 5700 2800
$Comp
L power:+3.3V #PWR038
U 1 1 60357C66
P 5700 2700
F 0 "#PWR038" H 5700 2550 50  0001 C CNN
F 1 "+3.3V" H 5715 2873 50  0000 C CNN
F 2 "" H 5700 2700 50  0001 C CNN
F 3 "" H 5700 2700 50  0001 C CNN
	1    5700 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C22
U 1 1 60357F89
P 5900 3000
F 0 "C22" H 5992 3046 50  0000 L CNN
F 1 "100n" H 5992 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5900 3000 50  0001 C CNN
F 3 "~" H 5900 3000 50  0001 C CNN
F 4 "C1525" H 5900 3000 50  0001 C CNN "LCSC"
	1    5900 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 60358AFA
P 5900 3100
F 0 "#PWR040" H 5900 2850 50  0001 C CNN
F 1 "GND" H 5905 2927 50  0000 C CNN
F 2 "" H 5900 3100 50  0001 C CNN
F 3 "" H 5900 3100 50  0001 C CNN
	1    5900 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2800 5900 2800
Wire Wire Line
	5900 2800 5900 2900
Connection ~ 5700 2800
Wire Wire Line
	5700 2800 5700 3350
$Comp
L Device:C_Small C21
U 1 1 6035930B
P 5000 3750
F 0 "C21" H 5092 3796 50  0000 L CNN
F 1 "100n" H 5092 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5000 3750 50  0001 C CNN
F 3 "~" H 5000 3750 50  0001 C CNN
F 4 "C1525" H 5000 3750 50  0001 C CNN "LCSC"
	1    5000 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3850 5000 3850
$Comp
L Device:C_Small C20
U 1 1 6035B8F7
P 4800 4050
F 0 "C20" H 4892 4096 50  0000 L CNN
F 1 "10n" H 4892 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4800 4050 50  0001 C CNN
F 3 "~" H 4800 4050 50  0001 C CNN
F 4 "C15195" H 4800 4050 50  0001 C CNN "LCSC"
	1    4800 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C19
U 1 1 6035BEC5
P 4450 4050
F 0 "C19" H 4542 4096 50  0000 L CNN
F 1 "10n" H 4542 4005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4450 4050 50  0001 C CNN
F 3 "~" H 4450 4050 50  0001 C CNN
F 4 "C15195" H 4450 4050 50  0001 C CNN "LCSC"
	1    4450 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3850 4800 3850
Wire Wire Line
	4800 3850 4800 3950
Connection ~ 5000 3850
Wire Wire Line
	5300 3650 5000 3650
Wire Wire Line
	5000 3650 4450 3650
Wire Wire Line
	4450 3650 4450 3950
Connection ~ 5000 3650
Wire Wire Line
	4800 4150 4800 4200
$Comp
L power:GND #PWR037
U 1 1 6035C880
P 4800 4200
F 0 "#PWR037" H 4800 3950 50  0001 C CNN
F 1 "GND" H 4805 4027 50  0000 C CNN
F 2 "" H 4800 4200 50  0001 C CNN
F 3 "" H 4800 4200 50  0001 C CNN
	1    4800 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR036
U 1 1 6035CB7A
P 4450 4200
F 0 "#PWR036" H 4450 3950 50  0001 C CNN
F 1 "GND" H 4455 4027 50  0000 C CNN
F 2 "" H 4450 4200 50  0001 C CNN
F 3 "" H 4450 4200 50  0001 C CNN
	1    4450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4200 4450 4150
Wire Wire Line
	4800 3850 4100 3850
Connection ~ 4800 3850
Wire Wire Line
	4450 3650 4100 3650
Connection ~ 4450 3650
$Comp
L Connector_Generic:Conn_01x02 THERMOCOUPLE1
U 1 1 6035D5B4
P 3750 3800
F 0 "THERMOCOUPLE1" H 3668 3475 50  0000 C CNN
F 1 "Conn_01x02" H 3668 3566 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 3750 3800 50  0001 C CNN
F 3 "~" H 3750 3800 50  0001 C CNN
F 4 "C395868" H 3750 3800 50  0001 C CNN "LCSC"
	1    3750 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 3650 4100 3700
Wire Wire Line
	4100 3700 3950 3700
Wire Wire Line
	3950 3800 4100 3800
Wire Wire Line
	4100 3800 4100 3850
Wire Wire Line
	5700 4200 5700 4150
Wire Wire Line
	6100 3850 6400 3850
Wire Wire Line
	6100 3650 6400 3650
Wire Wire Line
	6100 3550 6400 3550
Text HLabel 6400 3550 2    50   Input ~ 0
TEMP_SCLK
Text HLabel 6400 3650 2    50   Input ~ 0
TEMP_MISO
Text HLabel 6400 3850 2    50   Input ~ 0
TEMP_CS
$EndSCHEMATC