EESchema Schematic File Version 2
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
LIBS:special
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
LIBS:header
LIBS:konektory
LIBS:U3_MLAB_ADAPTER-cache
EELAYER 25 0
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
L HEADER_2x04 J6
U 1 1 5485F8D0
P 3600 3400
F 0 "J6" H 3600 3150 60  0000 C CNN
F 1 "IOS_PORT_#1" H 3780 3750 60  0000 C CNN
F 2 "MLAB_hreb:2mm_Pin_Header_Straight_2x04" H 3600 3550 60  0001 C CNN
F 3 "" H 3600 3550 60  0000 C CNN
	1    3600 3400
	1    0    0    -1  
$EndComp
$Comp
L HEADER_2x02 J11
U 1 1 5485F97F
P 7550 3300
F 0 "J11" H 7550 3500 60  0000 C CNN
F 1 "IO_PORT_#2" H 7550 3100 60  0000 C CNN
F 2 "MLAB_hreb:2mm_Pin_Header_Straight_2x02" H 7550 3350 60  0001 C CNN
F 3 "" H 7550 3350 60  0000 C CNN
	1    7550 3300
	1    0    0    -1  
$EndComp
$Comp
L HEADER_2x03_PARALLEL J1
U 1 1 5485F9FC
P 1750 5900
F 0 "J1" H 1750 5700 60  0000 C CNN
F 1 "5V POWER" H 1750 6100 60  0000 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x03" H 1750 6000 60  0001 C CNN
F 3 "" H 1750 6000 60  0000 C CNN
	1    1750 5900
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5485FDDC
P 2100 6150
F 0 "#PWR01" H 2100 6150 30  0001 C CNN
F 1 "GND" H 2100 6080 30  0001 C CNN
F 2 "" H 2100 6150 60  0000 C CNN
F 3 "" H 2100 6150 60  0000 C CNN
	1    2100 6150
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 5485FEBD
P 2750 5750
F 0 "#PWR02" H 2750 5840 20  0001 C CNN
F 1 "+5V" H 2750 5840 30  0000 C CNN
F 2 "" H 2750 5750 60  0000 C CNN
F 3 "" H 2750 5750 60  0000 C CNN
	1    2750 5750
	1    0    0    -1  
$EndComp
$Comp
L DIODESCH D1
U 1 1 5485FEF7
P 2400 6150
F 0 "D1" H 2400 6250 40  0000 C CNN
F 1 "BAS85" H 2400 6050 40  0000 C CNN
F 2 "Diodes_SMD:Diode-SMA_Standard" H 2400 6150 60  0001 C CNN
F 3 "" H 2400 6150 60  0000 C CNN
	1    2400 6150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR03
U 1 1 5485FF80
P 2400 6450
F 0 "#PWR03" H 2400 6450 30  0001 C CNN
F 1 "GND" H 2400 6380 30  0001 C CNN
F 2 "" H 2400 6450 60  0000 C CNN
F 3 "" H 2400 6450 60  0000 C CNN
	1    2400 6450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 5485FF9A
P 2750 6450
F 0 "#PWR04" H 2750 6450 30  0001 C CNN
F 1 "GND" H 2750 6380 30  0001 C CNN
F 2 "" H 2750 6450 60  0000 C CNN
F 3 "" H 2750 6450 60  0000 C CNN
	1    2750 6450
	1    0    0    -1  
$EndComp
$Comp
L CP2 C1
U 1 1 5485FFA7
P 2750 6150
F 0 "C1" H 2750 6250 40  0000 L CNN
F 1 "10uF" H 2756 6065 40  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeB_EIA-3528_Reflow" H 2788 6000 30  0001 C CNN
F 3 "" H 2750 6150 60  0000 C CNN
	1    2750 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5900 2750 5900
Wire Wire Line
	2400 5900 2400 5950
Connection ~ 2400 5900
Connection ~ 2750 5900
Wire Wire Line
	2400 6350 2400 6450
Wire Wire Line
	2750 6350 2750 6450
Wire Wire Line
	2100 5800 2100 6150
Wire Wire Line
	2100 5800 2000 5800
Wire Wire Line
	2000 6000 2100 6000
Connection ~ 2100 6000
Wire Wire Line
	2750 5750 2750 5950
