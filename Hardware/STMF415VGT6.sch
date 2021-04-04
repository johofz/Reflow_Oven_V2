EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 7
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
L MCU_ST_STM32F4:STM32F415VGTx MCU1
U 1 1 605F6775
P 3500 4050
F 0 "MCU1" H 4150 1250 50  0000 C CNN
F 1 "STM32F415VGTx" H 4150 1350 50  0000 C CNN
F 2 "Package_QFP:LQFP-100_14x14mm_P0.5mm" H 2800 1450 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00035129.pdf" H 3500 4050 50  0001 C CNN
F 4 "C118210" H 3500 4050 50  0001 C CNN "LCSC"
	1    3500 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 605FCAD5
P 3500 7100
F 0 "#PWR02" H 3500 6850 50  0001 C CNN
F 1 "GND" H 3505 6927 50  0000 C CNN
F 2 "" H 3500 7100 50  0001 C CNN
F 3 "" H 3500 7100 50  0001 C CNN
	1    3500 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 6850 3300 7000
Wire Wire Line
	3300 7000 3400 7000
Wire Wire Line
	3500 7000 3500 7100
Wire Wire Line
	3400 6850 3400 7000
Connection ~ 3400 7000
Wire Wire Line
	3400 7000 3500 7000
Wire Wire Line
	3500 6850 3500 7000
Connection ~ 3500 7000
Wire Wire Line
	3600 6850 3600 7000
Wire Wire Line
	3600 7000 3500 7000
Wire Wire Line
	3700 6850 3700 7000
Wire Wire Line
	3700 7000 3600 7000
Connection ~ 3600 7000
$Comp
L power:+3V3 #PWR01
U 1 1 605FD83A
P 3500 1100
F 0 "#PWR01" H 3500 950 50  0001 C CNN
F 1 "+3V3" H 3515 1273 50  0000 C CNN
F 2 "" H 3500 1100 50  0001 C CNN
F 3 "" H 3500 1100 50  0001 C CNN
	1    3500 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1350 3200 1200
Wire Wire Line
	3200 1200 3300 1200
Wire Wire Line
	3500 1200 3500 1100
Wire Wire Line
	3500 1350 3500 1200
Connection ~ 3500 1200
Wire Wire Line
	3400 1350 3400 1200
Connection ~ 3400 1200
Wire Wire Line
	3400 1200 3500 1200
Wire Wire Line
	3300 1350 3300 1200
Connection ~ 3300 1200
Wire Wire Line
	3300 1200 3400 1200
Wire Wire Line
	3500 1200 3600 1200
Wire Wire Line
	3600 1200 3600 1350
Wire Wire Line
	3600 1200 3700 1200
Wire Wire Line
	3700 1200 3700 1350
Connection ~ 3600 1200
Wire Wire Line
	3700 1200 3800 1200
Wire Wire Line
	3800 1200 3800 1350
Connection ~ 3700 1200
Wire Wire Line
	3800 1200 3900 1200
Wire Wire Line
	3900 1200 3900 1350
Connection ~ 3800 1200
Wire Wire Line
	2250 1850 2600 1850
Text Label 2250 1850 0    50   ~ 0
BOOT0
Text HLabel 2600 1650 0    50   Input ~ 0
MCU_NRST
Text Label 2250 2050 0    50   ~ 0
VCAP_1
Text Label 2250 2150 0    50   ~ 0
VCAP_2
Wire Wire Line
	2600 2250 2250 2250
Text Label 2250 2250 0    50   ~ 0
VREF+
Text Label 2900 1200 0    50   ~ 0
VREF+
Wire Wire Line
	2900 1200 3200 1200
Connection ~ 3200 1200
Wire Wire Line
	2600 3050 2250 3050
Wire Wire Line
	2600 3150 2250 3150
