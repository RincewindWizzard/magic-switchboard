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
P 8600 6500
F 0 "#PWR013" H 8600 6250 50  0001 C CNN
F 1 "GND" H 8605 6327 50  0000 C CNN
F 2 "" H 8600 6500 50  0001 C CNN
F 3 "" H 8600 6500 50  0001 C CNN
	1    8600 6500
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR09
U 1 1 5C2A71D2
P 8600 5650
F 0 "#PWR09" H 8600 5500 50  0001 C CNN
F 1 "VCC" H 8617 5823 50  0000 C CNN
F 2 "" H 8600 5650 50  0001 C CNN
F 3 "" H 8600 5650 50  0001 C CNN
	1    8600 5650
	-1   0    0    -1  
$EndComp
$Comp
L dk_Toggle-Switches:ATE1D-2M3-10-Z S3
U 1 1 5C2B1CDD
P 6200 3350
F 0 "S3" H 6200 3025 50  0000 C CNN
F 1 "ATE1D-2M3-10-Z" H 6200 3116 50  0000 C CNN
F 2 "digikey-footprints:Switch_Toggle_ATE1D-2M3-10-Z" H 6400 3550 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/ate.pdf" H 6400 3650 60  0001 L CNN
F 4 "563-1157-ND" H 6400 3750 60  0001 L CNN "Digi-Key_PN"
F 5 "ATE1D-2M3-10-Z" H 6400 3850 60  0001 L CNN "MPN"
F 6 "Switches" H 6400 3950 60  0001 L CNN "Category"
F 7 "Toggle Switches" H 6400 4050 60  0001 L CNN "Family"
F 8 "https://www.nidec-copal-electronics.com/e/catalog/switch/ate.pdf" H 6400 4150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/nidec-copal-electronics/ATE1D-2M3-10-Z/563-1157-ND/1792018" H 6400 4250 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TOGGLE SPDT 50MA 48V" H 6400 4350 60  0001 L CNN "Description"
F 11 "Nidec Copal Electronics" H 6400 4450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6400 4550 60  0001 L CNN "Status"
	1    6200 3350
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 5C2B1CE3
P 5700 3250
F 0 "#PWR05" H 5700 3100 50  0001 C CNN
F 1 "VCC" H 5717 3423 50  0000 C CNN
F 2 "" H 5700 3250 50  0001 C CNN
F 3 "" H 5700 3250 50  0001 C CNN
	1    5700 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5C2B1CE9
P 5700 3450
F 0 "#PWR06" H 5700 3200 50  0001 C CNN
F 1 "GND" H 5705 3277 50  0000 C CNN
F 2 "" H 5700 3450 50  0001 C CNN
F 3 "" H 5700 3450 50  0001 C CNN
	1    5700 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5C2B1CEF
P 6600 3350
F 0 "R3" V 6393 3350 50  0000 C CNN
F 1 "10k" V 6484 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 6530 3350 50  0001 C CNN
F 3 "~" H 6600 3350 50  0001 C CNN
	1    6600 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 3450 5700 3450
Wire Wire Line
	6000 3250 5700 3250
Wire Wire Line
	6400 3350 6450 3350
$Comp
L dk_Toggle-Switches:ATE1D-2M3-10-Z S4
U 1 1 5C2B20B7
P 6200 4000
F 0 "S4" H 6200 3675 50  0000 C CNN
F 1 "ATE1D-2M3-10-Z" H 6200 3766 50  0000 C CNN
F 2 "digikey-footprints:Switch_Toggle_ATE1D-2M3-10-Z" H 6400 4200 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/ate.pdf" H 6400 4300 60  0001 L CNN
F 4 "563-1157-ND" H 6400 4400 60  0001 L CNN "Digi-Key_PN"
F 5 "ATE1D-2M3-10-Z" H 6400 4500 60  0001 L CNN "MPN"
F 6 "Switches" H 6400 4600 60  0001 L CNN "Category"
F 7 "Toggle Switches" H 6400 4700 60  0001 L CNN "Family"
F 8 "https://www.nidec-copal-electronics.com/e/catalog/switch/ate.pdf" H 6400 4800 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/nidec-copal-electronics/ATE1D-2M3-10-Z/563-1157-ND/1792018" H 6400 4900 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TOGGLE SPDT 50MA 48V" H 6400 5000 60  0001 L CNN "Description"
F 11 "Nidec Copal Electronics" H 6400 5100 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6400 5200 60  0001 L CNN "Status"
	1    6200 4000
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5C2B20BD
P 5700 3900
F 0 "#PWR07" H 5700 3750 50  0001 C CNN
F 1 "VCC" H 5717 4073 50  0000 C CNN
F 2 "" H 5700 3900 50  0001 C CNN
F 3 "" H 5700 3900 50  0001 C CNN
	1    5700 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5C2B20C3