$Comp
L HEADER_2x03_PARALLEL J5
U 1 1 548601AA
P 3550 5900
F 0 "J5" H 3550 5700 60  0000 C CNN
F 1 "1,8V CPU Core" H 3550 6100 60  0000 C CNN
F 2 "Mlab_Pin_Headers:Straight_2x03" H 3550 6000 60  0001 C CNN
F 3 "" H 3550 6000 60  0000 C CNN
	1    3550 5900
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 548601B0
P 3900 6150
F 0 "#PWR05" H 3900 6150 30  0001 C CNN
F 1 "GND" H 3900 6080 30  0001 C CNN
F 2 "" H 3900 6150 60  0000 C CNN
F 3 "" H 3900 6150 60  0000 C CNN
	1    3900 6150
	1    0    0    -1  
$EndComp
$Comp
L DIODESCH D2
U 1 1 548601BC
P 4200 6150
F 0 "D2" H 4200 6250 40  0000 C CNN
F 1 "BAS85" H 4200 6050 40  0000 C CNN
F 2 "Diodes_SMD:Diode-MiniMELF_Standard" H 4200 6150 60  0001 C CNN
F 3 "" H 4200 6150 60  0000 C CNN
	1    4200 6150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR06
U 1 1 548601C2
P 4200 6450
F 0 "#PWR06" H 4200 6450 30  0001 C CNN
F 1 "GND" H 4200 6380 30  0001 C CNN
F 2 "" H 4200 6450 60  0000 C CNN
F 3 "" H 4200 6450 60  0000 C CNN
	1    4200 6450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 548601C8
P 4550 6450
F 0 "#PWR07" H 4550 6450 30  0001 C CNN
F 1 "GND" H 4550 6380 30  0001 C CNN
F 2 "" H 4550 6450 60  0000 C CNN
F 3 "" H 4550 6450 60  0000 C CNN
	1    4550 6450
	1    0    0    -1  
$EndComp
$Comp
L CP2 C2
U 1 1 548601CE
P 4550 6150
F 0 "C2" H 4550 6250 40  0000 L CNN
F 1 "10uF" H 4556 6065 40  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeB_EIA-3528_Reflow" H 4588 6000 30  0001 C CNN
F 3 "" H 4550 6150 60  0000 C CNN
	1    4550 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 5900 4550 5900
Wire Wire Line
	4200 5900 4200 5950
Connection ~ 4200 5900
Connection ~ 4550 5900
Wire Wire Line
	4200 6350 4200 6450
Wire Wire Line
	4550 6350 4550 6450
Wire Wire Line
	3900 5800 3900 6150
Wire Wire Line
	3900 5800 3800 5800
Wire Wire Line
	3800 6000 3900 6000
Connection ~ 3900 6000
Wire Wire Line
	4550 5650 4550 5950
$Comp
L +1.8V #PWR08
U 1 1 5486039E
P 4550 5650
F 0 "#PWR08" H 4550 5790 20  0001 C CNN
F 1 "+1.8V" H 4550 5760 30  0000 C CNN
F 2 "" H 4550 5650 60  0000 C CNN
F 3 "" H 4550 5650 60  0000 C CNN
	1    4550 5650
	1    0    0    -1  
$EndComp
$Comp
L HEADER_2x01_PARALLEL J12
U 1 1 54860610
P 6650 3510
F 0 "J12" H 6650 3610 60  0000 C CNN
F 1 "#SS" H 6900 3510 60  0000 C CNN
F 2 "MLAB_hreb:Pin_Header_Straight_2x01" H 6650 3510 60  0001 C CNN
F 3 "" H 6650 3510 60  0000 C CNN
	1    6650 3510
	-1   0    0    1   
$EndComp
$Comp
L HEADER_2x01_PARALLEL J13
U 1 1 54860710
P 8350 3500
F 0 "J13" H 8350 3600 60  0000 C CNN
F 1 "MISO" H 8600 3500 60  0000 C CNN
F 2 "MLAB_hreb:Pin_Header_Straight_2x01" H 8350 3500 60  0001 C CNN
F 3 "" H 8350 3500 60  0000 C CNN
	1    8350 3500
	1    0    0    -1  
$EndComp
$Comp
L HEADER_2x01_PARALLEL J10
U 1 1 54860825
P 8500 3090
F 0 "J10" H 8500 2990 60  0000 C CNN
F 1 "MOSI" H 8750 3090 60  0000 C CNN
F 2 "MLAB_hreb:Pin_Header_Straight_2x01" H 8500 3090 60  0001 C CNN
F 3 "" H 8500 3090 60  0000 C CNN
	1    8500 3090
	1    0    0    1   
$EndComp
$Comp
L HEADER_2x01_PARALLEL J9
U 1 1 5486082B
P 6650 3150
F 0 "J9" H 6650 3050 60  0000 C CNN
F 1 "SCLK" H 6900 3150 60  0000 C CNN
F 2 "MLAB_hreb:Pin_Header_Straight_2x01" H 6650 3150 60  0001 C CNN
F 3 "" H 6650 3150 60  0000 C CNN
	1    6650 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	7800 3350 8000 3350
