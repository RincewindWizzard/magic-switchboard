EESchema Schematic File Version 4
LIBS:magic-switchboard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Magic Switchboard"
Date "2018-12-31"
Rev "r2"
Comp "magierdinge.de"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Battery_Cell BT1
U 1 1 5C2A4986
P 1700 2050
F 0 "BT1" H 1818 2146 50  0000 L CNN
F 1 "3V" H 1818 2055 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_3009_1x2450" V 1700 2110 50  0001 C CNN
F 3 "~" V 1700 2110 50  0001 C CNN
	1    1700 2050
	1    0    0    -1  
$EndComp
$Comp
L switchboard:XY-016 U1
U 1 1 5C2A4AF6
P 3400 2400
F 0 "U1" H 3400 2815 50  0000 C CNN
F 1 "XY-016" H 3400 2724 50  0000 C CNN
F 2 "switchboard:XY-016" H 3400 2500 50  0001 C CNN
F 3 "" H 3400 2500 50  0001 C CNN
	1    3400 2400
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5C2A4DAB
P 8250 2550
F 0 "A1" H 8250 1464 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 8250 1373 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 8400 1600 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 8250 1550 50  0001 C CNN
	1    8250 2550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 5C2A6172
P 3900 2250
F 0 "#PWR011" H 3900 2100 50  0001 C CNN
F 1 "VCC" H 3917 2423 50  0000 C CNN
F 2 "" H 3900 2250 50  0001 C CNN
F 3 "" H 3900 2250 50  0001 C CNN
	1    3900 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5C2A620C
P 3900 2550
F 0 "#PWR012" H 3900 2300 50  0001 C CNN
F 1 "GND" H 3905 2377 50  0000 C CNN
F 2 "" H 3900 2550 50  0001 C CNN
F 3 "" H 3900 2550 50  0001 C CNN
	1    3900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2250 3800 2250
Wire Wire Line
	3900 2550 3800 2550
Wire Wire Line
	3000 2550 2700 2550
Wire Wire Line
	2700 2250 3000 2250
$Comp
L power:GND #PWR013
U 1 1 5C2A7170
P 8600 5850
F 0 "#PWR013" H 8600 5600 50  0001 C CNN
F 1 "GND" H 8605 5677 50  0000 C CNN
F 2 "" H 8600 5850 50  0001 C CNN
F 3 "" H 8600 5850 50  0001 C CNN
	1    8600 5850
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 5C2A71D2
P 8600 5000
F 0 "#PWR09" H 8600 4850 50  0001 C CNN
F 1 "VCC" H 8617 5173 50  0000 C CNN
F 2 "" H 8600 5000 50  0001 C CNN
F 3 "" H 8600 5000 50  0001 C CNN
	1    8600 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7150 2550 7750 2550
Wire Wire Line
	7250 2650 7250 4600
Wire Wire Line
	7250 2650 7750 2650
Wire Wire Line
	7350 4500 7350 2750
Wire Wire Line
	7350 2750 7750 2750
Wire Wire Line
	7450 4400 7450 2850
Wire Wire Line
	7450 2850 7750 2850
$Comp
L power:VCC #PWR016
U 1 1 5C2C216D
P 8150 1400
F 0 "#PWR016" H 8150 1250 50  0001 C CNN
F 1 "VCC" H 8167 1573 50  0000 C CNN
F 2 "" H 8150 1400 50  0001 C CNN
F 3 "" H 8150 1400 50  0001 C CNN
	1    8150 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 1400 8150 1550
$Comp
L power:GND #PWR017
U 1 1 5C2C35C4
P 8350 3850
F 0 "#PWR017" H 8350 3600 50  0001 C CNN
F 1 "GND" H 8355 3677 50  0000 C CNN
F 2 "" H 8350 3850 50  0001 C CNN
F 3 "" H 8350 3850 50  0001 C CNN
	1    8350 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3850 8350 3550
$Comp
L Device:LED D1
U 1 1 5C2A516D
P 8600 5200
F 0 "D1" V 8638 5083 50  0000 R CNN
F 1 "Red" V 8547 5083 50  0000 R CNN
F 2 "switchboard:E10 Edison Socket Print Pins" H 8600 5200 50  0001 C CNN
F 3 "~" H 8600 5200 50  0001 C CNN
	1    8600 5200
	0    1    -1   0   
