EESchema Schematic File Version 2
LIBS:Nixie Clock-rescue
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
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:hc11
LIBS:ir
LIBS:Lattice
LIBS:maxim
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic32mcu
LIBS:motor_drivers
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:Oscillators
LIBS:Power_Management
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:relays
LIBS:rfcom
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:ttl_ieee
LIBS:video
LIBS:Worldsemi
LIBS:Xicor
LIBS:Zilog
LIBS:Nixie Clock-cache
EELAYER 25 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 8 15
Title "High Side BCO Decoder"
Date "2017-03-06"
Rev "2"
Comp "Drew Maatman"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 74HC238-RESCUE-Nixie_Clock U801
U 1 1 58B3257F
P 5830 3440
F 0 "U801" H 6130 2640 50  0000 C CNN
F 1 "74HC238" H 5830 3440 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 5730 3690 50  0001 C CNN
F 3 "" H 5730 3690 50  0000 C CNN
	1    5830 3440
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR093
U 1 1 58B327B2
P 5830 4390
F 0 "#PWR093" H 5830 4140 50  0001 C CNN
F 1 "GND" H 5830 4240 50  0000 C CNN
F 2 "" H 5830 4390 50  0000 C CNN
F 3 "" H 5830 4390 50  0000 C CNN
	1    5830 4390
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR094
U 1 1 58B329E0
P 5830 2540
F 0 "#PWR094" H 5830 2390 50  0001 C CNN
F 1 "VCC" H 5830 2690 50  0000 C CNN
F 2 "" H 5830 2540 50  0000 C CNN
F 3 "" H 5830 2540 50  0000 C CNN
	1    5830 2540
	1    0    0    -1  
$EndComp
$Comp
L R R808
U 1 1 58B33053
P 4360 4040
F 0 "R808" V 4360 3400 50  0000 C CNN
F 1 "10k" V 4360 4040 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 4110 4140 50  0001 L CNN
F 3 "" V 4440 4040 50  0000 C CNN
F 4 "1/16W" H 4260 3940 50  0000 R CNN "Wattage"
F 5 "5%" H 4260 4040 50  0000 R CNN "Tolerance"
F 6 "0402" H 4260 4140 50  0000 R CNN "Footprint Display"
	1    4360 4040
	-1   0    0    -1  
$EndComp
$Comp
L R R807
U 1 1 58B3305D
P 4260 4040
F 0 "R807" V 4260 3400 50  0000 C CNN
F 1 "10k" V 4260 4040 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 4010 4140 50  0001 L CNN
F 3 "" V 4340 4040 50  0000 C CNN
F 4 "1/16W" H 4160 3940 50  0001 R CNN "Wattage"
F 5 "5%" H 4160 4040 50  0001 R CNN "Tolerance"
F 6 "0402" H 4160 4140 50  0001 R CNN "Footprint Display"
	1    4260 4040
	-1   0    0    -1  
$EndComp
$Comp
L R R806
U 1 1 58B33067
P 4160 4040
F 0 "R806" V 4160 3400 50  0000 C CNN
F 1 "10k" V 4160 4040 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 3910 4140 50  0001 L CNN
F 3 "" V 4240 4040 50  0000 C CNN
F 4 "1/16W" H 4060 3940 50  0001 R CNN "Wattage"
F 5 "5%" H 4060 4040 50  0001 R CNN "Tolerance"
F 6 "0402" H 4060 4140 50  0001 R CNN "Footprint Display"
	1    4160 4040
	-1   0    0    -1  
$EndComp
$Comp
L R R802
U 1 1 58B33081
P 3230 3090
F 0 "R802" V 3470 3090 50  0000 C CNN
F 1 "100" V 3230 3090 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2980 3190 50  0001 L CNN
F 3 "" V 3310 3090 50  0000 C CNN
F 4 "1/16W" H 3130 2990 50  0001 R CNN "Wattage"
F 5 "5%" H 3130 3090 50  0001 R CNN "Tolerance"
F 6 "0402" H 3130 3190 50  0001 R CNN "Footprint Display"
	1    3230 3090
	0    1    -1   0   
$EndComp
$Comp
L R R805
U 1 1 58B3308B
P 3230 3690
F 0 "R805" V 3310 3700 50  0000 C CNN
F 1 "100" V 3230 3690 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2980 3790 50  0001 L CNN
F 3 "" V 3310 3690 50  0000 C CNN
F 4 "1/16W" V 3050 3790 50  0000 R CNN "Wattage"
F 5 "5%" V 2970 3730 50  0000 R CNN "Tolerance"
F 6 "0402" V 3130 3790 50  0000 R CNN "Footprint Display"
	1    3230 3690
	0    1    -1   0   