Wire Wire Line
	8000 3350 8000 3500
Wire Wire Line
	8000 3500 8100 3500
Wire Wire Line
	7800 3250 8000 3250
Wire Wire Line
	7300 3250 7150 3250
Wire Wire Line
	7150 3250 7150 3150
Wire Wire Line
	7150 3150 6900 3150
Wire Wire Line
	8250 3090 8000 3090
Wire Wire Line
	7150 3350 7300 3350
$Comp
L +5V #PWR09
U 1 1 54860E24
P 3280 3550
F 0 "#PWR09" H 3280 3640 20  0001 C CNN
F 1 "+5V" V 3210 3610 30  0000 C CNN
F 2 "" H 3280 3550 60  0000 C CNN
F 3 "" H 3280 3550 60  0000 C CNN
	1    3280 3550
	0    -1   -1   0   
$EndComp
$Comp
L +1.8V #PWR010
U 1 1 54860E81
P 3240 3060
F 0 "#PWR010" H 3240 3200 20  0001 C CNN
F 1 "+1.8V" H 3240 3170 30  0000 C CNN
F 2 "" H 3240 3060 60  0000 C CNN
F 3 "" H 3240 3060 60  0000 C CNN
	1    3240 3060
	1    0    0    -1  
$EndComp
$Comp
L HEADER_2x01_PARALLEL J2
U 1 1 5486108C
P 4650 3100
F 0 "J2" H 4650 3000 60  0000 C CNN
F 1 "GPIO199" H 5000 3100 60  0000 C CNN
F 2 "MLAB_hreb:Pin_Header_Straight_2x01" H 4650 3100 60  0001 C CNN
F 3 "" H 4650 3100 60  0000 C CNN
	1    4650 3100
	1    0    0    1   
$EndComp
$Comp
L HEADER_2x01_PARALLEL J3
U 1 1 54861113
P 4650 3290
F 0 "J3" H 4650 3190 60  0000 C CNN
F 1 "GPIO200" H 5000 3290 60  0000 C CNN
F 2 "MLAB_hreb:Pin_Header_Straight_2x01" H 4650 3290 60  0001 C CNN
F 3 "" H 4650 3290 60  0000 C CNN
	1    4650 3290
	1    0    0    1   
$EndComp
$Comp
L HEADER_2x01_PARALLEL J4
U 1 1 54861163
P 4650 3500
F 0 "J4" H 4650 3400 60  0000 C CNN
F 1 "GPIO204" H 5000 3500 60  0000 C CNN
F 2 "MLAB_hreb:Pin_Header_Straight_2x01" H 4650 3500 60  0001 C CNN
F 3 "" H 4650 3500 60  0000 C CNN
	1    4650 3500
	1    0    0    1   
$EndComp
$Comp
L HEADER_2x01_PARALLEL J8
U 1 1 5486130F
P 2750 3500
F 0 "J8" H 2750 3600 60  0000 C CNN
F 1 "UART_TX" H 3100 3500 60  0000 C CNN
F 2 "MLAB_hreb:Pin_Header_Straight_2x01" H 2750 3500 60  0001 C CNN
F 3 "" H 2750 3500 60  0000 C CNN
	1    2750 3500
	-1   0    0    -1  
$EndComp
$Comp
L HEADER_2x01_PARALLEL J7
U 1 1 54861315
P 2750 3350
F 0 "J7" H 2750 3450 60  0000 C CNN
F 1 "UART_RX" H 3100 3350 60  0000 C CNN
F 2 "MLAB_hreb:Pin_Header_Straight_2x01" H 2750 3350 60  0001 C CNN
F 3 "" H 2750 3350 60  0000 C CNN
	1    2750 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4400 3100 4250 3100
Wire Wire Line
	4250 3100 4250 3250
Wire Wire Line
	4250 3250 3850 3250
Wire Wire Line
	4400 3500 4300 3500
Wire Wire Line
	4300 3500 4300 3450
Wire Wire Line
	4300 3450 3850 3450
Wire Wire Line
	3350 3450 3350 3500
Wire Wire Line
	3350 3500 3000 3500
Wire Wire Line
	3000 3350 3350 3350
Wire Wire Line
	4350 3290 4350 3350
Wire Wire Line
	4350 3350 3850 3350