Text Label 2250 3050 0    50   ~ 0
OSC_IN
Text Label 2250 3150 0    50   ~ 0
OSC_OUT
Text HLabel 4400 2750 2    50   Input ~ 0
MCU_D-
Text HLabel 4400 2850 2    50   Input ~ 0
MCU_D+
Text HLabel 4400 2950 2    50   Input ~ 0
MCU_SWDIO
Text HLabel 4400 3050 2    50   Input ~ 0
MCU_SWCLK
Text HLabel 2600 5050 0    50   Input ~ 0
MCU_D2
Text HLabel 2600 5150 0    50   Input ~ 0
MCU_D3
Text HLabel 2600 5450 0    50   Input ~ 0
MCU_NOE
Text HLabel 2600 5550 0    50   Input ~ 0
MCU_NWE
Text HLabel 2600 5750 0    50   Input ~ 0
MCU_NE1
Text HLabel 4400 3650 2    50   Input ~ 0
MCU_SWO
Text HLabel 2600 6450 0    50   Input ~ 0
MCU_D0
Text HLabel 2600 6550 0    50   Input ~ 0
MCU_D1
Text HLabel 2600 6150 0    50   Input ~ 0
MCU_A16
Text HLabel 2600 5850 0    50   Input ~ 0
MCU_D13
Text HLabel 2600 5950 0    50   Input ~ 0
MCU_D14
Text HLabel 2600 6050 0    50   Input ~ 0
MCU_D15
Text HLabel 2600 4050 0    50   Input ~ 0
MCU_D4
Text HLabel 2600 4150 0    50   Input ~ 0
MCU_D5
Text HLabel 2600 4250 0    50   Input ~ 0
MCU_D6
Text HLabel 2600 4350 0    50   Input ~ 0
MCU_D7
Text HLabel 2600 4450 0    50   Input ~ 0
MCU_D8
Text HLabel 2600 4550 0    50   Input ~ 0
MCU_D9
Text HLabel 2600 4650 0    50   Input ~ 0
MCU_D10
Text HLabel 2600 4750 0    50   Input ~ 0
MCU_D11
Text HLabel 2600 4850 0    50   Input ~ 0
MCU_D12
$Comp
L Device:C_Small C1
U 1 1 6060B7AA
P 7000 1550
F 0 "C1" H 7092 1596 50  0000 L CNN
F 1 "4.7u" H 7092 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7000 1550 50  0001 C CNN
F 3 "~" H 7000 1550 50  0001 C CNN
F 4 "C19666" H 7000 1550 50  0001 C CNN "LCSC"
	1    7000 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 6060BD82
P 7350 1550
F 0 "C2" H 7442 1596 50  0000 L CNN
F 1 "100n" H 7442 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7350 1550 50  0001 C CNN
F 3 "~" H 7350 1550 50  0001 C CNN
F 4 "C1525" H 7350 1550 50  0001 C CNN "LCSC"
	1    7350 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 6060C2B0
P 7700 1550
F 0 "C3" H 7792 1596 50  0000 L CNN
F 1 "100n" H 7792 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7700 1550 50  0001 C CNN
F 3 "~" H 7700 1550 50  0001 C CNN
F 4 "C1525" H 7700 1550 50  0001 C CNN "LCSC"
	1    7700 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 6060C4E2
P 8050 1550
F 0 "C5" H 8142 1596 50  0000 L CNN
F 1 "100n" H 8142 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8050 1550 50  0001 C CNN
F 3 "~" H 8050 1550 50  0001 C CNN
F 4 "C1525" H 8050 1550 50  0001 C CNN "LCSC"
	1    8050 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 6060C849
P 8400 1550
F 0 "C7" H 8492 1596 50  0000 L CNN
F 1 "100n" H 8492 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8400 1550 50  0001 C CNN
F 3 "~" H 8400 1550 50  0001 C CNN
F 4 "C1525" H 8400 1550 50  0001 C CNN "LCSC"
	1    8400 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 6060CC9D