$EndComp
$Comp
L Device:CP C1
U 1 1 5C2CDA79
P 2700 2400
F 0 "C1" H 2818 2446 50  0000 L CNN
F 1 "100uF" H 2818 2355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2738 2250 50  0001 C CNN
F 3 "~" H 2700 2400 50  0001 C CNN
	1    2700 2400
	1    0    0    -1  
$EndComp
Connection ~ 2700 2550
Wire Wire Line
	2700 2250 2600 2250
Connection ~ 2700 2250
$Comp
L Device:CP C2
U 1 1 5C2D5FC7
P 4050 2400
F 0 "C2" H 4168 2446 50  0000 L CNN
F 1 "100uF" H 4168 2355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 4088 2250 50  0001 C CNN
F 3 "~" H 4050 2400 50  0001 C CNN
	1    4050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2250 3900 2250
Connection ~ 3900 2250
Wire Wire Line
	4050 2550 3900 2550
Connection ~ 3900 2550
$Comp
L power:GND #PWR0101
U 1 1 5C2D1688
P 2700 2650
F 0 "#PWR0101" H 2700 2400 50  0001 C CNN
F 1 "GND" H 2705 2477 50  0000 C CNN
F 2 "" H 2700 2650 50  0001 C CNN
F 3 "" H 2700 2650 50  0001 C CNN
	1    2700 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 2650 2700 2550
$Comp
L dk_Slide-Switches:JS202011SCQN S?
U 1 1 5C47B817
P 5800 1250
F 0 "S?" H 5800 1733 50  0000 C CNN
F 1 "MTS-203" H 5800 1642 50  0000 C CNN
F 2 "digikey-footprints:Switch_Slide_JS202011SCQN" H 6000 1450 50  0001 L CNN
F 3 "https://www.ckswitches.com/media/1422/js.pdf" H 6000 1550 60  0001 L CNN
F 4 "401-2002-1-ND" H 6000 1650 60  0001 L CNN "Digi-Key_PN"
F 5 "JS202011SCQN" H 6000 1750 60  0001 L CNN "MPN"
F 6 "Switches" H 6000 1850 60  0001 L CNN "Category"
F 7 "Slide Switches" H 6000 1950 60  0001 L CNN "Family"
F 8 "https://www.ckswitches.com/media/1422/js.pdf" H 6000 2050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/c-k/JS202011SCQN/401-2002-1-ND/1640098" H 6000 2150 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH SLIDE DPDT 300MA 6V" H 6000 2250 60  0001 L CNN "Description"
F 11 "C&K" H 6000 2350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6000 2450 60  0001 L CNN "Status"
	1    5800 1250
	-1   0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q?
U 1 1 5C47BC90
P 8600 5600
F 0 "Q?" H 8708 5653 60  0000 L CNN
F 1 "2N7000" H 8708 5547 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 8800 5800 60  0001 L CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 8800 5900 60  0001 L CNN
F 4 "2N7000FS-ND" H 8800 6000 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 8800 6100 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 8800 6200 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 8800 6300 60  0001 L CNN "Family"
F 8 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 8800 6400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 8800 6500 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 8800 6600 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 8800 6700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8800 6800 60  0001 L CNN "Status"
	1    8600 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5000 8600 5050
Wire Wire Line
	8600 5350 8600 5400
Wire Wire Line
	8600 5800 8600 5850
$Comp
L power:GND #PWR?
U 1 1 5C48113D
P 7550 5850
F 0 "#PWR?" H 7550 5600 50  0001 C CNN
F 1 "GND" H 7555 5677 50  0000 C CNN
F 2 "" H 7550 5850 50  0001 C CNN
F 3 "" H 7550 5850 50  0001 C CNN
	1    7550 5850
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5C481143
P 7550 5000
F 0 "#PWR?" H 7550 4850 50  0001 C CNN
F 1 "VCC" H 7567 5173 50  0000 C CNN
F 2 "" H 7550 5000 50  0001 C CNN
F 3 "" H 7550 5000 50  0001 C CNN
	1    7550 5000
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5C481149
P 7550 5200
F 0 "D?" V 7588 5083 50  0000 R CNN
F 1 "Red" V 7497 5083 50  0000 R CNN
F 2 "switchboard:E10 Edison Socket Print Pins" H 7550 5200 50  0001 C CNN
F 3 "~" H 7550 5200 50  0001 C CNN
	1    7550 5200
	0    1    -1   0   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q?