$Comp
L GND #PWR011
U 1 1 54861F1A
P 3910 3600
F 0 "#PWR011" H 3910 3600 30  0001 C CNN
F 1 "GND" H 3910 3530 30  0001 C CNN
F 2 "" H 3910 3600 60  0000 C CNN
F 3 "" H 3910 3600 60  0000 C CNN
	1    3910 3600
	1    0    0    -1  
$EndComp
$Comp
L CONN1_1 J15
U 1 1 54862A8F
P 8500 4700
F 0 "J15" H 8450 4850 50  0000 C CNN
F 1 "M3" H 8550 4750 40  0000 C CNN
F 2 "MLAB_dira:MountingHole_3mm" H 8550 4650 60  0001 C CNN
F 3 "" H 8550 4650 60  0000 C CNN
	1    8500 4700
	1    0    0    -1  
$EndComp
$Comp
L CONN1_1 J14
U 1 1 54862BF8
P 8500 4550
F 0 "J14" H 8450 4700 50  0000 C CNN
F 1 "M3" H 8550 4600 40  0000 C CNN
F 2 "MLAB_dira:MountingHole_3mm" H 8550 4500 60  0001 C CNN
F 3 "" H 8550 4500 60  0000 C CNN
	1    8500 4550
	1    0    0    -1  
$EndComp
$Comp
L CONN1_1 J18
U 1 1 54862E2F
P 8500 5150
F 0 "J18" H 8450 5300 50  0000 C CNN
F 1 "M3" H 8550 5200 40  0000 C CNN
F 2 "MLAB_dira:MountingHole_3mm" H 8550 5100 60  0001 C CNN
F 3 "" H 8550 5100 60  0000 C CNN
	1    8500 5150
	1    0    0    -1  
$EndComp
$Comp
L CONN1_1 J16
U 1 1 54862E35
P 8500 4850
F 0 "J16" H 8450 5000 50  0000 C CNN
F 1 "M3" H 8550 4900 40  0000 C CNN
F 2 "MLAB_dira:MountingHole_3mm" H 8550 4800 60  0001 C CNN
F 3 "" H 8550 4800 60  0000 C CNN
	1    8500 4850
	1    0    0    -1  
$EndComp
$Comp
L CONN1_1 J17
U 1 1 54862E8B
P 8500 5000
F 0 "J17" H 8450 5150 50  0000 C CNN
F 1 "M3" H 8550 5050 40  0000 C CNN
F 2 "MLAB_dira:MountingHole_3mm" H 8550 4950 60  0001 C CNN
F 3 "" H 8550 4950 60  0000 C CNN
	1    8500 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 54863035
P 8100 5250
F 0 "#PWR012" H 8100 5250 30  0001 C CNN
F 1 "GND" H 8100 5180 30  0001 C CNN
F 2 "" H 8100 5250 60  0000 C CNN
F 3 "" H 8100 5250 60  0000 C CNN
	1    8100 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4500 8200 4500
Wire Wire Line
	8200 4650 8100 4650
Connection ~ 8100 4650
Wire Wire Line
	8100 4800 8200 4800
Connection ~ 8100 4800
Wire Wire Line
	8100 4950 8200 4950
Connection ~ 8100 4950
Wire Wire Line
	8100 5100 8200 5100
Connection ~ 8100 5100
Wire Notes Line
	7700 4200 9700 4200
Wire Notes Line
	9700 4200 9700 5700
Wire Notes Line
	9700 5700 7700 5700
Wire Notes Line
	7700 5700 7700 4200
Text Notes 8700 4950 0    60   ~ 0
MECHANICAL HOLES \n3,2mm diameter
Wire Wire Line
	8100 4500 8100 5250
Text Label 6900 3150 0    60   ~ 0
SCLK
Text Label 6940 3470 0    60   ~ 0
#SS
Text Label 7800 3350 0    60   ~ 0
MISO
Text Label 3350 3350 2    60   ~ 0
UART_RX
Text Label 3350 3500 2    60   ~ 0
UART_TX
Text Label 4250 3250 2    60   ~ 0
GPIO199
Text Label 4250 3350 2    60   ~ 0
GPIO200
Text Label 4250 3450 2    60   ~ 0
GPIO204
Text Label 8200 3080 2    60   ~ 0
MOSI
Wire Wire Line
	7150 3350 7150 3510
Wire Wire Line
	7150 3510 6900 3510
Wire Wire Line
	8000 3090 8000 3250
Wire Wire Line
	3850 3550 3910 3550
Wire Wire Line
	3910 3550 3910 3600
Wire Wire Line
	4400 3290 4350 3290
Wire Wire Line
	3350 3550 3280 3550
Wire Wire Line
	3350 3250 3240 3250
Wire Wire Line
	3240 3250 3240 3060
$EndSCHEMATC