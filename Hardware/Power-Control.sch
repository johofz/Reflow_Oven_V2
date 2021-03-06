EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 7
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
L Isolator:H11AA1 U4
U 1 1 6036F572
P 8150 3100
F 0 "U4" H 8150 3425 50  0000 C CNN
F 1 "H11AA1" H 8150 3334 50  0000 C CNN
F 2 "Package_DIP:SMDIP-6_W9.53mm" H 7660 2905 50  0001 L CIN
F 3 "https://www.vishay.com/docs/83608/h11aa1.pdf" H 8910 3730 50  0001 L CNN
F 4 "C258253" H 8150 3100 50  0001 C CNN "LCSC"
	1    8150 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 6037016C
P 7500 3200
F 0 "R12" V 7300 3200 50  0000 C CNN
F 1 "33k" V 7400 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7500 3200 50  0001 C CNN
F 3 "~" H 7500 3200 50  0001 C CNN
F 4 "C17633" H 7500 3200 50  0001 C CNN "LCSC"
	1    7500 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 3200 7200 3200
$Comp
L Device:R_Small R11
U 1 1 603705EE
P 7500 3000
F 0 "R11" V 7300 3000 50  0000 C CNN
F 1 "33k" V 7400 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 7500 3000 50  0001 C CNN
F 3 "~" H 7500 3000 50  0001 C CNN
F 4 "C17633" H 7500 3000 50  0001 C CNN "LCSC"
	1    7500 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 3000 7200 3000
Wire Wire Line
	7850 3000 7600 3000
Wire Wire Line
	7850 3200 7600 3200
Text GLabel 7200 3200 0    49   Input ~ 0
AC_L
Text GLabel 7200 3000 0    49   Input ~ 0
AC_N
Wire Wire Line
	8450 3200 8550 3200
Wire Wire Line
	8550 3200 8550 3300
$Comp
L power:GND #PWR027
U 1 1 603731A8
P 8550 3300
F 0 "#PWR027" H 8550 3050 50  0001 C CNN
F 1 "GND" H 8555 3127 50  0000 C CNN
F 2 "" H 8550 3300 50  0001 C CNN
F 3 "" H 8550 3300 50  0001 C CNN
	1    8550 3300
	1    0    0    -1  
$EndComp
NoConn ~ 8450 3000
Wire Wire Line
	8450 3100 8550 3100
Wire Wire Line
	8550 3100 8550 2800
$Comp
L power:+3.3V #PWR026
U 1 1 60373CD9
P 8550 2600
F 0 "#PWR026" H 8550 2450 50  0001 C CNN
F 1 "+3.3V" H 8565 2773 50  0000 C CNN
F 2 "" H 8550 2600 50  0001 C CNN
F 3 "" H 8550 2600 50  0001 C CNN
	1    8550 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 6037402F
P 8550 2700
F 0 "R13" H 8609 2746 50  0000 L CNN
F 1 "10k" H 8609 2655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8550 2700 50  0001 C CNN
F 3 "~" H 8550 2700 50  0001 C CNN
F 4 "C25804" H 8550 2700 50  0001 C CNN "LCSC"
	1    8550 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3100 8900 3100
Connection ~ 8550 3100
Text HLabel 8900 3100 2    49   Input ~ 0
ZERO_CROSSING
$Comp
L Device:Q_TRIAC_A1A2G D3
U 1 1 6037B609
P 3500 2000
F 0 "D3" H 3629 2046 50  0000 L CNN
F 1 "T1235-600G-TR" H 3629 1955 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" V 3575 2025 50  0001 C CNN
F 3 "~" V 3500 2000 50  0001 C CNN
F 4 "" H 3500 2000 50  0001 C CNN "LCSC"
	1    3500 2000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3500 1750 2400 1750
Wire Wire Line
	3500 1750 3500 1850
$Comp
L Connector_Generic:Conn_01x02 CONN_HEATER1
U 1 1 6037C438
P 2200 1850
F 0 "CONN_HEATER1" H 2118 1525 50  0000 C CNN
F 1 "Conn_01x02" H 2118 1616 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_Wuerth_691311400102_P7.62mm" H 2200 1850 50  0001 C CNN
F 3 "~" H 2200 1850 50  0001 C CNN
F 4 "C8422" H 2200 1850 50  0001 C CNN "LCSC"
	1    2200 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 1850 2550 1850
