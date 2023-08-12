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
Sheet 5 15
Title "Microcontroller (PIC16F1519)"
Date "2017-03-06"
Rev "2"
Comp "Drew Maatman"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L VSS #PWR062
U 1 1 58B5AEFF
P 5150 5050
F 0 "#PWR062" H 5150 4900 50  0001 C CNN
F 1 "VSS" H 5150 5200 50  0000 C CNN
F 2 "" H 5150 5050 50  0000 C CNN
F 3 "" H 5150 5050 50  0000 C CNN
	1    5150 5050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 5050 5150 5010
Wire Wire Line
	5100 5010 5200 5010
Wire Wire Line
	5200 5010 5200 4970
Wire Wire Line
	5100 5010 5100 4970
Connection ~ 5150 5010
Wire Wire Line
	5150 2090 5150 2130
Wire Wire Line
	5100 2130 5200 2130
Wire Wire Line
	5200 2130 5200 2170
Wire Wire Line
	5100 2130 5100 2170
Connection ~ 5150 2130
$Comp
L PIC16(L)F1519-I/MV U501
U 1 1 58B5B498
P 5200 3570
F 0 "U501" H 5300 4970 50  0000 L CNN
F 1 "PIC16LF1519-I/MV" H 5300 4870 50  0000 L CNN
F 2 "Housings_DFN_QFN:QFN-40-1EP_5x5mm_Pitch0.4mm" H 5200 3570 50  0001 C CNN
F 3 "" H 5200 3570 50  0000 C CNN
	1    5200 3570
	1    0    0    -1  
$EndComp
$Comp
L PicKit3_Header J501
U 1 1 58B5CFC5
P 1160 1160
F 0 "J501" H 1460 760 60  0000 C CNN
F 1 "PicKit3_Header" V 860 1160 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x06_Pitch2.54mm" H 1160 1510 60  0001 C CNN
F 3 "" H 1160 1510 60  0001 C CNN
	1    1160 1160
	1    0    0    -1  
$EndComp
Text GLabel 1710 910  2    60   Output ~ 0
~MCLR
Text GLabel 1710 1210 2    60   BiDi ~ 0
ICSPDAT
Text GLabel 1710 1310 2    60   BiDi ~ 0
ICSPCLK
NoConn ~ 1710 1410
$Comp
L VSS #PWR063
U 1 1 58B5E6BE
P 2330 1190
F 0 "#PWR063" H 2330 1040 50  0001 C CNN
F 1 "VSS" H 2330 1340 50  0000 C CNN
F 2 "" H 2330 1190 50  0000 C CNN
F 3 "" H 2330 1190 50  0000 C CNN
	1    2330 1190
	-1   0    0    1   
$EndComp
Wire Wire Line
	2330 1190 2330 1110
Wire Wire Line
	2330 1110 1710 1110
Wire Wire Line
	2330 930  2330 1010
Wire Wire Line
	2330 1010 1710 1010
$Comp
L Crystal Y501
U 1 1 58B62A6A
P 3250 6270
F 0 "Y501" H 3250 6420 50  0000 C CNN
F 1 "20MHz" H 3250 6120 50  0000 C CNN
F 2 "Custom Footprints:CX5032GB20000H0PESZZ" H 3250 6270 50  0001 C CNN
F 3 "" H 3250 6270 50  0000 C CNN
F 4 "CX5032GB20000H0PESZZ" H 3250 6790 60  0000 C CNN "Part Number"
	1    3250 6270
	1    0    0    -1  
$EndComp
$Comp
L C C504
U 1 1 58B62D71
P 2830 6500
F 0 "C504" H 2780 6600 50  0000 R CNN
F 1 "12pF" H 2780 6400 50  0000 R CNN
F 2 "Capacitors_SMD:C_0402" H 2980 6600 50  0001 L CNN
F 3 "" H 2855 6600 50  0000 C CNN
F 4 "50V" H 2980 6500 50  0000 L CNN "Voltage"
F 5 "10%" H 2980 6400 50  0000 L CNN "Tolerance"
F 6 "0402" H 2980 6600 50  0000 L CNN "Footprint Display"
	1    2830 6500
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR064
U 1 1 58B62DDD
P 2830 6650
F 0 "#PWR064" H 2830 6400 50  0001 C CNN
F 1 "GND" H 2830 6500 50  0000 C CNN
F 2 "" H 2830 6650 50  0000 C CNN
F 3 "" H 2830 6650 50  0000 C CNN
	1    2830 6650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR065
U 1 1 58B62E5D
P 3670 6650
F 0 "#PWR065" H 3670 6400 50  0001 C CNN
F 1 "GND" H 3670 6500 50  0000 C CNN
F 2 "" H 3670 6650 50  0000 C CNN
F 3 "" H 3670 6650 50  0000 C CNN
	1    3670 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3670 6190 3670 6350
Wire Wire Line
	3670 6270 3400 6270
Wire Wire Line
	3100 6270 2830 6270
Wire Wire Line
	2830 6190 2830 6350