U 1 1 5C481158
P 7550 5600
F 0 "Q?" H 7658 5653 60  0000 L CNN
F 1 "2N7000" H 7658 5547 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 7750 5800 60  0001 L CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 7750 5900 60  0001 L CNN
F 4 "2N7000FS-ND" H 7750 6000 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 7750 6100 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7750 6200 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 7750 6300 60  0001 L CNN "Family"
F 8 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 7750 6400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 7750 6500 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 7750 6600 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 7750 6700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7750 6800 60  0001 L CNN "Status"
	1    7550 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5000 7550 5050
Wire Wire Line
	7550 5350 7550 5400
Wire Wire Line
	7550 5800 7550 5850
$Comp
L power:GND #PWR?
U 1 1 5C482C0A
P 10600 5850
F 0 "#PWR?" H 10600 5600 50  0001 C CNN
F 1 "GND" H 10605 5677 50  0000 C CNN
F 2 "" H 10600 5850 50  0001 C CNN
F 3 "" H 10600 5850 50  0001 C CNN
	1    10600 5850
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5C482C10
P 10600 5000
F 0 "#PWR?" H 10600 4850 50  0001 C CNN
F 1 "VCC" H 10617 5173 50  0000 C CNN
F 2 "" H 10600 5000 50  0001 C CNN
F 3 "" H 10600 5000 50  0001 C CNN
	1    10600 5000
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5C482C16
P 10600 5200
F 0 "D?" V 10638 5083 50  0000 R CNN
F 1 "Red" V 10547 5083 50  0000 R CNN
F 2 "switchboard:E10 Edison Socket Print Pins" H 10600 5200 50  0001 C CNN
F 3 "~" H 10600 5200 50  0001 C CNN
	1    10600 5200
	0    1    -1   0   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q?
U 1 1 5C482C25
P 10600 5600
F 0 "Q?" H 10708 5653 60  0000 L CNN
F 1 "2N7000" H 10708 5547 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 10800 5800 60  0001 L CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 10800 5900 60  0001 L CNN
F 4 "2N7000FS-ND" H 10800 6000 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 10800 6100 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 10800 6200 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 10800 6300 60  0001 L CNN "Family"
F 8 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 10800 6400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 10800 6500 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 10800 6600 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 10800 6700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10800 6800 60  0001 L CNN "Status"
	1    10600 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 5000 10600 5050
Wire Wire Line
	10600 5350 10600 5400
Wire Wire Line
	10600 5800 10600 5850
$Comp
L power:GND #PWR?
U 1 1 5C482C2E
P 9550 5850
F 0 "#PWR?" H 9550 5600 50  0001 C CNN
F 1 "GND" H 9555 5677 50  0000 C CNN
F 2 "" H 9550 5850 50  0001 C CNN
F 3 "" H 9550 5850 50  0001 C CNN
	1    9550 5850
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5C482C34
P 9550 5000
F 0 "#PWR?" H 9550 4850 50  0001 C CNN
F 1 "VCC" H 9567 5173 50  0000 C CNN
F 2 "" H 9550 5000 50  0001 C CNN
F 3 "" H 9550 5000 50  0001 C CNN
	1    9550 5000
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5C482C3A
P 9550 5200
F 0 "D?" V 9588 5083 50  0000 R CNN
F 1 "Red" V 9497 5083 50  0000 R CNN
F 2 "switchboard:E10 Edison Socket Print Pins" H 9550 5200 50  0001 C CNN
F 3 "~" H 9550 5200 50  0001 C CNN
	1    9550 5200
	0    1    -1   0   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q?
U 1 1 5C482C49
P 9550 5600
F 0 "Q?" H 9658 5653 60  0000 L CNN
F 1 "2N7000" H 9658 5547 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 9750 5800 60  0001 L CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 9750 5900 60  0001 L CNN
F 4 "2N7000FS-ND" H 9750 6000 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 9750 6100 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9750 6200 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 9750 6300 60  0001 L CNN "Family"
F 8 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 9750 6400 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 9750 6500 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 9750 6600 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 9750 6700 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9750 6800 60  0001 L CNN "Status"
	1    9550 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5000 9550 5050
Wire Wire Line
	9550 5350 9550 5400
Wire Wire Line
	9550 5800 9550 5850
Wire Wire Line
	7150 5700 7250 5700
Wire Wire Line
	8200 5700 8300 5700
Wire Wire Line
	7250 4600 8200 4600
Wire Wire Line
	9150 5700 9250 5700