$EndComp
$Comp
L R R803
U 1 1 58B33095
P 3230 3190
F 0 "R803" V 3500 3190 50  0000 C CNN
F 1 "100" V 3230 3190 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2980 3290 50  0001 L CNN
F 3 "" V 3310 3190 50  0000 C CNN
F 4 "1/16W" H 3130 3090 50  0001 R CNN "Wattage"
F 5 "5%" H 3130 3190 50  0001 R CNN "Tolerance"
F 6 "0402" H 3130 3290 50  0001 R CNN "Footprint Display"
	1    3230 3190
	0    1    -1   0   
$EndComp
Wire Wire Line
	4160 4230 4160 4190
Wire Wire Line
	4360 4230 4360 4190
Connection ~ 4260 4230
Wire Wire Line
	3380 3090 5130 3090
Wire Wire Line
	3380 3190 5130 3190
Wire Wire Line
	3380 3290 5130 3290
Wire Wire Line
	4160 3290 4160 3890
Connection ~ 4160 3290
Wire Wire Line
	4260 3190 4260 3890
Connection ~ 4260 3190
Wire Wire Line
	4360 3090 4360 3890
Connection ~ 4360 3090
Text GLabel 3080 3290 0    60   Input ~ 0
BCOA
Text GLabel 3080 3190 0    60   Input ~ 0
BCOB
Text GLabel 3080 3090 0    60   Input ~ 0
BCOC
$Comp
L GND #PWR095
U 1 1 58B33D32
P 5010 4000
F 0 "#PWR095" H 5010 3750 50  0001 C CNN
F 1 "GND" H 5010 3850 50  0000 C CNN
F 2 "" H 5010 4000 50  0000 C CNN
F 3 "" H 5010 4000 50  0000 C CNN
	1    5010 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5010 3790 5130 3790
NoConn ~ 6530 3640
NoConn ~ 6530 3740
$Comp
L C C803
U 1 1 58B347FA
P 5800 5140
F 0 "C803" H 5750 5240 50  0000 R CNN
F 1 "1nF" H 5750 5040 50  0000 R CNN
F 2 "Capacitors_SMD:C_0402" H 5950 5240 50  0001 L CNN
F 3 "" H 5825 5240 50  0000 C CNN
F 4 "25V" H 5950 5140 50  0000 L CNN "Voltage"
F 5 "10%" H 5950 5040 50  0000 L CNN "Tolerance"
F 6 "0402" H 5950 5240 50  0000 L CNN "Footprint Display"
	1    5800 5140
	1    0    0    -1  
$EndComp
$Comp
L C C802
U 1 1 58B34804
P 5480 5140
F 0 "C802" H 5430 5240 50  0000 R CNN
F 1 "10nF" H 5430 5040 50  0000 R CNN
F 2 "Capacitors_SMD:C_0402" H 5630 5240 50  0001 L CNN
F 3 "" H 5505 5240 50  0000 C CNN
F 4 "25V" H 5630 5140 50  0001 L CNN "Voltage"
F 5 "10%" H 5630 5040 50  0001 L CNN "Tolerance"
F 6 "0402" H 5630 5240 50  0001 L CNN "Footprint Display"
	1    5480 5140
	1    0    0    -1  
$EndComp
$Comp
L C C801
U 1 1 58B3480E
P 5160 5140
F 0 "C801" H 5110 5240 50  0000 R CNN
F 1 "0.1uF" H 5110 5040 50  0000 R CNN
F 2 "Capacitors_SMD:C_0402" H 5310 5240 50  0001 L CNN
F 3 "" H 5185 5240 50  0000 C CNN
F 4 "25V" H 5310 5140 50  0001 L CNN "Voltage"
F 5 "10%" H 5310 5040 50  0001 L CNN "Tolerance"
F 6 "0402" H 5310 5240 50  0001 L CNN "Footprint Display"
	1    5160 5140
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR096
U 1 1 58B34815
P 5480 4910
F 0 "#PWR096" H 5480 4760 50  0001 C CNN
F 1 "VCC" H 5480 5060 50  0000 C CNN
F 2 "" H 5480 4910 50  0000 C CNN
F 3 "" H 5480 4910 50  0000 C CNN
	1    5480 4910
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR097
U 1 1 58B3481B
P 5480 5370
F 0 "#PWR097" H 5480 5120 50  0001 C CNN
F 1 "GND" H 5480 5220 50  0000 C CNN
F 2 "" H 5480 5370 50  0000 C CNN
F 3 "" H 5480 5370 50  0000 C CNN
	1    5480 5370
	1    0    0    -1  