Wire Wire Line
	2550 1850 2550 2150
Wire Wire Line
	2550 2150 2400 2150
Wire Wire Line
	2400 2300 3500 2300
Wire Wire Line
	3500 2300 3500 2150
Text GLabel 2400 2150 0    49   Input ~ 0
AC_L
Text GLabel 2400 2300 0    49   Input ~ 0
AC_N
Wire Wire Line
	3500 1750 3750 1750
Connection ~ 3500 1750
$Comp
L Device:R_Small R5
U 1 1 6037DDC3
P 3850 1750
F 0 "R5" V 3650 1750 50  0000 C CNN
F 1 "180" V 3750 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3850 1750 50  0001 C CNN
F 3 "~" H 3850 1750 50  0001 C CNN
F 4 "C25270" H 3850 1750 50  0001 C CNN "LCSC"
	1    3850 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 2100 4000 2100
$Comp
L Relay_SolidState:MOC3023M U2
U 1 1 6037EA6F
P 4400 1900
F 0 "U2" H 4400 2225 50  0000 C CNN
F 1 "MOC3023M" H 4400 2134 50  0000 C CNN
F 2 "Package_DIP:SMDIP-6_W9.53mm" H 4200 1700 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MOC3023M-D.PDF" H 4400 1900 50  0001 L CNN
F 4 "C40701" H 4400 1900 50  0001 C CNN "LCSC"
	1    4400 1900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4000 2100 4000 2000
Wire Wire Line
	4000 2000 4100 2000
Wire Wire Line
	4100 1800 4000 1800
Wire Wire Line
	4000 1800 4000 1750
Wire Wire Line
	4000 1750 3950 1750
Wire Wire Line
	4700 1800 4900 1800
Wire Wire Line
	4700 2000 4900 2000
Wire Wire Line
	4900 2000 4900 2150
$Comp
L power:GND #PWR024
U 1 1 60383710
P 4900 2150
F 0 "#PWR024" H 4900 1900 50  0001 C CNN
F 1 "GND" H 4905 1977 50  0000 C CNN
F 2 "" H 4900 2150 50  0001 C CNN
F 3 "" H 4900 2150 50  0001 C CNN
	1    4900 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 60383C1B
P 5000 1800
F 0 "R9" V 4804 1800 50  0000 C CNN
F 1 "470" V 4895 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5000 1800 50  0001 C CNN
F 3 "~" H 5000 1800 50  0001 C CNN
F 4 "C23179" H 5000 1800 50  0001 C CNN "LCSC"
	1    5000 1800
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 1800 5300 1800
Text HLabel 5300 1800 2    49   Input ~ 0
HEATER_GATE
Wire Notes Line
	9850 3800 6200 3800
Wire Notes Line
	6200 3800 6200 2150
Wire Notes Line
	6200 2150 9850 2150
Wire Notes Line
	9850 2150 9850 3800
Wire Notes Line
	6050 2900 1600 2900
Wire Notes Line
	1600 2900 1600 1100
Wire Notes Line
	1600 1100 6050 1100
Wire Notes Line
	6050 1100 6050 2900
Text Notes 4550 2800 0    118  Italic 24
Heater-Control
Text Notes 7850 3700 0    118  Italic 24
Zero Corss Detection
$Comp
L Device:Q_TRIAC_A1A2G D4
U 1 1 6036F40C
P 3500 3950
F 0 "D4" H 3629 3996 50  0000 L CNN
F 1 "T1235-600G-TR" H 3629 3905 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:TO-263-2" V 3575 3975 50  0001 C CNN
F 3 "~" V 3500 3950 50  0001 C CNN
F 4 "C155555" H 3500 3950 50  0001 C CNN "LCSC"
	1    3500 3950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3500 3700 2400 3700
Wire Wire Line
	3500 3700 3500 3800