P 5700 4100
F 0 "#PWR08" H 5700 3850 50  0001 C CNN
F 1 "GND" H 5705 3927 50  0000 C CNN
F 2 "" H 5700 4100 50  0001 C CNN
F 3 "" H 5700 4100 50  0001 C CNN
	1    5700 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C2B20C9
P 6600 4000
F 0 "R4" V 6393 4000 50  0000 C CNN
F 1 "10k" V 6484 4000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 6530 4000 50  0001 C CNN
F 3 "~" H 6600 4000 50  0001 C CNN
	1    6600 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 4100 5700 4100
Wire Wire Line
	6000 3900 5700 3900
Wire Wire Line
	6400 4000 6450 4000
$Comp
L dk_Toggle-Switches:ATE1D-2M3-10-Z S1
U 1 1 5C2B375C
P 6200 2050
F 0 "S1" H 6200 1725 50  0000 C CNN
F 1 "ATE1D-2M3-10-Z" H 6200 1816 50  0000 C CNN
F 2 "digikey-footprints:Switch_Toggle_ATE1D-2M3-10-Z" H 6400 2250 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/ate.pdf" H 6400 2350 60  0001 L CNN
F 4 "563-1157-ND" H 6400 2450 60  0001 L CNN "Digi-Key_PN"
F 5 "ATE1D-2M3-10-Z" H 6400 2550 60  0001 L CNN "MPN"
F 6 "Switches" H 6400 2650 60  0001 L CNN "Category"
F 7 "Toggle Switches" H 6400 2750 60  0001 L CNN "Family"
F 8 "https://www.nidec-copal-electronics.com/e/catalog/switch/ate.pdf" H 6400 2850 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/nidec-copal-electronics/ATE1D-2M3-10-Z/563-1157-ND/1792018" H 6400 2950 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TOGGLE SPDT 50MA 48V" H 6400 3050 60  0001 L CNN "Description"
F 11 "Nidec Copal Electronics" H 6400 3150 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6400 3250 60  0001 L CNN "Status"
	1    6200 2050
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5C2B3762
P 5700 1950
F 0 "#PWR01" H 5700 1800 50  0001 C CNN
F 1 "VCC" H 5717 2123 50  0000 C CNN
F 2 "" H 5700 1950 50  0001 C CNN
F 3 "" H 5700 1950 50  0001 C CNN
	1    5700 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5C2B3768
P 5700 2150
F 0 "#PWR02" H 5700 1900 50  0001 C CNN
F 1 "GND" H 5705 1977 50  0000 C CNN
F 2 "" H 5700 2150 50  0001 C CNN
F 3 "" H 5700 2150 50  0001 C CNN
	1    5700 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C2B376E
P 6600 2050
F 0 "R1" V 6393 2050 50  0000 C CNN
F 1 "10k" V 6484 2050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 6530 2050 50  0001 C CNN
F 3 "~" H 6600 2050 50  0001 C CNN
	1    6600 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 2150 5700 2150
Wire Wire Line
	6000 1950 5700 1950
Wire Wire Line
	6400 2050 6450 2050
