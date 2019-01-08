EESchema Schematic File Version 4
LIBS:magic-switchboard-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Magic Switchboard"
Date "2018-12-31"
Rev "r1"
Comp "magierdinge.de"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Battery_Cell BT1
U 1 1 5C2A4986
P 850 1300
F 0 "BT1" H 968 1396 50  0000 L CNN
F 1 "3V" H 968 1305 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_3009_1x2450" V 850 1360 50  0001 C CNN
F 3 "~" V 850 1360 50  0001 C CNN
	1    850  1300
	1    0    0    -1  
$EndComp
$Comp
L switchboard:XY-016 U1
U 1 1 5C2A4AF6
P 2300 1250
F 0 "U1" H 2300 1665 50  0000 C CNN
F 1 "XY-016" H 2300 1574 50  0000 C CNN
F 2 "switchboard:XY-016" H 2300 1350 50  0001 C CNN
F 3 "" H 2300 1350 50  0001 C CNN
	1    2300 1250
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5C2A4DAB
P 3500 3200
F 0 "A1" H 3500 2114 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 3500 2023 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 3650 2250 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 3500 2200 50  0001 C CNN
	1    3500 3200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC547 Q1
U 1 1 5C2A55B4
P 2400 5500
F 0 "Q1" H 2591 5546 50  0000 L CNN
F 1 "BC547" H 2591 5455 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 2600 5425 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 2400 5500 50  0001 L CNN
	1    2400 5500
	0    -1   1    0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q2
U 1 1 5C2A5640
P 3000 5900
F 0 "Q2" H 3191 5946 50  0000 L CNN
F 1 "BC547" H 3191 5855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3200 5825 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 3000 5900 50  0001 L CNN
	1    3000 5900
	0    -1   1    0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q3
U 1 1 5C2A56A0
P 3650 6250
F 0 "Q3" H 3841 6296 50  0000 L CNN
F 1 "BC547" H 3841 6205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3850 6175 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 3650 6250 50  0001 L CNN
	1    3650 6250
	0    -1   1    0   
$EndComp
$Comp
L Transistor_BJT:BC547 Q4
U 1 1 5C2A56EC
P 4250 6600
F 0 "Q4" H 4441 6646 50  0000 L CNN
F 1 "BC547" H 4441 6555 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4450 6525 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/BC/BC547.pdf" H 4250 6600 50  0001 L CNN
	1    4250 6600
	0    -1   1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 5C2A5760
P 2400 5100
F 0 "R5" V 2193 5100 50  0000 C CNN
F 1 "10k" V 2284 5100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 2330 5100 50  0001 C CNN
F 3 "~" H 2400 5100 50  0001 C CNN
	1    2400 5100
	1    0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5C2A581B
P 3000 5500
F 0 "R6" V 2793 5500 50  0000 C CNN
F 1 "10k" V 2884 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 2930 5500 50  0001 C CNN
F 3 "~" H 3000 5500 50  0001 C CNN
	1    3000 5500
	1    0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 5C2A586B
P 4250 6200
F 0 "R8" V 4043 6200 50  0000 C CNN
F 1 "10k" V 4134 6200 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 4180 6200 50  0001 C CNN
F 3 "~" H 4250 6200 50  0001 C CNN
	1    4250 6200
	1    0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5C2A58B9
P 3650 5850
F 0 "R7" V 3443 5850 50  0000 C CNN
F 1 "10k" V 3534 5850 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 3580 5850 50  0001 C CNN
F 3 "~" H 3650 5850 50  0001 C CNN
	1    3650 5850
	1    0    0    1   
$EndComp
$Comp
L power:VCC #PWR011
U 1 1 5C2A6172
P 2800 1100
F 0 "#PWR011" H 2800 950 50  0001 C CNN
F 1 "VCC" H 2817 1273 50  0000 C CNN
F 2 "" H 2800 1100 50  0001 C CNN
F 3 "" H 2800 1100 50  0001 C CNN
	1    2800 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5C2A620C