P 8750 1550
F 0 "C9" H 8842 1596 50  0000 L CNN
F 1 "100n" H 8842 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8750 1550 50  0001 C CNN
F 3 "~" H 8750 1550 50  0001 C CNN
F 4 "C1525" H 8750 1550 50  0001 C CNN "LCSC"
	1    8750 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 6060CFB5
P 9100 1550
F 0 "C10" H 9192 1596 50  0000 L CNN
F 1 "100n" H 9192 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9100 1550 50  0001 C CNN
F 3 "~" H 9100 1550 50  0001 C CNN
F 4 "C1525" H 9100 1550 50  0001 C CNN "LCSC"
	1    9100 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C12
U 1 1 6060D385
P 9450 1550
F 0 "C12" H 9542 1596 50  0000 L CNN
F 1 "100n" H 9542 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9450 1550 50  0001 C CNN
F 3 "~" H 9450 1550 50  0001 C CNN
F 4 "C1525" H 9450 1550 50  0001 C CNN "LCSC"
	1    9450 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C13
U 1 1 6060D5ED
P 9800 1550
F 0 "C13" H 9892 1596 50  0000 L CNN
F 1 "100n" H 9892 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9800 1550 50  0001 C CNN
F 3 "~" H 9800 1550 50  0001 C CNN
F 4 "C1525" H 9800 1550 50  0001 C CNN "LCSC"
	1    9800 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 6060DA46
P 10150 1550
F 0 "C14" H 10242 1596 50  0000 L CNN
F 1 "100n" H 10242 1505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 10150 1550 50  0001 C CNN
F 3 "~" H 10150 1550 50  0001 C CNN
F 4 "C1525" H 10150 1550 50  0001 C CNN "LCSC"
	1    10150 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1450 7000 1350
Wire Wire Line
	7000 1350 7350 1350
Wire Wire Line
	10150 1350 10150 1450
Wire Wire Line
	10150 1650 10150 1750
Wire Wire Line
	7000 1750 7000 1650
Wire Wire Line
	8600 1350 8600 1250
Connection ~ 8600 1350
Wire Wire Line
	8600 1350 8750 1350
Wire Wire Line
	8600 1750 8600 1850
Connection ~ 8600 1750
Wire Wire Line
	8600 1750 8400 1750
$Comp
L power:+3V3 #PWR05
U 1 1 6061074A
P 8600 1250
F 0 "#PWR05" H 8600 1100 50  0001 C CNN
F 1 "+3V3" H 8615 1423 50  0000 C CNN
F 2 "" H 8600 1250 50  0001 C CNN
F 3 "" H 8600 1250 50  0001 C CNN
	1    8600 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1450 7350 1350
Connection ~ 7350 1350
Wire Wire Line
	7350 1350 7700 1350
Wire Wire Line
	7700 1450 7700 1350
Connection ~ 7700 1350
Wire Wire Line
	7700 1350 8050 1350
Wire Wire Line
	8050 1450 8050 1350
Connection ~ 8050 1350
Wire Wire Line
	8050 1350 8400 1350
Wire Wire Line
	8400 1450 8400 1350
Connection ~ 8400 1350
Wire Wire Line
	8400 1350 8600 1350
Wire Wire Line
	8750 1450 8750 1350
Connection ~ 8750 1350
Wire Wire Line
	8750 1350 9100 1350
Wire Wire Line
	9100 1450 9100 1350
Connection ~ 9100 1350
Wire Wire Line
	9100 1350 9450 1350
Wire Wire Line
	9450 1450 9450 1350
Connection ~ 9450 1350
Wire Wire Line
	9450 1350 9800 1350
Wire Wire Line
	9800 1450 9800 1350
Connection ~ 9800 1350
Wire Wire Line
	9800 1350 10150 1350
Wire Wire Line
	10150 1750 9800 1750
Wire Wire Line
	9800 1650 9800 1750
Connection ~ 9800 1750
Wire Wire Line
	9800 1750 9450 1750