$Comp
L dk_Toggle-Switches:ATE1D-2M3-10-Z S2
U 1 1 5C2B3780
P 6200 2700
F 0 "S2" H 6200 2375 50  0000 C CNN
F 1 "ATE1D-2M3-10-Z" H 6200 2466 50  0000 C CNN
F 2 "digikey-footprints:Switch_Toggle_ATE1D-2M3-10-Z" H 6400 2900 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/ate.pdf" H 6400 3000 60  0001 L CNN
F 4 "563-1157-ND" H 6400 3100 60  0001 L CNN "Digi-Key_PN"
F 5 "ATE1D-2M3-10-Z" H 6400 3200 60  0001 L CNN "MPN"
F 6 "Switches" H 6400 3300 60  0001 L CNN "Category"
F 7 "Toggle Switches" H 6400 3400 60  0001 L CNN "Family"
F 8 "https://www.nidec-copal-electronics.com/e/catalog/switch/ate.pdf" H 6400 3500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/nidec-copal-electronics/ATE1D-2M3-10-Z/563-1157-ND/1792018" H 6400 3600 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH TOGGLE SPDT 50MA 48V" H 6400 3700 60  0001 L CNN "Description"
F 11 "Nidec Copal Electronics" H 6400 3800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6400 3900 60  0001 L CNN "Status"
	1    6200 2700
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR03
U 1 1 5C2B3786
P 5700 2600
F 0 "#PWR03" H 5700 2450 50  0001 C CNN
F 1 "VCC" H 5717 2773 50  0000 C CNN
F 2 "" H 5700 2600 50  0001 C CNN
F 3 "" H 5700 2600 50  0001 C CNN
	1    5700 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5C2B378C
P 5700 2800
F 0 "#PWR04" H 5700 2550 50  0001 C CNN
F 1 "GND" H 5705 2627 50  0000 C CNN
F 2 "" H 5700 2800 50  0001 C CNN
F 3 "" H 5700 2800 50  0001 C CNN
	1    5700 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C2B3792
P 6600 2700
F 0 "R2" V 6393 2700 50  0000 C CNN
F 1 "10k" V 6484 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P15.24mm_Horizontal" V 6530 2700 50  0001 C CNN
F 3 "~" H 6600 2700 50  0001 C CNN
	1    6600 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 2800 5700 2800
Wire Wire Line
	6000 2600 5700 2600
Wire Wire Line
	6400 2700 6450 2700
Wire Wire Line
	6750 2050 6950 2050
Wire Wire Line
	6950 2050 6950 2150
Wire Wire Line
	6950 2150 7750 2150
Wire Wire Line
	6750 2700 6800 2700
Wire Wire Line
	6800 2700 6800 2250
Wire Wire Line
	6800 2250 7750 2250
Wire Wire Line
	6750 3350 6900 3350
Wire Wire Line
	6900 3350 6900 2350
Wire Wire Line
	6900 2350 7750 2350
Wire Wire Line
	6750 4000 7000 4000
Wire Wire Line
	7000 4000 7000 2450
Wire Wire Line
	7000 2450 7750 2450
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
P 8600 5850
F 0 "D1" V 8638 5733 50  0000 R CNN
F 1 "Red" V 8547 5733 50  0000 R CNN
F 2 "switchboard:E10 Edison Socket Print Pins" H 8600 5850 50  0001 C CNN
F 3 "~" H 8600 5850 50  0001 C CNN
	1    8600 5850
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
P 2450 3750
F 0 "S?" H 2450 4233 50  0000 C CNN
F 1 "MTS-203" H 2450 4142 50  0000 C CNN
F 2 "digikey-footprints:Switch_Slide_JS202011SCQN" H 2650 3950 50  0001 L CNN
F 3 "https://www.ckswitches.com/media/1422/js.pdf" H 2650 4050 60  0001 L CNN
F 4 "401-2002-1-ND" H 2650 4150 60  0001 L CNN "Digi-Key_PN"
F 5 "JS202011SCQN" H 2650 4250 60  0001 L CNN "MPN"
F 6 "Switches" H 2650 4350 60  0001 L CNN "Category"
F 7 "Slide Switches" H 2650 4450 60  0001 L CNN "Family"
F 8 "https://www.ckswitches.com/media/1422/js.pdf" H 2650 4550 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/c-k/JS202011SCQN/401-2002-1-ND/1640098" H 2650 4650 60  0001 L CNN "DK_Detail_Page"
F 10 "SWITCH SLIDE DPDT 300MA 6V" H 2650 4750 60  0001 L CNN "Description"
F 11 "C&K" H 2650 4850 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2650 4950 60  0001 L CNN "Status"
	1    2450 3750
	-1   0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q?
U 1 1 5C47BC90
P 8600 6250
F 0 "Q?" H 8708 6303 60  0000 L CNN
F 1 "2N7000" H 8708 6197 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 8800 6450 60  0001 L CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 8800 6550 60  0001 L CNN
F 4 "2N7000FS-ND" H 8800 6650 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 8800 6750 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 8800 6850 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 8800 6950 60  0001 L CNN "Family"
F 8 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 8800 7050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 8800 7150 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 8800 7250 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 8800 7350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8800 7450 60  0001 L CNN "Status"
	1    8600 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5650 8600 5700