P 2800 1400
F 0 "#PWR012" H 2800 1150 50  0001 C CNN
F 1 "GND" H 2805 1227 50  0000 C CNN
F 2 "" H 2800 1400 50  0001 C CNN
F 3 "" H 2800 1400 50  0001 C CNN
	1    2800 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1100 2700 1100
Wire Wire Line
	2800 1400 2700 1400
Wire Wire Line
	1900 1400 1600 1400
Wire Wire Line
	1600 1100 1900 1100
$Comp
L power:GND #PWR013
U 1 1 5C2A7170
P 2650 5600
F 0 "#PWR013" H 2650 5350 50  0001 C CNN
F 1 "GND" H 2655 5427 50  0000 C CNN
F 2 "" H 2650 5600 50  0001 C CNN
F 3 "" H 2650 5600 50  0001 C CNN
	1    2650 5600
	0    -1   1    0   
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 5C2A71D2
P 1800 5600
F 0 "#PWR09" H 1800 5450 50  0001 C CNN
F 1 "VCC" H 1817 5773 50  0000 C CNN
F 2 "" H 1800 5600 50  0001 C CNN
F 3 "" H 1800 5600 50  0001 C CNN
	1    1800 5600
	0    -1   1    0   
$EndComp
Wire Wire Line
	1850 5600 1800 5600
Wire Wire Line
	2600 5600 2650 5600
Wire Wire Line
	2200 5600 2150 5600
Wire Wire Line
	2400 5250 2400 5300
$Comp
L power:VCC #PWR010
U 1 1 5C2A9469
P 2400 6000
F 0 "#PWR010" H 2400 5850 50  0001 C CNN
F 1 "VCC" H 2417 6173 50  0000 C CNN
F 2 "" H 2400 6000 50  0001 C CNN
F 3 "" H 2400 6000 50  0001 C CNN
	1    2400 6000
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5C2A949A
P 3250 6000
F 0 "#PWR015" H 3250 5750 50  0001 C CNN
F 1 "GND" H 3255 5827 50  0000 C CNN
F 2 "" H 3250 6000 50  0001 C CNN
F 3 "" H 3250 6000 50  0001 C CNN
	1    3250 6000
	0    -1   1    0   
$EndComp
$Comp
L power:VCC #PWR014
U 1 1 5C2AA0CF
P 3050 6350
F 0 "#PWR014" H 3050 6200 50  0001 C CNN
F 1 "VCC" H 3067 6523 50  0000 C CNN
F 2 "" H 3050 6350 50  0001 C CNN
F 3 "" H 3050 6350 50  0001 C CNN
	1    3050 6350
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5C2AA100
P 3900 6350
F 0 "#PWR019" H 3900 6100 50  0001 C CNN
F 1 "GND" H 3905 6177 50  0000 C CNN
F 2 "" H 3900 6350 50  0001 C CNN
F 3 "" H 3900 6350 50  0001 C CNN
	1    3900 6350
	0    -1   1    0   
$EndComp
$Comp
L power:VCC #PWR018
U 1 1 5C2AB193
P 3650 6700
F 0 "#PWR018" H 3650 6550 50  0001 C CNN
F 1 "VCC" H 3667 6873 50  0000 C CNN
F 2 "" H 3650 6700 50  0001 C CNN
F 3 "" H 3650 6700 50  0001 C CNN
	1    3650 6700
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5C2AB1C4
P 4500 6700
F 0 "#PWR020" H 4500 6450 50  0001 C CNN
F 1 "GND" H 4505 6527 50  0000 C CNN
F 2 "" H 4500 6700 50  0001 C CNN
F 3 "" H 4500 6700 50  0001 C CNN
	1    4500 6700
	0    -1   1    0   
$EndComp
Wire Wire Line
	3650 6700 3700 6700
Wire Wire Line
	4000 6700 4050 6700