Wire Wire Line
	9450 1650 9450 1750
Connection ~ 9450 1750
Wire Wire Line
	9450 1750 9100 1750
Wire Wire Line
	9100 1650 9100 1750
Connection ~ 9100 1750
Wire Wire Line
	9100 1750 8750 1750
$Comp
L power:GND #PWR06
U 1 1 6061D2B3
P 8600 1850
F 0 "#PWR06" H 8600 1600 50  0001 C CNN
F 1 "GND" H 8605 1677 50  0000 C CNN
F 2 "" H 8600 1850 50  0001 C CNN
F 3 "" H 8600 1850 50  0001 C CNN
	1    8600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 1650 8750 1750
Connection ~ 8750 1750
Wire Wire Line
	8750 1750 8600 1750
Wire Wire Line
	8400 1650 8400 1750
Connection ~ 8400 1750
Wire Wire Line
	8400 1750 8050 1750
Wire Wire Line
	8050 1650 8050 1750
Connection ~ 8050 1750
Wire Wire Line
	8050 1750 7700 1750
Wire Wire Line
	7700 1650 7700 1750
Connection ~ 7700 1750
Wire Wire Line
	7700 1750 7350 1750
Wire Wire Line
	7350 1650 7350 1750
Connection ~ 7350 1750
Wire Wire Line
	7350 1750 7000 1750
Wire Wire Line
	7300 2650 7850 2650
Wire Wire Line
	7850 2650 7850 2800
Text Label 7300 2650 0    50   ~ 0
VCAP_1
$Comp
L Device:C_Small C4
U 1 1 60624F3A
P 7850 2900
F 0 "C4" H 7942 2946 50  0000 L CNN
F 1 "2.2u" H 7942 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7850 2900 50  0001 C CNN
F 3 "~" H 7850 2900 50  0001 C CNN
F 4 "C23630" H 7850 2900 50  0001 C CNN "LCSC"
	1    7850 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 60625542
P 7850 3000
F 0 "#PWR03" H 7850 2750 50  0001 C CNN
F 1 "GND" H 7855 2827 50  0000 C CNN
F 2 "" H 7850 3000 50  0001 C CNN
F 3 "" H 7850 3000 50  0001 C CNN
	1    7850 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2650 8600 2650
Wire Wire Line
	8600 2650 8600 2800
Text Label 8050 2650 0    50   ~ 0
VCAP_2
$Comp
L Device:C_Small C8
U 1 1 606260E9
P 8600 2900
F 0 "C8" H 8692 2946 50  0000 L CNN
F 1 "2.2u" H 8692 2855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8600 2900 50  0001 C CNN
F 3 "~" H 8600 2900 50  0001 C CNN
F 4 "C23630" H 8600 2900 50  0001 C CNN "LCSC"
	1    8600 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 606260EF
P 8600 3000
F 0 "#PWR07" H 8600 2750 50  0001 C CNN
F 1 "GND" H 8605 2827 50  0000 C CNN
F 2 "" H 8600 3000 50  0001 C CNN
F 3 "" H 8600 3000 50  0001 C CNN
	1    8600 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2650 9400 2650
Wire Wire Line
	9400 2650 9400 2800
Text Label 8850 2650 0    50   ~ 0
BOOT0
$Comp
L power:GND #PWR010
U 1 1 606284BF
P 9400 3000
F 0 "#PWR010" H 9400 2750 50  0001 C CNN
F 1 "GND" H 9405 2827 50  0000 C CNN
F 2 "" H 9400 3000 50  0001 C CNN
F 3 "" H 9400 3000 50  0001 C CNN
	1    9400 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 60629DA7
P 9400 2900
F 0 "R2" H 9459 2946 50  0000 L CNN
F 1 "10k" H 9459 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 9400 2900 50  0001 C CNN
F 3 "~" H 9400 2900 50  0001 C CNN
F 4 "C25744" H 9400 2900 50  0001 C CNN "LCSC"
	1    9400 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_GND24 Y1