Wire Wire Line
	7350 4500 9150 4500
Wire Wire Line
	10200 5700 10300 5700
Wire Wire Line
	7450 4400 10200 4400
$Comp
L Transistor_FET:BS250 Q?
U 1 1 5C48F3B9
P 2500 2050
F 0 "Q?" H 2705 2096 50  0000 L CNN
F 1 "BS250" H 2705 2005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2700 1975 50  0001 L CIN
F 3 "http://www.vishay.com/docs/70209/70209.pdf" H 2500 2050 50  0001 L CNN
	1    2500 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C4934B4
P 2300 3550
F 0 "#PWR?" H 2300 3300 50  0001 C CNN
F 1 "GND" H 2305 3377 50  0000 C CNN
F 2 "" H 2300 3550 50  0001 C CNN
F 3 "" H 2300 3550 50  0001 C CNN
	1    2300 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C49C79B
P 2300 1850
F 0 "R?" V 2093 1850 50  0000 C CNN
F 1 "10k" V 2184 1850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 2230 1850 50  0001 C CNN
F 3 "~" H 2300 1850 50  0001 C CNN
	1    2300 1850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 2050 2300 2000
Connection ~ 2300 2050
Wire Wire Line
	2600 1850 2600 1600
Wire Wire Line
	2600 1600 2300 1600
Wire Wire Line
	1700 1600 1700 1850
Wire Wire Line
	2300 1700 2300 1600
Connection ~ 2300 1600
Wire Wire Line
	2300 1600 1700 1600
$Comp
L power:GND #PWR?
U 1 1 5C4A2043
P 5550 1600
F 0 "#PWR?" H 5550 1350 50  0001 C CNN
F 1 "GND" H 5555 1427 50  0000 C CNN
F 2 "" H 5550 1600 50  0001 C CNN
F 3 "" H 5550 1600 50  0001 C CNN
	1    5550 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1600 5550 1550
Wire Wire Line
	5550 1550 5600 1550
$Comp
L power:GND #PWR?
U 1 1 5C4A367D
P 5450 1150
F 0 "#PWR?" H 5450 900 50  0001 C CNN
F 1 "GND" H 5455 977 50  0000 C CNN
F 2 "" H 5450 1150 50  0001 C CNN
F 3 "" H 5450 1150 50  0001 C CNN
	1    5450 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1150 5450 1150
$Comp
L power:VCC #PWR?
U 1 1 5C4A4DAB
P 5450 950
F 0 "#PWR?" H 5450 800 50  0001 C CNN
F 1 "VCC" H 5467 1123 50  0000 C CNN
F 2 "" H 5450 950 50  0001 C CNN
F 3 "" H 5450 950 50  0001 C CNN
	1    5450 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 950  5600 950 
$Comp
L Transistor_BJT:BC547 Q?
U 1 1 5C4A0DE6
P 2200 3300
F 0 "Q?" H 2391 3346 50  0000 L CNN
F 1 "BC547" H 2391 3255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2400 3225 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 2200 3300 50  0001 L CNN
	1    2200 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3550 2300 3500
$Comp
L Device:R R?
U 1 1 5C4A6352
P 1750 3300
F 0 "R?" V 1543 3300 50  0000 C CNN
F 1 "10k" V 1634 3300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 1680 3300 50  0001 C CNN
F 3 "~" H 1750 3300 50  0001 C CNN
	1    1750 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 3300 2000 3300
Text GLabel 6150 1450 2    50   Input ~ 0
powerswitch
Wire Wire Line
	6000 1450 6150 1450
Text GLabel 2450 2950 2    50   Input ~ 0
powerswitch
Wire Wire Line
	2300 3100 2300 2950
Wire Wire Line
	2300 2950 2450 2950
Wire Wire Line
	2300 2050 2300 2950
Connection ~ 2300 2950
Text GLabel 7550 3000 3    50   Input ~ 0
deadmantrap
Text GLabel 1500 3300 0    50   Input ~ 0
deadmantrap
Wire Wire Line
	1500 3300 1600 3300
$Comp
L power:GND #PWR?
U 1 1 5C4B31E6
P 1700 2250
F 0 "#PWR?" H 1700 2000 50  0001 C CNN
F 1 "GND" H 1705 2077 50  0000 C CNN
F 2 "" H 1700 2250 50  0001 C CNN
F 3 "" H 1700 2250 50  0001 C CNN
	1    1700 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2250 1700 2150