Wire Wire Line
	4450 6700 4500 6700
Wire Wire Line
	4250 6350 4250 6400
Wire Wire Line
	3050 6350 3100 6350
Wire Wire Line
	3400 6350 3450 6350
Wire Wire Line
	3850 6350 3900 6350
Wire Wire Line
	3650 6050 3650 6000
Wire Wire Line
	2750 6000 2800 6000
Wire Wire Line
	3200 6000 3250 6000
Wire Wire Line
	3000 5700 3000 5650
Wire Wire Line
	2400 6000 2450 6000
$Comp
L dk_Toggle-Switches:ATE1D-2M3-10-Z S3
U 1 1 5C2B1CDD
P 1450 4000
F 0 "S3" H 1450 3675 50  0000 C CNN
F 1 "ATE1D-2M3-10-Z" H 1450 3766 50  0000 C CNN
F 2 "digikey-footprints:Switch_Toggle_ATE1D-2M3-10-Z" H 1650 4200 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/ate.pdf" H 1650 4300 60  0001 L CNN
F 4 "563-1157-ND" H 1650 4400 60  0001 L CNN "Digi-Key_PN"
F 5 "ATE1D-2M3-10-Z" H 1650 4500 60  0001 L CNN "MPN"
F 6 "Switches" H 1650 4600 60  0001 L CNN "Category"
F 7 "Toggle Switches" H 1650 4700 60  0001 L CNN "Family"
F 8 "https://www.nidec-copal-electronics.com/e/catalog/switch/ate.pdf" H 1650 4800 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/nidec-copal-electronics/ATE1D-2M3-10-Z/563-1157-ND/1792018" H 1650 4900 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TOGGLE SPDT 50MA 48V" H 1650 5000 60  0001 L CNN "Description"
F 11 "Nidec Copal Electronics" H 1650 5100 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1650 5200 60  0001 L CNN "Status"
	1    1450 4000
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 5C2B1CE3
P 950 3900
F 0 "#PWR05" H 950 3750 50  0001 C CNN
F 1 "VCC" H 967 4073 50  0000 C CNN
F 2 "" H 950 3900 50  0001 C CNN
F 3 "" H 950 3900 50  0001 C CNN
	1    950  3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5C2B1CE9
P 950 4100
F 0 "#PWR06" H 950 3850 50  0001 C CNN
F 1 "GND" H 955 3927 50  0000 C CNN
F 2 "" H 950 4100 50  0001 C CNN
F 3 "" H 950 4100 50  0001 C CNN
	1    950  4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5C2B1CEF
P 1850 4000
F 0 "R3" V 1643 4000 50  0000 C CNN
F 1 "10k" V 1734 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 1780 4000 50  0001 C CNN
F 3 "~" H 1850 4000 50  0001 C CNN
	1    1850 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 4100 950  4100
Wire Wire Line
	1250 3900 950  3900
Wire Wire Line
	1650 4000 1700 4000
$Comp
L dk_Toggle-Switches:ATE1D-2M3-10-Z S4
U 1 1 5C2B20B7
P 1450 4650
F 0 "S4" H 1450 4325 50  0000 C CNN
F 1 "ATE1D-2M3-10-Z" H 1450 4416 50  0000 C CNN
F 2 "digikey-footprints:Switch_Toggle_ATE1D-2M3-10-Z" H 1650 4850 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/ate.pdf" H 1650 4950 60  0001 L CNN
F 4 "563-1157-ND" H 1650 5050 60  0001 L CNN "Digi-Key_PN"
F 5 "ATE1D-2M3-10-Z" H 1650 5150 60  0001 L CNN "MPN"
F 6 "Switches" H 1650 5250 60  0001 L CNN "Category"
F 7 "Toggle Switches" H 1650 5350 60  0001 L CNN "Family"
F 8 "https://www.nidec-copal-electronics.com/e/catalog/switch/ate.pdf" H 1650 5450 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/nidec-copal-electronics/ATE1D-2M3-10-Z/563-1157-ND/1792018" H 1650 5550 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TOGGLE SPDT 50MA 48V" H 1650 5650 60  0001 L CNN "Description"
F 11 "Nidec Copal Electronics" H 1650 5750 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1650 5850 60  0001 L CNN "Status"
	1    1450 4650
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5C2B20BD
P 950 4550
F 0 "#PWR07" H 950 4400 50  0001 C CNN
F 1 "VCC" H 967 4723 50  0000 C CNN
F 2 "" H 950 4550 50  0001 C CNN
F 3 "" H 950 4550 50  0001 C CNN
	1    950  4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5C2B20C3
