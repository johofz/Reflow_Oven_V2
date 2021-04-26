EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 7
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
L Connector_Generic:Conn_02x17_Odd_Even J1
U 1 1 6068CD2D
P 6150 3750
F 0 "J1" H 6200 4767 50  0000 C CNN
F 1 "Conn_02x17_Odd_Even" H 6200 4676 50  0000 C CNN
F 2 "Connector_PinHeader_1.27mm:PinHeader_2x17_P1.27mm_Vertical" H 6150 3750 50  0001 C CNN
F 3 "~" H 6150 3750 50  0001 C CNN
	1    6150 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4050 7000 4050
Wire Wire Line
	7000 4050 7000 4650
$Comp
L power:GND #PWR035
U 1 1 6068EE67
P 7000 4650
F 0 "#PWR035" H 7000 4400 50  0001 C CNN
F 1 "GND" H 7005 4477 50  0000 C CNN
F 2 "" H 7000 4650 50  0001 C CNN
F 3 "" H 7000 4650 50  0001 C CNN
	1    7000 4650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6450 3950 7200 3950
Wire Wire Line
	7200 3950 7200 2700
$Comp
L power:+3.3V #PWR034
U 1 1 6068EE6F
P 7200 2700
F 0 "#PWR034" H 7200 2550 50  0001 C CNN
F 1 "+3.3V" H 7215 2873 50  0000 C CNN
F 2 "" H 7200 2700 50  0001 C CNN
F 3 "" H 7200 2700 50  0001 C CNN
	1    7200 2700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6450 3850 7100 3850
Wire Wire Line
	7100 3850 7100 2900
$Comp
L power:+5V #PWR033
U 1 1 6068F5B9
P 7100 2900
F 0 "#PWR033" H 7100 2750 50  0001 C CNN
F 1 "+5V" H 7115 3073 50  0000 C CNN
F 2 "" H 7100 2900 50  0001 C CNN
F 3 "" H 7100 2900 50  0001 C CNN
	1    7100 2900
	-1   0    0    -1  
$EndComp
Text HLabel 5950 3450 0    50   Input ~ 0
SD_CS
Text HLabel 6450 3250 2    50   Input ~ 0
SD_MOSI
Text HLabel 6450 3650 2    50   Input ~ 0
SD_SCLK
Text HLabel 6450 3450 2    50   Input ~ 0
SD_MISO
Text HLabel 5950 3550 0    50   Input ~ 0
TOUCH_IRQ
Text HLabel 6450 3550 2    50   Input ~ 0
TOUCH_MISO
Text HLabel 6450 3050 2    50   Input ~ 0
TFT_D0
Text HLabel 6450 3150 2    50   Input ~ 0
TFT_D1
Text HLabel 6450 4550 2    50   Input ~ 0
TFT_D2
Text HLabel 6450 3350 2    50   Input ~ 0
TOUCH_MOSI
Text HLabel 5950 3650 0    50   Input ~ 0
TOUCH_CS
Text HLabel 6450 3750 2    50   Input ~ 0
TOUCH_SCLK
Text HLabel 6450 4450 2    50   Input ~ 0
TFT_D3
Text HLabel 5950 4550 0    50   Input ~ 0
TFT_D4
Text HLabel 5950 4450 0    50   Input ~ 0
TFT_D5
Text HLabel 5950 4350 0    50   Input ~ 0
TFT_D6
Text HLabel 5950 4250 0    50   Input ~ 0
TFT_D7
Text HLabel 6450 2950 2    50   Input ~ 0
TFT_RS
Text HLabel 6450 4250 2    50   Input ~ 0
TFT_WR
Text HLabel 6450 4350 2    50   Input ~ 0
TFT_RD
Text HLabel 5950 4150 0    50   Input ~ 0
TFT_D8
Text HLabel 5950 4050 0    50   Input ~ 0
TFT_D9
Text HLabel 5950 3950 0    50   Input ~ 0
TFT_D10
Text HLabel 5950 3850 0    50   Input ~ 0
TFT_D11
Text HLabel 5950 3750 0    50   Input ~ 0
TFT_D12
Text HLabel 5950 3150 0    50   Input ~ 0
TFT_D13
Text HLabel 5950 3050 0    50   Input ~ 0
TFT_D14
Text HLabel 5950 2950 0    50   Input ~ 0
TFT_D15
Text HLabel 6450 4150 2    50   Input ~ 0
TFT_CS
Text HLabel 5950 3250 0    50   Input ~ 0
TFT_RST
Text HLabel 5950 3350 0    50   Input ~ 0
FLASH_CS
$EndSCHEMATC