U 1 1 6062E0ED
P 8600 4350
F 0 "Y1" H 8750 4000 50  0000 L CNN
F 1 "16MHz" H 8700 4100 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3225-4Pin_3.2x2.5mm" H 8600 4350 50  0001 C CNN
F 3 "~" H 8600 4350 50  0001 C CNN
F 4 "C13738" H 8600 4350 50  0001 C CNN "LCSC"
	1    8600 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8600 4550 8600 4650
Wire Wire Line
	8600 4150 8600 4000
Wire Wire Line
	8600 4000 8850 4000
Wire Wire Line
	8850 4000 8850 4650
Wire Wire Line
	8850 4650 8600 4650
Connection ~ 8600 4650
$Comp
L power:GND #PWR08
U 1 1 6063200F
P 8600 4800
F 0 "#PWR08" H 8600 4550 50  0001 C CNN
F 1 "GND" H 8605 4627 50  0000 C CNN
F 2 "" H 8600 4800 50  0001 C CNN
F 3 "" H 8600 4800 50  0001 C CNN
	1    8600 4800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8450 4350 8150 4350
Wire Wire Line
	8150 4350 8150 4450
Wire Wire Line
	8750 4350 9100 4350
Wire Wire Line
	9100 4350 9100 4450
$Comp
L Device:C_Small C11
U 1 1 606365A1
P 9100 4550
F 0 "C11" H 9192 4596 50  0000 L CNN
F 1 "12p" H 9192 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 9100 4550 50  0001 C CNN
F 3 "~" H 9100 4550 50  0001 C CNN
F 4 "C1547" H 9100 4550 50  0001 C CNN "LCSC"
	1    9100 4550
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 60638AC4
P 8150 4550
F 0 "C6" H 8242 4596 50  0000 L CNN
F 1 "12p" H 8242 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 8150 4550 50  0001 C CNN
F 3 "~" H 8150 4550 50  0001 C CNN
F 4 "C1547" H 8150 4550 50  0001 C CNN "LCSC"
	1    8150 4550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9100 4650 9100 4800
Wire Wire Line
	8150 4650 8150 4800
Wire Wire Line
	9100 4350 9100 3850
Wire Wire Line
	9100 3850 7700 3850
Connection ~ 9100 4350
$Comp
L Device:R_Small R1
U 1 1 60648BF2
P 8150 4150
F 0 "R1" H 8209 4196 50  0000 L CNN
F 1 "47" H 8209 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8150 4150 50  0001 C CNN
F 3 "~" H 8150 4150 50  0001 C CNN
F 4 "C25118" H 8150 4150 50  0001 C CNN "LCSC"
	1    8150 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8150 4250 8150 4350
Connection ~ 8150 4350
Wire Wire Line
	8150 4050 8150 3950
Wire Wire Line
	8150 3950 7700 3950
Text Label 7700 3850 0    50   ~ 0
OSC_IN
Text Label 7700 3950 0    50   ~ 0
OSC_OUT
Wire Wire Line
	8600 4650 8600 4800
$Comp
L power:GND #PWR09
U 1 1 6064E178
P 9100 4800
F 0 "#PWR09" H 9100 4550 50  0001 C CNN
F 1 "GND" H 9105 4627 50  0000 C CNN
F 2 "" H 9100 4800 50  0001 C CNN
F 3 "" H 9100 4800 50  0001 C CNN
	1    9100 4800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6064E4B6
P 8150 4800
F 0 "#PWR04" H 8150 4550 50  0001 C CNN
F 1 "GND" H 8155 4627 50  0000 C CNN
F 2 "" H 8150 4800 50  0001 C CNN
F 3 "" H 8150 4800 50  0001 C CNN
	1    8150 4800
	-1   0    0    -1  