$Comp
L Connector_Generic:Conn_01x02 CONN_LIGHT1
U 1 1 6036F414
P 2200 3800
F 0 "CONN_LIGHT1" H 2118 3475 50  0000 C CNN
F 1 "Conn_01x02" H 2118 3566 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_Wuerth_691311400102_P7.62mm" H 2200 3800 50  0001 C CNN
F 3 "~" H 2200 3800 50  0001 C CNN
F 4 "C8422" H 2200 3800 50  0001 C CNN "LCSC"
	1    2200 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 3800 2550 3800
Wire Wire Line
	2550 3800 2550 4100
Wire Wire Line
	2550 4100 2400 4100
Wire Wire Line
	2400 4250 3500 4250
Wire Wire Line
	3500 4250 3500 4100
Text GLabel 2400 4100 0    49   Input ~ 0
AC_L
Text GLabel 2400 4250 0    49   Input ~ 0
AC_N
Wire Wire Line
	3500 3700 3750 3700
Connection ~ 3500 3700
$Comp
L Device:R_Small R6
U 1 1 6036F423
P 3850 3700
F 0 "R6" V 3650 3700 50  0000 C CNN
F 1 "180" V 3750 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3850 3700 50  0001 C CNN
F 3 "~" H 3850 3700 50  0001 C CNN
F 4 "C25270" H 3850 3700 50  0001 C CNN "LCSC"
	1    3850 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 4050 4000 4050
$Comp
L Relay_SolidState:MOC3023M U3
U 1 1 6036F42A
P 4400 3850
F 0 "U3" H 4400 4175 50  0000 C CNN
F 1 "MOC3023M" H 4400 4084 50  0000 C CNN
F 2 "Package_DIP:SMDIP-6_W9.53mm" H 4200 3650 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MOC3023M-D.PDF" H 4400 3850 50  0001 L CNN
F 4 "C40701" H 4400 3850 50  0001 C CNN "LCSC"
	1    4400 3850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4000 4050 4000 3950
Wire Wire Line
	4000 3950 4100 3950
Wire Wire Line
	4100 3750 4000 3750
Wire Wire Line
	4000 3750 4000 3700
Wire Wire Line
	4000 3700 3950 3700
Wire Wire Line
	4700 3750 4900 3750
Wire Wire Line
	4700 3950 4900 3950
Wire Wire Line
	4900 3950 4900 4100
$Comp
L power:GND #PWR025
U 1 1 6036F438
P 4900 4100
F 0 "#PWR025" H 4900 3850 50  0001 C CNN
F 1 "GND" H 4905 3927 50  0000 C CNN
F 2 "" H 4900 4100 50  0001 C CNN
F 3 "" H 4900 4100 50  0001 C CNN
	1    4900 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R10
U 1 1 6036F43E
P 5000 3750
F 0 "R10" V 4804 3750 50  0000 C CNN
F 1 "470" V 4895 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5000 3750 50  0001 C CNN
F 3 "~" H 5000 3750 50  0001 C CNN
F 4 "C23179" H 5000 3750 50  0001 C CNN "LCSC"
	1    5000 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 3750 5300 3750
Text HLabel 5300 3750 2    49   Input ~ 0
LIGHT_GATE
Wire Notes Line
	6050 4850 1600 4850
Wire Notes Line
	1600 4850 1600 3050
Wire Notes Line
	1600 3050 6050 3050
Wire Notes Line
	6050 3050 6050 4850
Text Notes 4700 4750 0    118  Italic 24
Light-Control
Text GLabel 3000 6300 0    49   Input ~ 0
AC_N
Text HLabel 4600 6600 2    49   Input ~ 0
FAN_GATE
Wire Notes Line
	1600 7300 1600 5000
Wire Notes Line
	1600 5000 6050 5000
Wire Notes Line
	6050 5000 6050 7300
Text Notes 4800 7200 0    118  Italic 24
Fan-Control
Text GLabel 2750 5600 2    49   Input ~ 0
AC_L
$Comp
L Connector_Generic:Conn_01x02 CONN_FAN1
U 1 1 6037497F
P 2550 5600
F 0 "CONN_FAN1" H 2468 5275 50  0000 C CNN
F 1 "Conn_01x02" H 2468 5366 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_Wuerth_691311400102_P7.62mm" H 2550 5600 50  0001 C CNN
F 3 "~" H 2550 5600 50  0001 C CNN
F 4 "C8422" H 2550 5600 50  0001 C CNN "LCSC"
	1    2550 5600
	-1   0    0    1   