Wire Wire Line
	8600 6000 8600 6050
Wire Wire Line
	8600 6450 8600 6500
$Comp
L power:GND #PWR?
U 1 1 5C48113D
P 7550 6500
F 0 "#PWR?" H 7550 6250 50  0001 C CNN
F 1 "GND" H 7555 6327 50  0000 C CNN
F 2 "" H 7550 6500 50  0001 C CNN
F 3 "" H 7550 6500 50  0001 C CNN
	1    7550 6500
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5C481143
P 7550 5650
F 0 "#PWR?" H 7550 5500 50  0001 C CNN
F 1 "VCC" H 7567 5823 50  0000 C CNN
F 2 "" H 7550 5650 50  0001 C CNN
F 3 "" H 7550 5650 50  0001 C CNN
	1    7550 5650
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5C481149
P 7550 5850
F 0 "D?" V 7588 5733 50  0000 R CNN
F 1 "Red" V 7497 5733 50  0000 R CNN
F 2 "switchboard:E10 Edison Socket Print Pins" H 7550 5850 50  0001 C CNN
F 3 "~" H 7550 5850 50  0001 C CNN
	1    7550 5850
	0    1    -1   0   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q?
U 1 1 5C481158
P 7550 6250
F 0 "Q?" H 7658 6303 60  0000 L CNN
F 1 "2N7000" H 7658 6197 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 7750 6450 60  0001 L CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 7750 6550 60  0001 L CNN
F 4 "2N7000FS-ND" H 7750 6650 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 7750 6750 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7750 6850 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 7750 6950 60  0001 L CNN "Family"
F 8 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 7750 7050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 7750 7150 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 7750 7250 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 7750 7350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7750 7450 60  0001 L CNN "Status"
	1    7550 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 5650 7550 5700
Wire Wire Line
	7550 6000 7550 6050
Wire Wire Line
	7550 6450 7550 6500
$Comp
L power:GND #PWR?
U 1 1 5C482C0A
P 10600 6500
F 0 "#PWR?" H 10600 6250 50  0001 C CNN
F 1 "GND" H 10605 6327 50  0000 C CNN
F 2 "" H 10600 6500 50  0001 C CNN
F 3 "" H 10600 6500 50  0001 C CNN
	1    10600 6500
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5C482C10
P 10600 5650
F 0 "#PWR?" H 10600 5500 50  0001 C CNN
F 1 "VCC" H 10617 5823 50  0000 C CNN
F 2 "" H 10600 5650 50  0001 C CNN
F 3 "" H 10600 5650 50  0001 C CNN
	1    10600 5650
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5C482C16
P 10600 5850
F 0 "D?" V 10638 5733 50  0000 R CNN
F 1 "Red" V 10547 5733 50  0000 R CNN
F 2 "switchboard:E10 Edison Socket Print Pins" H 10600 5850 50  0001 C CNN
F 3 "~" H 10600 5850 50  0001 C CNN
	1    10600 5850
	0    1    -1   0   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q?
U 1 1 5C482C25
P 10600 6250
F 0 "Q?" H 10708 6303 60  0000 L CNN
F 1 "2N7000" H 10708 6197 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 10800 6450 60  0001 L CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 10800 6550 60  0001 L CNN
F 4 "2N7000FS-ND" H 10800 6650 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 10800 6750 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 10800 6850 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 10800 6950 60  0001 L CNN "Family"
F 8 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 10800 7050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 10800 7150 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 10800 7250 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 10800 7350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10800 7450 60  0001 L CNN "Status"
	1    10600 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 5650 10600 5700
Wire Wire Line
	10600 6000 10600 6050
Wire Wire Line
	10600 6450 10600 6500