P 950 4750
F 0 "#PWR08" H 950 4500 50  0001 C CNN
F 1 "GND" H 955 4577 50  0000 C CNN
F 2 "" H 950 4750 50  0001 C CNN
F 3 "" H 950 4750 50  0001 C CNN
	1    950  4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C2B20C9
P 1850 4650
F 0 "R4" V 1643 4650 50  0000 C CNN
F 1 "10k" V 1734 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 1780 4650 50  0001 C CNN
F 3 "~" H 1850 4650 50  0001 C CNN
	1    1850 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 4750 950  4750
Wire Wire Line
	1250 4550 950  4550
Wire Wire Line
	1650 4650 1700 4650
$Comp
L dk_Toggle-Switches:ATE1D-2M3-10-Z S1
U 1 1 5C2B375C
P 1450 2700
F 0 "S1" H 1450 2375 50  0000 C CNN
F 1 "ATE1D-2M3-10-Z" H 1450 2466 50  0000 C CNN
F 2 "digikey-footprints:Switch_Toggle_ATE1D-2M3-10-Z" H 1650 2900 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/ate.pdf" H 1650 3000 60  0001 L CNN
F 4 "563-1157-ND" H 1650 3100 60  0001 L CNN "Digi-Key_PN"
F 5 "ATE1D-2M3-10-Z" H 1650 3200 60  0001 L CNN "MPN"
F 6 "Switches" H 1650 3300 60  0001 L CNN "Category"
F 7 "Toggle Switches" H 1650 3400 60  0001 L CNN "Family"
F 8 "https://www.nidec-copal-electronics.com/e/catalog/switch/ate.pdf" H 1650 3500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/nidec-copal-electronics/ATE1D-2M3-10-Z/563-1157-ND/1792018" H 1650 3600 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TOGGLE SPDT 50MA 48V" H 1650 3700 60  0001 L CNN "Description"
F 11 "Nidec Copal Electronics" H 1650 3800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1650 3900 60  0001 L CNN "Status"
	1    1450 2700
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5C2B3762
P 950 2600
F 0 "#PWR01" H 950 2450 50  0001 C CNN
F 1 "VCC" H 967 2773 50  0000 C CNN
F 2 "" H 950 2600 50  0001 C CNN
F 3 "" H 950 2600 50  0001 C CNN
	1    950  2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5C2B3768
P 950 2800
F 0 "#PWR02" H 950 2550 50  0001 C CNN
F 1 "GND" H 955 2627 50  0000 C CNN
F 2 "" H 950 2800 50  0001 C CNN
F 3 "" H 950 2800 50  0001 C CNN
	1    950  2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C2B376E
P 1850 2700
F 0 "R1" V 1643 2700 50  0000 C CNN
F 1 "10k" V 1734 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 1780 2700 50  0001 C CNN
F 3 "~" H 1850 2700 50  0001 C CNN
	1    1850 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 2800 950  2800
Wire Wire Line
	1250 2600 950  2600
Wire Wire Line
	1650 2700 1700 2700