$EndComp
$Comp
L Relay:SANYOU_SRD_Form_A K1
U 1 1 6061C17A
P 3700 5900
F 0 "K1" H 4150 5950 50  0000 R CNN
F 1 "SANYOU_SRD_Form_A" H 4800 6050 50  0000 R CNN
F 2 "Relay_THT:Relay_SPST_SANYOU_SRD_Series_Form_A" H 4050 5850 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 3700 5900 50  0001 C CNN
F 4 "C35449" H 3700 5900 50  0001 C CNN "LCSC"
	1    3700 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 5500 3500 5500
Wire Wire Line
	3500 5500 3500 5600
Wire Wire Line
	3000 6300 3500 6300
Wire Wire Line
	3500 6300 3500 6200
$Comp
L power:+5V #PWR022
U 1 1 606245E5
P 3900 5450
F 0 "#PWR022" H 3900 5300 50  0001 C CNN
F 1 "+5V" H 3915 5623 50  0000 C CNN
F 2 "" H 3900 5450 50  0001 C CNN
F 3 "" H 3900 5450 50  0001 C CNN
	1    3900 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5450 3900 5500
Wire Wire Line
	4300 5500 3900 5500
Connection ~ 3900 5500
Wire Wire Line
	3900 5500 3900 5600
Wire Wire Line
	4300 6300 3900 6300
Wire Wire Line
	3900 6300 3900 6200
Connection ~ 3900 6300
Wire Wire Line
	3900 6400 3900 6300
$Comp
L Transistor_FET:AO3400A Q1
U 1 1 6062C15F
P 4000 6600
F 0 "Q1" H 4205 6646 50  0000 L CNN
F 1 "AO3400A" H 4205 6555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4200 6525 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 4000 6600 50  0001 L CNN
F 4 "C20917" H 4000 6600 50  0001 C CNN "LCSC"
	1    4000 6600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 60632875
P 3900 6950
F 0 "#PWR023" H 3900 6700 50  0001 C CNN
F 1 "GND" H 3905 6777 50  0000 C CNN
F 2 "" H 3900 6950 50  0001 C CNN
F 3 "" H 3900 6950 50  0001 C CNN
	1    3900 6950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 60633254
P 4400 6600
F 0 "R8" V 4204 6600 50  0000 C CNN
F 1 "1k" V 4295 6600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4400 6600 50  0001 C CNN
F 3 "~" H 4400 6600 50  0001 C CNN
F 4 "C21190" H 4400 6600 50  0001 C CNN "LCSC"
	1    4400 6600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 60633808
P 4250 6750
F 0 "R7" H 4191 6704 50  0000 R CNN
F 1 "10k" H 4191 6795 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4250 6750 50  0001 C CNN
F 3 "~" H 4250 6750 50  0001 C CNN
F 4 "C25804" H 4250 6750 50  0001 C CNN "LCSC"
	1    4250 6750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4200 6600 4250 6600
Wire Wire Line
	4250 6600 4250 6650
Connection ~ 4250 6600
Wire Wire Line
	4250 6600 4300 6600
Wire Wire Line
	4500 6600 4600 6600
Wire Wire Line
	4250 6850 4250 6900
Wire Wire Line
	4250 6900 3900 6900
Wire Wire Line
	3900 6950 3900 6900
Connection ~ 3900 6900
Wire Wire Line
	3900 6900 3900 6800
Wire Notes Line
	1600 7300 6050 7300
$Comp
L Diode:SM4007 D5
U 1 1 6068457A
P 4300 5900
F 0 "D5" V 4254 5980 50  0000 L CNN
F 1 "SM4007PL" V 4345 5980 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 4300 5725 50  0001 C CNN
F 3 "http://cdn-reichelt.de/documents/datenblatt/A400/SMD1N400%23DIO.pdf" H 4300 5900 50  0001 C CNN
F 4 "C64898" H 4300 5900 50  0001 C CNN "LCSC"
	1    4300 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 5750 4300 5500
Wire Wire Line
	4300 6050 4300 6300
$EndSCHEMATC