Text GLabel 2830 6190 1    60   UnSpc ~ 0
OSC2
Text GLabel 3670 6190 1    60   UnSpc ~ 0
OSC1
Connection ~ 3670 6270
Connection ~ 2830 6270
$Comp
L VCC_BCKUP #PWR066
U 1 1 58B6A731
P 5150 2090
F 0 "#PWR066" H 5150 1940 50  0001 C CNN
F 1 "VCC_BCKUP" H 5150 2240 50  0000 C CNN
F 2 "" H 5150 2090 50  0000 C CNN
F 3 "" H 5150 2090 50  0000 C CNN
	1    5150 2090
	1    0    0    -1  
$EndComp
$Comp
L VCC_BCKUP #PWR067
U 1 1 58B6AA6A
P 2330 930
F 0 "#PWR067" H 2330 780 50  0001 C CNN
F 1 "VCC_BCKUP" H 2330 1080 50  0000 C CNN
F 2 "" H 2330 930 50  0000 C CNN
F 3 "" H 2330 930 50  0000 C CNN
	1    2330 930 
	1    0    0    -1  
$EndComp
Text GLabel 6950 6060 3    60   Input ~ 0
~MCLR
$Comp
L R R502
U 1 1 58B80192
P 6950 5910
F 0 "R502" V 7030 5910 50  0000 C CNN
F 1 "1M" V 6950 5910 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 6700 6010 50  0001 L CNN
F 3 "" V 7030 5910 50  0000 C CNN
F 4 "1/16W" H 6850 5810 50  0000 R CNN "Wattage"
F 5 "5%" H 6850 5910 50  0000 R CNN "Tolerance"
F 6 "0402" H 6850 6010 50  0000 R CNN "Footprint Display"
	1    6950 5910
	1    0    0    -1  
$EndComp
$Comp
L VCC_BCKUP #PWR068
U 1 1 58B801CA
P 6950 5760
F 0 "#PWR068" H 6950 5610 50  0001 C CNN
F 1 "VCC_BCKUP" H 6950 5910 50  0000 C CNN
F 2 "" H 6950 5760 50  0000 C CNN
F 3 "" H 6950 5760 50  0000 C CNN
	1    6950 5760
	1    0    0    -1  
$EndComp
$Comp
L C C503
U 1 1 58B81191
P 5950 5970
F 0 "C503" H 5900 6070 50  0000 R CNN
F 1 "1nF" H 5900 5870 50  0000 R CNN
F 2 "Capacitors_SMD:C_0402" H 6100 6070 50  0001 L CNN
F 3 "" H 5975 6070 50  0000 C CNN
F 4 "25V" H 6100 5970 50  0000 L CNN "Voltage"
F 5 "10%" H 6100 5870 50  0000 L CNN "Tolerance"
F 6 "0402" H 6100 6070 50  0000 L CNN "Footprint Display"
	1    5950 5970
	1    0    0    -1  
$EndComp
$Comp
L C C502
U 1 1 58B8119B
P 5630 5970
F 0 "C502" H 5580 6070 50  0000 R CNN
F 1 "10nF" H 5580 5870 50  0000 R CNN
F 2 "Capacitors_SMD:C_0402" H 5780 6070 50  0001 L CNN
F 3 "" H 5655 6070 50  0000 C CNN
F 4 "25V" H 5780 5970 50  0001 L CNN "Voltage"
F 5 "10%" H 5780 5870 50  0001 L CNN "Tolerance"
F 6 "0402" H 5780 6070 50  0001 L CNN "Footprint Display"
	1    5630 5970
	1    0    0    -1  
$EndComp
$Comp
L C C501
U 1 1 58B811A5
P 5310 5970
F 0 "C501" H 5260 6070 50  0000 R CNN
F 1 "0.1uF" H 5260 5870 50  0000 R CNN
F 2 "Capacitors_SMD:C_0402" H 5460 6070 50  0001 L CNN
F 3 "" H 5335 6070 50  0000 C CNN
F 4 "25V" H 5460 5970 50  0001 L CNN "Voltage"
F 5 "10%" H 5460 5870 50  0001 L CNN "Tolerance"
F 6 "0402" H 5460 6070 50  0001 L CNN "Footprint Display"
	1    5310 5970
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR069
U 1 1 58B811AC
P 5630 6200
F 0 "#PWR069" H 5630 5950 50  0001 C CNN
F 1 "GND" H 5630 6050 50  0000 C CNN
F 2 "" H 5630 6200 50  0000 C CNN
F 3 "" H 5630 6200 50  0000 C CNN
	1    5630 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5630 6120 5630 6200
Wire Wire Line
	5310 6160 5950 6160
Wire Wire Line
	5950 6160 5950 6120
Connection ~ 5630 6160
Wire Wire Line
	5310 6160 5310 6120
Wire Wire Line
	5630 5740 5630 5820
Wire Wire Line
	5310 5780 5950 5780
Wire Wire Line
	5950 5780 5950 5820
Connection ~ 5630 5780
Wire Wire Line
	5310 5780 5310 5820
