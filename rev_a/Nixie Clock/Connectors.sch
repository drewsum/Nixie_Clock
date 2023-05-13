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
Sheet 15 15
Title "Display Connectors"
Date "2017-03-06"
Rev "2"
Comp "Drew Maatman"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 3940 2940 0    60   UnSpc ~ 0
cathode0
Text GLabel 3940 3140 0    60   UnSpc ~ 0
cathode2
Text GLabel 3940 3340 0    60   UnSpc ~ 0
cathode4
Text GLabel 3940 3540 0    60   UnSpc ~ 0
cathode6
Text GLabel 3940 3040 0    60   UnSpc ~ 0
cathode1
Text GLabel 3940 3240 0    60   UnSpc ~ 0
cathode3
Text GLabel 3940 3440 0    60   UnSpc ~ 0
cathode5
Text GLabel 3940 3640 0    60   UnSpc ~ 0
cathode7
Text GLabel 3940 3740 0    60   UnSpc ~ 0
cathode8
Text GLabel 3940 3840 0    60   UnSpc ~ 0
cathode9
Text GLabel 5080 3240 0    60   UnSpc ~ 0
anode0
Text GLabel 5080 3340 0    60   UnSpc ~ 0
anode1
Text GLabel 5080 3440 0    60   UnSpc ~ 0
anode2
Text GLabel 5080 3540 0    60   UnSpc ~ 0
anode3
Text GLabel 5080 3640 0    60   UnSpc ~ 0
anode4
Text GLabel 5080 3740 0    60   UnSpc ~ 0
anode5
Text GLabel 9400 3600 0    60   UnSpc ~ 0
colon0
Text GLabel 9400 3800 0    60   UnSpc ~ 0
colon1
Text GLabel 3940 3940 0    60   UnSpc ~ 0
cathodeDec
$Comp
L CONN_01X11 J1501
U 1 1 58B81D55
P 4140 3440
F 0 "J1501" H 4140 4040 50  0000 C CNN
F 1 "Cathodes" V 4240 3440 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x11_Pitch2.54mm" H 4140 3440 50  0001 C CNN
F 3 "" H 4140 3440 50  0000 C CNN
	1    4140 3440
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 J1502
U 1 1 58B82B06
P 5280 3490
F 0 "J1502" H 5280 3840 50  0000 C CNN
F 1 "Anodes" V 5380 3490 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.54mm" H 5280 3490 50  0001 C CNN
F 3 "" H 5280 3490 50  0000 C CNN
	1    5280 3490
	1    0    0    1   
$EndComp
Wire Wire Line
	8940 3500 9400 3500
Wire Wire Line
	8390 3700 9400 3700
$Comp
L Vvv #PWR0180
U 1 1 58B427E7
P 8940 3120
F 0 "#PWR0180" H 8940 2970 50  0001 C CNN
F 1 "Vvv" H 8940 3270 50  0000 C CNN
F 2 "" H 8940 3120 60  0000 C CNN
F 3 "" H 8940 3120 60  0000 C CNN
	1    8940 3120
	1    0    0    -1  
$EndComp
Wire Wire Line
	8940 3500 8940 3420
$Comp
L R R1502
U 1 1 58CF7ADB
P 8390 3270
F 0 "R1502" V 8470 3270 50  0000 C CNN
F 1 "200k" V 8390 3270 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 8140 3370 50  0001 L CNN
F 3 "" V 8470 3270 50  0000 C CNN
F 4 "1/10W" H 8290 3170 50  0000 R CNN "Wattage"
F 5 "5%" H 8290 3270 50  0000 R CNN "Tolerance"
F 6 "0805" H 8290 3370 50  0000 R CNN "Footprint Display"
	1    8390 3270
	1    0    0    -1  
$EndComp
$Comp
L Vvv #PWR0181
U 1 1 58CF7AE1
P 8390 3120
F 0 "#PWR0181" H 8390 2970 50  0001 C CNN
F 1 "Vvv" H 8390 3270 50  0000 C CNN
F 2 "" H 8390 3120 60  0000 C CNN
F 3 "" H 8390 3120 60  0000 C CNN
	1    8390 3120
	1    0    0    -1  
$EndComp
Wire Wire Line
	8390 3420 8390 3700
$Comp
L R R1503
U 1 1 58D73D60
P 8940 3270
F 0 "R1503" V 9020 3270 50  0000 C CNN
F 1 "200k" V 8940 3270 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" H 8690 3370 50  0001 L CNN
F 3 "" V 9020 3270 50  0000 C CNN
F 4 "1/10W" H 8840 3170 50  0000 R CNN "Wattage"
F 5 "5%" H 8840 3270 50  0000 R CNN "Tolerance"
F 6 "0805" H 8840 3370 50  0000 R CNN "Footprint Display"
	1    8940 3270
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 J1503
U 1 1 58E1B077
P 9600 3750
F 0 "J1503" H 9600 4100 50  0000 C CNN
F 1 "Aux" V 9700 3750 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x06_Pitch2.54mm" H 9600 3750 50  0001 C CNN
F 3 "" H 9600 3750 50  0000 C CNN
	1    9600 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR0182
