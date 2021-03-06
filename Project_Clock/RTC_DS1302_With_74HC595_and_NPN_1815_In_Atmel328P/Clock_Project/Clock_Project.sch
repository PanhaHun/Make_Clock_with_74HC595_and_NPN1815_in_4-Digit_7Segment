EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Timer_RTC:DS1302N+ U1
U 1 1 622D96B4
P 2600 2550
F 0 "U1" H 3144 2596 50  0000 L CNN
F 1 "DS1302N+" H 3144 2505 50  0000 L CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 2600 2050 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1302.pdf" H 2600 2350 50  0001 C CNN
	1    2600 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_Small Y1
U 1 1 622DAA88
P 1750 2750
F 0 "Y1" V 2050 2700 50  0000 L CNN
F 1 "Crystal_Small" V 1950 2500 50  0000 L CNN
F 2 "Crystal:Crystal_Round_D3.0mm_Vertical" H 1750 2750 50  0001 C CNN
F 3 "~" H 1750 2750 50  0001 C CNN
	1    1750 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 2650 1750 2650
Wire Wire Line
	2100 2750 2100 2850
Wire Wire Line
	2100 2850 1750 2850
$Comp
L power:+5V #PWR01
U 1 1 622DC8D3
P 2500 1950
F 0 "#PWR01" H 2500 1800 50  0001 C CNN
F 1 "+5V" H 2350 2000 50  0000 C CNN
F 2 "" H 2500 1950 50  0001 C CNN
F 3 "" H 2500 1950 50  0001 C CNN
	1    2500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1950 2500 2150
$Comp
L power:+BATT #PWR02
U 1 1 622DE373
P 2600 1950
F 0 "#PWR02" H 2600 1800 50  0001 C CNN
F 1 "+BATT" H 2750 2000 50  0000 C CNN
F 2 "" H 2600 1950 50  0001 C CNN
F 3 "" H 2600 1950 50  0001 C CNN
	1    2600 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1950 2600 2150
$Comp
L power:GND #PWR03
U 1 1 622DEE70
P 2600 3100
F 0 "#PWR03" H 2600 2850 50  0001 C CNN
F 1 "GND" H 2605 2927 50  0000 C CNN
F 2 "" H 2600 3100 50  0001 C CNN
F 3 "" H 2600 3100 50  0001 C CNN
	1    2600 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2950 2600 3100
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U2
U 1 1 622DFAB3
P 5900 2850
F 0 "U2" H 5256 2896 50  0000 R CNN
F 1 "ATmega328P-PU" H 5256 2805 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm_Socket_LongPads" H 5900 2850 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5900 2850 50  0001 C CNN
	1    5900 2850
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U3
U 1 1 622E4C86
P 3000 4500
F 0 "U3" H 3000 5281 50  0000 C CNN
F 1 "74HC595" H 3000 5190 50  0000 C CNN
F 2 "" H 3000 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 3000 4500 50  0001 C CNN
	1    3000 4500
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q1
U 1 1 622E87AF
P 1550 4050
F 0 "Q1" H 1740 4096 50  0000 L CNN
F 1 "2SC1815" H 1740 4005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1750 3975 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 1550 4050 50  0001 L CNN
	1    1550 4050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q2
U 1 1 622E9E78
P 1550 4450
F 0 "Q2" H 1740 4496 50  0000 L CNN
F 1 "2SC1815" H 1740 4405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1750 4375 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 1550 4450 50  0001 L CNN
	1    1550 4450
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q3
U 1 1 622EA20C
P 1550 4900
F 0 "Q3" H 1740 4946 50  0000 L CNN
F 1 "2SC1815" H 1740 4855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1750 4825 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 1550 4900 50  0001 L CNN
	1    1550 4900
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2SC1815 Q4
U 1 1 622EA65E
P 1550 5350
F 0 "Q4" H 1740 5396 50  0000 L CNN
F 1 "2SC1815" H 1740 5305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 1750 5275 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Toshiba%20PDFs/2SC1815.pdf" H 1550 5350 50  0001 L CNN
	1    1550 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_Small Y2
U 1 1 622EAE5D
P 7150 2250
F 0 "Y2" V 7104 2338 50  0000 L CNN
F 1 "Crystal_Small" V 7195 2338 50  0000 L CNN
F 2 "" H 7150 2250 50  0001 C CNN
F 3 "~" H 7150 2250 50  0001 C CNN
	1    7150 2250
	0    1    1    0   
$EndComp
$EndSCHEMATC