$Comp
L dk_Toggle-Switches:ATE1D-2M3-10-Z S2
U 1 1 5C2B3780
P 1450 3350
F 0 "S2" H 1450 3025 50  0000 C CNN
F 1 "ATE1D-2M3-10-Z" H 1450 3116 50  0000 C CNN
F 2 "digikey-footprints:Switch_Toggle_ATE1D-2M3-10-Z" H 1650 3550 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/ate.pdf" H 1650 3650 60  0001 L CNN
F 4 "563-1157-ND" H 1650 3750 60  0001 L CNN "Digi-Key_PN"
F 5 "ATE1D-2M3-10-Z" H 1650 3850 60  0001 L CNN "MPN"
F 6 "Switches" H 1650 3950 60  0001 L CNN "Category"
F 7 "Toggle Switches" H 1650 4050 60  0001 L CNN "Family"
F 8 "https://www.nidec-copal-electronics.com/e/catalog/switch/ate.pdf" H 1650 4150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/nidec-copal-electronics/ATE1D-2M3-10-Z/563-1157-ND/1792018" H 1650 4250 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TOGGLE SPDT 50MA 48V" H 1650 4350 60  0001 L CNN "Description"
F 11 "Nidec Copal Electronics" H 1650 4450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1650 4550 60  0001 L CNN "Status"
	1    1450 3350
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 5C2B3786
P 950 3250
F 0 "#PWR03" H 950 3100 50  0001 C CNN
F 1 "VCC" H 967 3423 50  0000 C CNN
F 2 "" H 950 3250 50  0001 C CNN
F 3 "" H 950 3250 50  0001 C CNN
	1    950  3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5C2B378C
P 950 3450
F 0 "#PWR04" H 950 3200 50  0001 C CNN
F 1 "GND" H 955 3277 50  0000 C CNN
F 2 "" H 950 3450 50  0001 C CNN
F 3 "" H 950 3450 50  0001 C CNN
	1    950  3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C2B3792
P 1850 3350
F 0 "R2" V 1643 3350 50  0000 C CNN
F 1 "10k" V 1734 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 1780 3350 50  0001 C CNN
F 3 "~" H 1850 3350 50  0001 C CNN
	1    1850 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 3450 950  3450
Wire Wire Line
	1250 3250 950  3250
Wire Wire Line
	1650 3350 1700 3350
Wire Wire Line
	2000 2700 2200 2700
Wire Wire Line
	2200 2700 2200 2800
Wire Wire Line
	2200 2800 3000 2800
Wire Wire Line
	2000 3350 2050 3350
Wire Wire Line
	2050 3350 2050 2900
Wire Wire Line
	2050 2900 3000 2900
Wire Wire Line
	2000 4000 2150 4000
Wire Wire Line
	2150 4000 2150 3000
Wire Wire Line
	2150 3000 3000 3000
Wire Wire Line
	2000 4650 2250 4650
Wire Wire Line
	2250 4650 2250 3100
Wire Wire Line
	2250 3100 3000 3100
Wire Wire Line
	2400 4950 2400 3200
Wire Wire Line
	2400 3200 3000 3200
Wire Wire Line
	2500 3300 2500 5250
Wire Wire Line
	2500 5250 3000 5250
Wire Wire Line
	3000 5250 3000 5350
Wire Wire Line
	2500 3300 3000 3300
Wire Wire Line
	3650 5700 3650 5150
Wire Wire Line
	2600 5150 2600 3400
Wire Wire Line
	2600 3400 3000 3400
Wire Wire Line
	2600 5150 3650 5150
Wire Wire Line
	4250 6050 4250 5050
Wire Wire Line
	4250 5050 2700 5050
Wire Wire Line
	2700 5050 2700 3500
Wire Wire Line
	2700 3500 3000 3500
$Comp
L power:VCC #PWR016
U 1 1 5C2C216D
P 3400 2050
F 0 "#PWR016" H 3400 1900 50  0001 C CNN
F 1 "VCC" H 3417 2223 50  0000 C CNN
F 2 "" H 3400 2050 50  0001 C CNN
F 3 "" H 3400 2050 50  0001 C CNN
	1    3400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 2050 3400 2200