U 1 1 58E1B88F
P 9320 4080
F 0 "#PWR0182" H 9320 3830 50  0001 C CNN
F 1 "GND" H 9320 3930 50  0000 C CNN
F 2 "" H 9320 4080 50  0000 C CNN
F 3 "" H 9320 4080 50  0000 C CNN
	1    9320 4080
	1    0    0    -1  
$EndComp
Wire Wire Line
	9320 4080 9320 4000
Wire Wire Line
	9320 4000 9400 4000
$Comp
L TVS D1501
U 1 1 58E1C0B9
P 8860 4280
F 0 "D1501" V 8860 4430 50  0000 C CNN
F 1 "3.3V" V 8760 4180 50  0000 R CNN
F 2 "Diodes_SMD:D_SOD-323" H 8860 4280 50  0001 C CNN
F 3 "" H 8860 4430 50  0000 C CNN
F 4 "PESD3V3L1BA" V 8860 4180 50  0000 R CNN "Part Number"
F 5 "SOD323" V 8960 4180 50  0000 R CNN "Footprint Display"
	1    8860 4280
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR0183
U 1 1 58E1C0D0
P 8860 4580
F 0 "#PWR0183" H 8860 4330 50  0001 C CNN
F 1 "GND" H 8860 4430 50  0000 C CNN
F 2 "" H 8860 4580 50  0000 C CNN
F 3 "" H 8860 4580 50  0000 C CNN
	1    8860 4580
	1    0    0    -1  
$EndComp
Wire Wire Line
	8860 3980 8860 3900
Wire Wire Line
	7460 3900 9400 3900
Text Label 9000 3500 0    60   ~ 0
colon0R
Text Label 8550 3700 0    60   ~ 0
colon1R
Text GLabel 7160 3900 0    60   Output ~ 0
~ConnSense
$Comp
L R R1501
U 1 1 58E1CB8E
P 7790 3270
F 0 "R1501" V 7870 3270 50  0000 C CNN
F 1 "10k" V 7790 3270 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 7540 3370 50  0001 L CNN
F 3 "" V 7870 3270 50  0000 C CNN
F 4 "1/16W" H 7690 3170 50  0000 R CNN "Wattage"
F 5 "5%" H 7690 3270 50  0000 R CNN "Tolerance"
F 6 "0402" H 7690 3370 50  0000 R CNN "Footprint Display"
	1    7790 3270
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR0184
U 1 1 58E1CF61
P 7790 3120
F 0 "#PWR0184" H 7790 2970 50  0001 C CNN
F 1 "VCC" H 7790 3270 50  0000 C CNN
F 2 "" H 7790 3120 50  0000 C CNN
F 3 "" H 7790 3120 50  0000 C CNN
	1    7790 3120
	1    0    0    -1  
$EndComp
Connection ~ 8860 3900
Wire Wire Line
	7790 3420 7790 4000
Connection ~ 7790 3900
$Comp
L JUMPER JP1501
U 1 1 58E16880
P 7790 4300
F 0 "JP1501" H 7790 4450 50  0000 C CNN
F 1 "ForceConnSense" H 7790 4220 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7790 4300 50  0001 C CNN
F 3 "" H 7790 4300 50  0000 C CNN
	1    7790 4300
	0    1    1    0   
$EndComp
$Comp
L GND #PWR0185
U 1 1 58E168DD
P 7790 4600
F 0 "#PWR0185" H 7790 4350 50  0001 C CNN
F 1 "GND" H 7790 4450 50  0000 C CNN
F 2 "" H 7790 4600 50  0000 C CNN
F 3 "" H 7790 4600 50  0000 C CNN
	1    7790 4600
	1    0    0    -1  
$EndComp
Text Notes 5260 2430 2    100  ~ 20
Anode/Cathode Connectors
Text Notes 9340 2470 2    100  ~ 20
Aux Connector
$Comp
L R R1504
U 1 1 59216018
P 7310 3900
F 0 "R1504" V 7390 3900 50  0000 C CNN
F 1 "100" V 7310 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 7060 4000 50  0001 L CNN
F 3 "" V 7390 3900 50  0000 C CNN
F 4 "1/16W" V 7060 3980 50  0000 R CNN "Wattage"
F 5 "5%" V 7140 3980 50  0000 R CNN "Tolerance"
F 6 "0402" V 7220 3980 50  0000 R CNN "Footprint Display"
	1    7310 3900
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