$Comp
L power:GND #PWR?
U 1 1 5C482C2E
P 9550 6500
F 0 "#PWR?" H 9550 6250 50  0001 C CNN
F 1 "GND" H 9555 6327 50  0000 C CNN
F 2 "" H 9550 6500 50  0001 C CNN
F 3 "" H 9550 6500 50  0001 C CNN
	1    9550 6500
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5C482C34
P 9550 5650
F 0 "#PWR?" H 9550 5500 50  0001 C CNN
F 1 "VCC" H 9567 5823 50  0000 C CNN
F 2 "" H 9550 5650 50  0001 C CNN
F 3 "" H 9550 5650 50  0001 C CNN
	1    9550 5650
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5C482C3A
P 9550 5850
F 0 "D?" V 9588 5733 50  0000 R CNN
F 1 "Red" V 9497 5733 50  0000 R CNN
F 2 "switchboard:E10 Edison Socket Print Pins" H 9550 5850 50  0001 C CNN
F 3 "~" H 9550 5850 50  0001 C CNN
	1    9550 5850
	0    1    -1   0   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q?
U 1 1 5C482C49
P 9550 6250
F 0 "Q?" H 9658 6303 60  0000 L CNN
F 1 "2N7000" H 9658 6197 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 9750 6450 60  0001 L CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 9750 6550 60  0001 L CNN
F 4 "2N7000FS-ND" H 9750 6650 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 9750 6750 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9750 6850 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 9750 6950 60  0001 L CNN "Family"
F 8 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 9750 7050 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 9750 7150 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 9750 7250 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 9750 7350 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9750 7450 60  0001 L CNN "Status"
	1    9550 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 5650 9550 5700
Wire Wire Line
	9550 6000 9550 6050
Wire Wire Line
	9550 6450 9550 6500
Wire Wire Line
	7150 6350 7250 6350
Wire Wire Line
	7150 2550 7150 6350
Wire Wire Line
	8200 4600 8200 6350
Wire Wire Line
	8200 6350 8300 6350
Wire Wire Line
	7250 4600 8200 4600
Wire Wire Line
	9150 4500 9150 6350
Wire Wire Line
	9150 6350 9250 6350
Wire Wire Line
	7350 4500 9150 4500
Wire Wire Line
	10200 4400 10200 6350
Wire Wire Line
	10200 6350 10300 6350
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
L dk_Transistors-FETs-MOSFETs-Single:2N7000 Q?
U 1 1 5C4932D3
P 2300 2450
F 0 "Q?" H 2408 2503 60  0000 L CNN
F 1 "2N7000" H 2408 2397 60  0000 L CNN
F 2 "digikey-footprints:TO-92-3" H 2500 2650 60  0001 L CNN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 2500 2750 60  0001 L CNN
F 4 "2N7000FS-ND" H 2500 2850 60  0001 L CNN "Digi-Key_PN"
F 5 "2N7000" H 2500 2950 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 2500 3050 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 2500 3150 60  0001 L CNN "Family"
F 8 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 2500 3250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/2N7000/2N7000FS-ND/244278" H 2500 3350 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 200MA TO-92" H 2500 3450 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 2500 3550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2500 3650 60  0001 L CNN "Status"
	1    2300 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C4934B4
P 2300 2750
F 0 "#PWR?" H 2300 2500 50  0001 C CNN
F 1 "GND" H 2305 2577 50  0000 C CNN
F 2 "" H 2300 2750 50  0001 C CNN
F 3 "" H 2300 2750 50  0001 C CNN
	1    2300 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2750 2300 2650
Wire Wire Line
	2300 2050 2300 2250
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
P 2200 4100
F 0 "#PWR?" H 2200 3850 50  0001 C CNN
F 1 "GND" H 2205 3927 50  0000 C CNN
F 2 "" H 2200 4100 50  0001 C CNN
F 3 "" H 2200 4100 50  0001 C CNN
	1    2200 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4100 2200 4050
Wire Wire Line
	2200 4050 2250 4050
$Comp
L power:GND #PWR?
U 1 1 5C4A367D
P 2100 3650
F 0 "#PWR?" H 2100 3400 50  0001 C CNN
F 1 "GND" H 2105 3477 50  0000 C CNN
F 2 "" H 2100 3650 50  0001 C CNN
F 3 "" H 2100 3650 50  0001 C CNN
	1    2100 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 3650 2100 3650
$Comp
L power:VCC #PWR?
U 1 1 5C4A4DAB
P 2100 3450
F 0 "#PWR?" H 2100 3300 50  0001 C CNN
F 1 "VCC" H 2117 3623 50  0000 C CNN
F 2 "" H 2100 3450 50  0001 C CNN
F 3 "" H 2100 3450 50  0001 C CNN
	1    2100 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 3450 2250 3450
$EndSCHEMATC