$Comp
L power:GND #PWR017
U 1 1 5C2C35C4
P 3600 4500
F 0 "#PWR017" H 3600 4250 50  0001 C CNN
F 1 "GND" H 3605 4327 50  0000 C CNN
F 2 "" H 3600 4500 50  0001 C CNN
F 3 "" H 3600 4500 50  0001 C CNN
	1    3600 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 4500 3600 4200
$Comp
L Device:LED D4
U 1 1 5C2A5381
P 3850 6700
F 0 "D4" V 3888 6583 50  0000 R CNN
F 1 "Yellow" V 3797 6583 50  0000 R CNN
F 2 "switchboard:E10 Edison Socket Print Pins" H 3850 6700 50  0001 C CNN
F 3 "~" H 3850 6700 50  0001 C CNN
	1    3850 6700
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 5C2A52B4
P 3250 6350
F 0 "D3" V 3288 6233 50  0000 R CNN
F 1 "Blue" V 3197 6233 50  0000 R CNN
F 2 "switchboard:E10 Edison Socket Print Pins" H 3250 6350 50  0001 C CNN
F 3 "~" H 3250 6350 50  0001 C CNN
	1    3250 6350
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5C2A527E
P 2600 6000
F 0 "D2" V 2638 5883 50  0000 R CNN
F 1 "Green" V 2547 5883 50  0000 R CNN
F 2 "switchboard:E10 Edison Socket Print Pins" H 2600 6000 50  0001 C CNN
F 3 "~" H 2600 6000 50  0001 C CNN
	1    2600 6000
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5C2A516D
P 2000 5600
F 0 "D1" V 2038 5483 50  0000 R CNN
F 1 "Red" V 1947 5483 50  0000 R CNN
F 2 "switchboard:E10 Edison Socket Print Pins" H 2000 5600 50  0001 C CNN
F 3 "~" H 2000 5600 50  0001 C CNN
	1    2000 5600
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5C2CDA79
P 1600 1250
F 0 "C1" H 1718 1296 50  0000 L CNN
F 1 "100uF" H 1718 1205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 1638 1100 50  0001 C CNN
F 3 "~" H 1600 1250 50  0001 C CNN
	1    1600 1250
	1    0    0    -1  
$EndComp
Connection ~ 1600 1400
$Comp
L Switch:SW_SPST SW1
U 1 1 5C2D06C8
P 1300 1100
F 0 "SW1" H 1300 1335 50  0000 C CNN
F 1 "SW_SPST" H 1300 1244 50  0000 C CNN
F 2 "digikey-footprints:Switch_Toggle_ATE1D-2M3-10-Z" H 1300 1100 50  0001 C CNN
F 3 "" H 1300 1100 50  0001 C CNN
	1    1300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1100 1500 1100
Connection ~ 1600 1100
Wire Wire Line
	1100 1100 850  1100
Wire Wire Line
	850  1400 1600 1400
$Comp
L Device:CP C2
U 1 1 5C2D5FC7
P 2950 1250
F 0 "C2" H 3068 1296 50  0000 L CNN
F 1 "100uF" H 3068 1205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 2988 1100 50  0001 C CNN
F 3 "~" H 2950 1250 50  0001 C CNN
	1    2950 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1100 2800 1100
Connection ~ 2800 1100
Wire Wire Line
	2950 1400 2800 1400
Connection ~ 2800 1400
$Comp
L power:GND #PWR0101
U 1 1 5C2D1688
P 1600 1500
F 0 "#PWR0101" H 1600 1250 50  0001 C CNN
F 1 "GND" H 1605 1327 50  0000 C CNN
F 2 "" H 1600 1500 50  0001 C CNN
F 3 "" H 1600 1500 50  0001 C CNN
	1    1600 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1500 1600 1400
$EndSCHEMATC