$EndComp
Text HLabel 4400 2150 2    50   Input ~ 0
MCU_SPI1_SCLK
Text HLabel 4400 2250 2    50   Input ~ 0
MCU_SPI1_MISO
Text HLabel 4400 2350 2    50   Input ~ 0
MCU_SPI1_MOSI
Text HLabel 4400 6050 2    50   Input ~ 0
MCU_SPI3_SCLK
Text HLabel 4400 6150 2    50   Input ~ 0
MCU_SPI3_MISO
Text HLabel 4400 6250 2    50   Input ~ 0
MCU_SPI3_MOSI
Text HLabel 4400 3750 2    50   Input ~ 0
MCU_ZCD
Text HLabel 4400 3950 2    50   Input ~ 0
MCU_LIGHT_GATE
Text HLabel 4400 3850 2    50   Input ~ 0
MCU_HEATER_GATE
Text HLabel 4400 4050 2    50   Input ~ 0
MCU_FAN_RELAY
Text HLabel 4400 2050 2    50   Input ~ 0
MCU_TEMP_CS
NoConn ~ 4400 1650
NoConn ~ 4400 1750
NoConn ~ 4400 1850
NoConn ~ 4400 1950
NoConn ~ 4400 2450
NoConn ~ 4400 2550
NoConn ~ 4400 2650
NoConn ~ 4400 3150
NoConn ~ 4400 3350
NoConn ~ 4400 3450
NoConn ~ 4400 3550
NoConn ~ 4400 4150
NoConn ~ 4400 4250
NoConn ~ 4400 4450
NoConn ~ 4400 5050
NoConn ~ 4400 5150
NoConn ~ 4400 5250
NoConn ~ 4400 5350
NoConn ~ 4400 5450
NoConn ~ 4400 5550
NoConn ~ 4400 5650
NoConn ~ 4400 5750
NoConn ~ 4400 5850
NoConn ~ 4400 5950
NoConn ~ 4400 6350
NoConn ~ 4400 6450
NoConn ~ 4400 6550
NoConn ~ 2600 6250
NoConn ~ 2600 6350
NoConn ~ 2600 5250
NoConn ~ 2600 5350
NoConn ~ 2600 5650
NoConn ~ 2600 3350
NoConn ~ 2600 3450
NoConn ~ 2600 3550
NoConn ~ 2600 3650
NoConn ~ 2600 3750
NoConn ~ 2600 3850
NoConn ~ 2600 3950
Wire Wire Line
	1950 2150 1950 2000
Wire Wire Line
	1950 2150 2600 2150
Wire Wire Line
	2050 2050 2050 2000
Wire Wire Line
	2050 2050 2600 2050
$Comp
L power:PWR_FLAG #FLG02
U 1 1 6070638F
P 2050 2000
F 0 "#FLG02" H 2050 2075 50  0001 C CNN
F 1 "PWR_FLAG" H 2050 2173 50  0001 C CNN
F 2 "" H 2050 2000 50  0001 C CNN
F 3 "~" H 2050 2000 50  0001 C CNN
	1    2050 2000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 607066A7
P 1950 2000
F 0 "#FLG01" H 1950 2075 50  0001 C CNN
F 1 "PWR_FLAG" H 1950 2173 50  0001 C CNN
F 2 "" H 1950 2000 50  0001 C CNN
F 3 "~" H 1950 2000 50  0001 C CNN
	1    1950 2000
	1    0    0    -1  
$EndComp
Text HLabel 4400 4350 2    50   Input ~ 0
MCU_TOUCH_CS
Text HLabel 4400 4550 2    50   Input ~ 0
MCU_TOUCH_IRQ
Text HLabel 4400 4650 2    50   Input ~ 0
MCU_SD_CS
Text HLabel 4400 4750 2    50   Input ~ 0
MCU_FLASH_CS
Text HLabel 4400 4850 2    50   Input ~ 0
MCU_TFT_RST
$EndSCHEMATC