$Comp
L dk_Slide-Switches:JS202011SCQN S?
U 1 1 5C4BBE92
P 5800 2350
F 0 "S?" H 5800 2833 50  0000 C CNN
F 1 "MTS-203" H 5800 2742 50  0000 C CNN
F 2 "digikey-footprints:Switch_Slide_JS202011SCQN" H 6000 2550 50  0001 L CNN
F 3 "https://www.ckswitches.com/media/1422/js.pdf" H 6000 2650 60  0001 L CNN
F 4 "401-2002-1-ND" H 6000 2750 60  0001 L CNN "Digi-Key_PN"
F 5 "JS202011SCQN" H 6000 2850 60  0001 L CNN "MPN"
F 6 "Switches" H 6000 2950 60  0001 L CNN "Category"
F 7 "Slide Switches" H 6000 3050 60  0001 L CNN "Family"
F 8 "https://www.ckswitches.com/media/1422/js.pdf" H 6000 3150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/c-k/JS202011SCQN/401-2002-1-ND/1640098" H 6000 3250 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH SLIDE DPDT 300MA 6V" H 6000 3350 60  0001 L CNN "Description"
F 11 "C&K" H 6000 3450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6000 3550 60  0001 L CNN "Status"
	1    5800 2350
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C4BBE98
P 5550 2700
F 0 "#PWR?" H 5550 2450 50  0001 C CNN
F 1 "GND" H 5555 2527 50  0000 C CNN
F 2 "" H 5550 2700 50  0001 C CNN
F 3 "" H 5550 2700 50  0001 C CNN
	1    5550 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2700 5550 2650
Wire Wire Line
	5550 2650 5600 2650
$Comp
L power:GND #PWR?
U 1 1 5C4BBEA0
P 5450 2250
F 0 "#PWR?" H 5450 2000 50  0001 C CNN
F 1 "GND" H 5455 2077 50  0000 C CNN
F 2 "" H 5450 2250 50  0001 C CNN
F 3 "" H 5450 2250 50  0001 C CNN
	1    5450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2250 5450 2250
$Comp
L power:VCC #PWR?
U 1 1 5C4BBEA7
P 5450 2050
F 0 "#PWR?" H 5450 1900 50  0001 C CNN
F 1 "VCC" H 5467 2223 50  0000 C CNN
F 2 "" H 5450 2050 50  0001 C CNN
F 3 "" H 5450 2050 50  0001 C CNN
	1    5450 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 2050 5600 2050
Text GLabel 6150 2550 2    50   Input ~ 0
powerswitch
Wire Wire Line
	6000 2550 6150 2550
$Comp
L dk_Slide-Switches:JS202011SCQN S?
U 1 1 5C4BD66C
P 5850 3450
F 0 "S?" H 5850 3933 50  0000 C CNN
F 1 "MTS-203" H 5850 3842 50  0000 C CNN
F 2 "digikey-footprints:Switch_Slide_JS202011SCQN" H 6050 3650 50  0001 L CNN
F 3 "https://www.ckswitches.com/media/1422/js.pdf" H 6050 3750 60  0001 L CNN
F 4 "401-2002-1-ND" H 6050 3850 60  0001 L CNN "Digi-Key_PN"
F 5 "JS202011SCQN" H 6050 3950 60  0001 L CNN "MPN"
F 6 "Switches" H 6050 4050 60  0001 L CNN "Category"
F 7 "Slide Switches" H 6050 4150 60  0001 L CNN "Family"
F 8 "https://www.ckswitches.com/media/1422/js.pdf" H 6050 4250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/c-k/JS202011SCQN/401-2002-1-ND/1640098" H 6050 4350 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH SLIDE DPDT 300MA 6V" H 6050 4450 60  0001 L CNN "Description"
F 11 "C&K" H 6050 4550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6050 4650 60  0001 L CNN "Status"
	1    5850 3450
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C4BD672
P 5600 3800
F 0 "#PWR?" H 5600 3550 50  0001 C CNN
F 1 "GND" H 5605 3627 50  0000 C CNN
F 2 "" H 5600 3800 50  0001 C CNN
F 3 "" H 5600 3800 50  0001 C CNN
	1    5600 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3800 5600 3750
Wire Wire Line
	5600 3750 5650 3750