$EndComp
Wire Wire Line
	5480 5290 5480 5370
Wire Wire Line
	5160 5330 5800 5330
Wire Wire Line
	5800 5330 5800 5290
Connection ~ 5480 5330
Wire Wire Line
	5160 5330 5160 5290
Wire Wire Line
	5480 4910 5480 4990
Wire Wire Line
	5160 4950 5800 4950
Wire Wire Line
	5800 4950 5800 4990
Connection ~ 5480 4950
Wire Wire Line
	5160 4950 5160 4990
Text Notes 6230 1930 2    100  ~ 20
Octal to Decimal Decoder
Text GLabel 6530 3040 2    60   Output ~ 0
HighSideBase0
Text GLabel 6530 3140 2    60   Output ~ 0
HighSideBase1
Text GLabel 6530 3240 2    60   Output ~ 0
HighSideBase2
Text GLabel 6530 3340 2    60   Output ~ 0
HighSideBase3
Text GLabel 6530 3440 2    60   Output ~ 0
HighSideBase4
Text GLabel 6530 3540 2    60   Output ~ 0
HighSideBase5
$Comp
L R R804
U 1 1 58B59865
P 3230 3290
F 0 "R804" V 3530 3290 50  0000 C CNN
F 1 "100" V 3230 3290 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2980 3390 50  0001 L CNN
F 3 "" V 3310 3290 50  0000 C CNN
F 4 "1/16W" H 3130 3190 50  0001 R CNN "Wattage"
F 5 "5%" H 3130 3290 50  0001 R CNN "Tolerance"
F 6 "0402" H 3130 3390 50  0001 R CNN "Footprint Display"
	1    3230 3290
	0    1    -1   0   
$EndComp
Text GLabel 3080 3690 0    60   Input ~ 0
~DecodeEN
Wire Wire Line
	4260 4190 4260 4270
Wire Wire Line
	5010 3790 5010 4000
Wire Wire Line
	4160 4230 4360 4230
$Comp
L GND #PWR098
U 1 1 58D17688
P 4260 4270
F 0 "#PWR098" H 4260 4020 50  0001 C CNN
F 1 "GND" H 4260 4120 50  0000 C CNN
F 2 "" H 4260 4270 50  0000 C CNN
F 3 "" H 4260 4270 50  0000 C CNN
	1    4260 4270
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR099
U 1 1 58D17AAA
P 5010 2690
F 0 "#PWR099" H 5010 2540 50  0001 C CNN
F 1 "VCC" H 5010 2840 50  0000 C CNN
F 2 "" H 5010 2690 50  0000 C CNN
F 3 "" H 5010 2690 50  0000 C CNN
	1    5010 2690
	1    0    0    -1  
$EndComp
Wire Wire Line
	3380 3690 5130 3690
Wire Wire Line
	5130 3590 5010 3590
Wire Wire Line
	5010 3590 5010 2690
$Comp
L R R801
U 1 1 58D1828B
P 4700 2840
F 0 "R801" V 4800 2840 50  0000 C CNN
F 1 "10k" V 4700 2840 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 4450 2940 50  0001 L CNN
F 3 "" V 4780 2840 50  0000 C CNN
F 4 "1/16W" H 4600 2740 50  0000 R CNN "Wattage"
F 5 "5%" H 4600 2840 50  0000 R CNN "Tolerance"
F 6 "0402" H 4600 2940 50  0000 R CNN "Footprint Display"
	1    4700 2840
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR0100
U 1 1 58D186D3
P 4700 2690
F 0 "#PWR0100" H 4700 2540 50  0001 C CNN
F 1 "VCC" H 4700 2840 50  0000 C CNN
F 2 "" H 4700 2690 50  0000 C CNN
F 3 "" H 4700 2690 50  0000 C CNN
	1    4700 2690
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2990 4700 3690
Connection ~ 4700 3690
Text Label 3450 3090 0    60   ~ 0
BCOA_R
Text Label 3450 3190 0    60   ~ 0
BCOB_R
Text Label 3450 3290 0    60   ~ 0
BCOC_R
Text Label 3440 3690 0    60   ~ 0
BCOEN_R
$EndSCHEMATC