$Comp
L VCC_BCKUP #PWR070
U 1 1 58B81221
P 5630 5740
F 0 "#PWR070" H 5630 5590 50  0001 C CNN
F 1 "VCC_BCKUP" H 5630 5890 50  0000 C CNN
F 2 "" H 5630 5740 50  0000 C CNN
F 3 "" H 5630 5740 50  0000 C CNN
	1    5630 5740
	1    0    0    -1  
$EndComp
$Comp
L C C505
U 1 1 58CFD4E0
P 3670 6500
F 0 "C505" H 3620 6600 50  0000 R CNN
F 1 "12pF" H 3620 6400 50  0000 R CNN
F 2 "Capacitors_SMD:C_0402" H 3820 6600 50  0001 L CNN
F 3 "" H 3695 6600 50  0000 C CNN
F 4 "50V" H 3820 6500 50  0000 L CNN "Voltage"
F 5 "10%" H 3820 6400 50  0000 L CNN "Tolerance"
F 6 "0402" H 3820 6600 50  0000 L CNN "Footprint Display"
	1    3670 6500
	1    0    0    -1  
$EndComp
Text GLabel 4200 2470 0    60   Input ~ 0
VCC_PGOOD
Text GLabel 4200 3870 0    60   Input ~ 0
PLUG
Text GLabel 4200 2770 0    60   Output ~ 0
VVV_RUN
Text GLabel 4200 2670 0    60   Input ~ 0
VVV_PGOOD
Text GLabel 6200 3370 2    60   Output ~ 0
BCDA
Text GLabel 6200 3470 2    60   Output ~ 0
BCDB
Text GLabel 6200 3570 2    60   Output ~ 0
BCDC
Text GLabel 6200 3670 2    60   Output ~ 0
BCDD
Text GLabel 6200 4070 2    60   Output ~ 0
~DecodeEN
Text GLabel 6200 3770 2    60   Output ~ 0
BCOA
Text GLabel 6200 3870 2    60   Output ~ 0
BCOB
Text GLabel 6200 3970 2    60   Output ~ 0
BCOC
Text GLabel 6200 2670 2    60   Output ~ 0
LowSideBaseDec
Text GLabel 6200 2770 2    60   Output ~ 0
ColonDrive0
Text GLabel 6200 2870 2    60   Output ~ 0
ColonDrive1
Text GLabel 4200 3670 0    60   Input ~ 0
~DSPLY_TGL
Text GLabel 6200 3070 2    60   Input ~ 0
24hr
Text GLabel 4200 4370 0    60   Output ~ 0
TickInd
Text GLabel 4200 4470 0    60   Output ~ 0
ErrorInd
Text GLabel 4200 3370 0    60   Input ~ 0
~SetSeconds
Text GLabel 4200 3470 0    60   Input ~ 0
~SetMinutes
Text GLabel 4200 3570 0    60   Input ~ 0
~SetHours
Text GLabel 6200 2470 2    60   Input ~ 0
EXT_OSC
Text GLabel 4200 4070 0    60   BiDi ~ 0
ICSPDAT
Text GLabel 4200 3970 0    60   BiDi ~ 0
ICSPCLK
Text GLabel 4200 4570 0    60   Input ~ 0
~MCLR
Text GLabel 4200 4270 0    60   Output ~ 0
EnableInd
Text GLabel 6200 2970 2    60   Input ~ 0
~ConnSense
Text GLabel 4200 3070 0    60   UnSpc ~ 0
OSC2
Text GLabel 4200 3170 0    60   UnSpc ~ 0
OSC1
Text GLabel 4200 2970 0    60   Input ~ 0
VCOM_PGOOD
Text GLabel 4200 3770 0    60   Input ~ 0
~VCC_BCKUP_PFO
Text GLabel 6200 3170 2    60   Input ~ 0
VCC_BCKUP_PGOOD
$Comp
L GND #PWR071
U 1 1 58E30031
P 3100 3300
F 0 "#PWR071" H 3100 3050 50  0001 C CNN
F 1 "GND" H 3100 3150 50  0000 C CNN
F 2 "" H 3100 3300 50  0000 C CNN
F 3 "" H 3100 3300 50  0000 C CNN
	1    3100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3000 3100 2870
Wire Wire Line
	3100 2870 4200 2870
$Comp
L R R501
U 1 1 58E2FF98
P 3100 3150
F 0 "R501" V 3180 3150 50  0000 C CNN
F 1 "10k" V 3100 3150 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 2850 3250 50  0001 L CNN
F 3 "" V 3180 3150 50  0000 C CNN
F 4 "1/16W" H 3000 3050 50  0000 R CNN "Wattage"
F 5 "5%" H 3000 3150 50  0000 R CNN "Tolerance"
F 6 "0402" H 3000 3250 50  0000 R CNN "Footprint Display"
	1    3100 3150
	1    0    0    -1  
$EndComp
NoConn ~ 6200 2570
NoConn ~ 4200 2570
Text Notes 4170 1390 0    100  ~ 20
8 Bit PIC Microcontroller
$EndSCHEMATC