$Comp
L power:GND #PWR?
U 1 1 5C4BD67A
P 5500 3350
F 0 "#PWR?" H 5500 3100 50  0001 C CNN
F 1 "GND" H 5505 3177 50  0000 C CNN
F 2 "" H 5500 3350 50  0001 C CNN
F 3 "" H 5500 3350 50  0001 C CNN
	1    5500 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3350 5500 3350
$Comp
L power:VCC #PWR?
U 1 1 5C4BD681
P 5500 3150
F 0 "#PWR?" H 5500 3000 50  0001 C CNN
F 1 "VCC" H 5517 3323 50  0000 C CNN
F 2 "" H 5500 3150 50  0001 C CNN
F 3 "" H 5500 3150 50  0001 C CNN
	1    5500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 3150 5650 3150
Text GLabel 6200 3650 2    50   Input ~ 0
powerswitch
Wire Wire Line
	6050 3650 6200 3650
$Comp
L dk_Slide-Switches:JS202011SCQN S?
U 1 1 5C4BD69A
P 5850 4550
F 0 "S?" H 5850 5033 50  0000 C CNN
F 1 "MTS-203" H 5850 4942 50  0000 C CNN
F 2 "digikey-footprints:Switch_Slide_JS202011SCQN" H 6050 4750 50  0001 L CNN
F 3 "https://www.ckswitches.com/media/1422/js.pdf" H 6050 4850 60  0001 L CNN
F 4 "401-2002-1-ND" H 6050 4950 60  0001 L CNN "Digi-Key_PN"
F 5 "JS202011SCQN" H 6050 5050 60  0001 L CNN "MPN"
F 6 "Switches" H 6050 5150 60  0001 L CNN "Category"
F 7 "Slide Switches" H 6050 5250 60  0001 L CNN "Family"
F 8 "https://www.ckswitches.com/media/1422/js.pdf" H 6050 5350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/c-k/JS202011SCQN/401-2002-1-ND/1640098" H 6050 5450 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH SLIDE DPDT 300MA 6V" H 6050 5550 60  0001 L CNN "Description"
F 11 "C&K" H 6050 5650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6050 5750 60  0001 L CNN "Status"
	1    5850 4550
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C4BD6A0
P 5600 4900
F 0 "#PWR?" H 5600 4650 50  0001 C CNN
F 1 "GND" H 5605 4727 50  0000 C CNN
F 2 "" H 5600 4900 50  0001 C CNN
F 3 "" H 5600 4900 50  0001 C CNN
	1    5600 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4900 5600 4850
Wire Wire Line
	5600 4850 5650 4850
$Comp
L power:GND #PWR?
U 1 1 5C4BD6A8
P 5500 4450
F 0 "#PWR?" H 5500 4200 50  0001 C CNN
F 1 "GND" H 5505 4277 50  0000 C CNN
F 2 "" H 5500 4450 50  0001 C CNN
F 3 "" H 5500 4450 50  0001 C CNN
	1    5500 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4450 5500 4450
$Comp
L power:VCC #PWR?
U 1 1 5C4BD6AF
P 5500 4250
F 0 "#PWR?" H 5500 4100 50  0001 C CNN
F 1 "VCC" H 5517 4423 50  0000 C CNN
F 2 "" H 5500 4250 50  0001 C CNN
F 3 "" H 5500 4250 50  0001 C CNN
	1    5500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4250 5650 4250
Text GLabel 6200 4750 2    50   Input ~ 0
powerswitch
Wire Wire Line
	6050 4750 6200 4750
Wire Wire Line
	7550 2950 7550 3000
Wire Wire Line
	7550 2950 7750 2950
Wire Wire Line
	7750 2450 7050 2450
Wire Wire Line
	7050 4350 7050 2450
Wire Wire Line
	7750 2350 6950 2350
Wire Wire Line
	6950 2350 6950 3250
Wire Wire Line
	6400 2250 6400 2150
Wire Wire Line
	6400 2250 7750 2250
Wire Wire Line
	6950 2150 6950 1050
Wire Wire Line
	6950 2150 7750 2150
Wire Wire Line
	7150 2550 7150 5700
Wire Wire Line
	8200 4600 8200 5700
Wire Wire Line
	9150 4500 9150 5700
Wire Wire Line
	10200 4400 10200 5700
Wire Wire Line
	6000 1050 6950 1050
Wire Wire Line
	6000 2150 6400 2150
Wire Wire Line
	6050 3250 6950 3250
Wire Wire Line
	6050 4350 7050 4350
$EndSCHEMATC
