/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using MPLAB(c) Code Configurator

  @Description:
    This header file provides implementations for pin APIs for all pins selected in the GUI.
    Generation Information :
        Product Revision  :  MPLAB(c) Code Configurator - 4.15.3
        Device            :  PIC16LF1519
        Version           :  1.01
    The generated drivers are tested against the following:
        Compiler          :  XC8 1.35
        MPLAB             :  MPLAB X 3.40

    Copyright (c) 2013 - 2015 released Microchip Technology Inc.  All rights reserved.

    Microchip licenses to you the right to use, modify, copy and distribute
    Software only when embedded on a Microchip microcontroller or digital signal
    controller that is integrated into your product or third party product
    (pursuant to the sublicense terms in the accompanying license agreement).

    You should refer to the license agreement accompanying this Software for
    additional information regarding your rights and obligations.

    SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
    EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
    MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
    IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
    CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
    OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
    INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
    CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
    SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
    (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.

*/


#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set RA0 aliases
#define RA0_TRIS               TRISAbits.TRISA0
#define RA0_LAT                LATAbits.LATA0
#define RA0_PORT               PORTAbits.RA0
#define RA0_ANS                ANSELAbits.ANSA0
#define RA0_SetHigh()            do { LATAbits.LATA0 = 1; } while(0)
#define RA0_SetLow()             do { LATAbits.LATA0 = 0; } while(0)
#define RA0_Toggle()             do { LATAbits.LATA0 = ~LATAbits.LATA0; } while(0)
#define RA0_GetValue()           PORTAbits.RA0
#define RA0_SetDigitalInput()    do { TRISAbits.TRISA0 = 1; } while(0)
#define RA0_SetDigitalOutput()   do { TRISAbits.TRISA0 = 0; } while(0)
#define RA0_SetAnalogMode()  do { ANSELAbits.ANSA0 = 1; } while(0)
#define RA0_SetDigitalMode() do { ANSELAbits.ANSA0 = 0; } while(0)

// get/set RA1 aliases
#define RA1_TRIS               TRISAbits.TRISA1
#define RA1_LAT                LATAbits.LATA1
#define RA1_PORT               PORTAbits.RA1
#define RA1_ANS                ANSELAbits.ANSA1
#define RA1_SetHigh()            do { LATAbits.LATA1 = 1; } while(0)
#define RA1_SetLow()             do { LATAbits.LATA1 = 0; } while(0)
#define RA1_Toggle()             do { LATAbits.LATA1 = ~LATAbits.LATA1; } while(0)
#define RA1_GetValue()           PORTAbits.RA1
#define RA1_SetDigitalInput()    do { TRISAbits.TRISA1 = 1; } while(0)
#define RA1_SetDigitalOutput()   do { TRISAbits.TRISA1 = 0; } while(0)
#define RA1_SetAnalogMode()  do { ANSELAbits.ANSA1 = 1; } while(0)
#define RA1_SetDigitalMode() do { ANSELAbits.ANSA1 = 0; } while(0)

// get/set RA2 aliases
#define RA2_TRIS               TRISAbits.TRISA2
#define RA2_LAT                LATAbits.LATA2
#define RA2_PORT               PORTAbits.RA2
#define RA2_ANS                ANSELAbits.ANSA2
#define RA2_SetHigh()            do { LATAbits.LATA2 = 1; } while(0)
#define RA2_SetLow()             do { LATAbits.LATA2 = 0; } while(0)
#define RA2_Toggle()             do { LATAbits.LATA2 = ~LATAbits.LATA2; } while(0)
#define RA2_GetValue()           PORTAbits.RA2
#define RA2_SetDigitalInput()    do { TRISAbits.TRISA2 = 1; } while(0)
#define RA2_SetDigitalOutput()   do { TRISAbits.TRISA2 = 0; } while(0)
#define RA2_SetAnalogMode()  do { ANSELAbits.ANSA2 = 1; } while(0)
#define RA2_SetDigitalMode() do { ANSELAbits.ANSA2 = 0; } while(0)

// get/set RA3 aliases
#define RA3_TRIS               TRISAbits.TRISA3
#define RA3_LAT                LATAbits.LATA3
#define RA3_PORT               PORTAbits.RA3
#define RA3_ANS                ANSELAbits.ANSA3
#define RA3_SetHigh()            do { LATAbits.LATA3 = 1; } while(0)
#define RA3_SetLow()             do { LATAbits.LATA3 = 0; } while(0)
#define RA3_Toggle()             do { LATAbits.LATA3 = ~LATAbits.LATA3; } while(0)
#define RA3_GetValue()           PORTAbits.RA3
#define RA3_SetDigitalInput()    do { TRISAbits.TRISA3 = 1; } while(0)
#define RA3_SetDigitalOutput()   do { TRISAbits.TRISA3 = 0; } while(0)
#define RA3_SetAnalogMode()  do { ANSELAbits.ANSA3 = 1; } while(0)
#define RA3_SetDigitalMode() do { ANSELAbits.ANSA3 = 0; } while(0)

// get/set RA4 aliases
#define RA4_TRIS               TRISAbits.TRISA4
#define RA4_LAT                LATAbits.LATA4
#define RA4_PORT               PORTAbits.RA4
#define RA4_SetHigh()            do { LATAbits.LATA4 = 1; } while(0)
#define RA4_SetLow()             do { LATAbits.LATA4 = 0; } while(0)
#define RA4_Toggle()             do { LATAbits.LATA4 = ~LATAbits.LATA4; } while(0)
#define RA4_GetValue()           PORTAbits.RA4
#define RA4_SetDigitalInput()    do { TRISAbits.TRISA4 = 1; } while(0)
#define RA4_SetDigitalOutput()   do { TRISAbits.TRISA4 = 0; } while(0)

// get/set RA5 aliases
#define RA5_TRIS               TRISAbits.TRISA5
#define RA5_LAT                LATAbits.LATA5
#define RA5_PORT               PORTAbits.RA5
#define RA5_ANS                ANSELAbits.ANSA5
#define RA5_SetHigh()            do { LATAbits.LATA5 = 1; } while(0)
#define RA5_SetLow()             do { LATAbits.LATA5 = 0; } while(0)
#define RA5_Toggle()             do { LATAbits.LATA5 = ~LATAbits.LATA5; } while(0)
#define RA5_GetValue()           PORTAbits.RA5
#define RA5_SetDigitalInput()    do { TRISAbits.TRISA5 = 1; } while(0)
#define RA5_SetDigitalOutput()   do { TRISAbits.TRISA5 = 0; } while(0)
#define RA5_SetAnalogMode()  do { ANSELAbits.ANSA5 = 1; } while(0)
#define RA5_SetDigitalMode() do { ANSELAbits.ANSA5 = 0; } while(0)

// get/set RB0 aliases
#define RB0_TRIS               TRISBbits.TRISB0
#define RB0_LAT                LATBbits.LATB0
#define RB0_PORT               PORTBbits.RB0
#define RB0_WPU                WPUBbits.WPUB0
#define RB0_ANS                ANSELBbits.ANSB0
#define RB0_SetHigh()            do { LATBbits.LATB0 = 1; } while(0)
#define RB0_SetLow()             do { LATBbits.LATB0 = 0; } while(0)
#define RB0_Toggle()             do { LATBbits.LATB0 = ~LATBbits.LATB0; } while(0)
#define RB0_GetValue()           PORTBbits.RB0
#define RB0_SetDigitalInput()    do { TRISBbits.TRISB0 = 1; } while(0)
#define RB0_SetDigitalOutput()   do { TRISBbits.TRISB0 = 0; } while(0)
#define RB0_SetPullup()      do { WPUBbits.WPUB0 = 1; } while(0)
#define RB0_ResetPullup()    do { WPUBbits.WPUB0 = 0; } while(0)
#define RB0_SetAnalogMode()  do { ANSELBbits.ANSB0 = 1; } while(0)
#define RB0_SetDigitalMode() do { ANSELBbits.ANSB0 = 0; } while(0)

// get/set RB1 aliases
#define RB1_TRIS               TRISBbits.TRISB1
#define RB1_LAT                LATBbits.LATB1
#define RB1_PORT               PORTBbits.RB1
#define RB1_WPU                WPUBbits.WPUB1
#define RB1_ANS                ANSELBbits.ANSB1
#define RB1_SetHigh()            do { LATBbits.LATB1 = 1; } while(0)
#define RB1_SetLow()             do { LATBbits.LATB1 = 0; } while(0)
#define RB1_Toggle()             do { LATBbits.LATB1 = ~LATBbits.LATB1; } while(0)
#define RB1_GetValue()           PORTBbits.RB1
#define RB1_SetDigitalInput()    do { TRISBbits.TRISB1 = 1; } while(0)
#define RB1_SetDigitalOutput()   do { TRISBbits.TRISB1 = 0; } while(0)
#define RB1_SetPullup()      do { WPUBbits.WPUB1 = 1; } while(0)
#define RB1_ResetPullup()    do { WPUBbits.WPUB1 = 0; } while(0)
#define RB1_SetAnalogMode()  do { ANSELBbits.ANSB1 = 1; } while(0)
#define RB1_SetDigitalMode() do { ANSELBbits.ANSB1 = 0; } while(0)

// get/set RB2 aliases
#define RB2_TRIS               TRISBbits.TRISB2
#define RB2_LAT                LATBbits.LATB2
#define RB2_PORT               PORTBbits.RB2
#define RB2_WPU                WPUBbits.WPUB2
#define RB2_ANS                ANSELBbits.ANSB2
#define RB2_SetHigh()            do { LATBbits.LATB2 = 1; } while(0)
#define RB2_SetLow()             do { LATBbits.LATB2 = 0; } while(0)
#define RB2_Toggle()             do { LATBbits.LATB2 = ~LATBbits.LATB2; } while(0)
#define RB2_GetValue()           PORTBbits.RB2
#define RB2_SetDigitalInput()    do { TRISBbits.TRISB2 = 1; } while(0)
#define RB2_SetDigitalOutput()   do { TRISBbits.TRISB2 = 0; } while(0)
#define RB2_SetPullup()      do { WPUBbits.WPUB2 = 1; } while(0)
#define RB2_ResetPullup()    do { WPUBbits.WPUB2 = 0; } while(0)
#define RB2_SetAnalogMode()  do { ANSELBbits.ANSB2 = 1; } while(0)
#define RB2_SetDigitalMode() do { ANSELBbits.ANSB2 = 0; } while(0)

// get/set RB3 aliases
#define RB3_TRIS               TRISBbits.TRISB3
#define RB3_LAT                LATBbits.LATB3
#define RB3_PORT               PORTBbits.RB3
#define RB3_WPU                WPUBbits.WPUB3
#define RB3_ANS                ANSELBbits.ANSB3
#define RB3_SetHigh()            do { LATBbits.LATB3 = 1; } while(0)
#define RB3_SetLow()             do { LATBbits.LATB3 = 0; } while(0)
#define RB3_Toggle()             do { LATBbits.LATB3 = ~LATBbits.LATB3; } while(0)
#define RB3_GetValue()           PORTBbits.RB3
#define RB3_SetDigitalInput()    do { TRISBbits.TRISB3 = 1; } while(0)
#define RB3_SetDigitalOutput()   do { TRISBbits.TRISB3 = 0; } while(0)
#define RB3_SetPullup()      do { WPUBbits.WPUB3 = 1; } while(0)
#define RB3_ResetPullup()    do { WPUBbits.WPUB3 = 0; } while(0)
#define RB3_SetAnalogMode()  do { ANSELBbits.ANSB3 = 1; } while(0)
#define RB3_SetDigitalMode() do { ANSELBbits.ANSB3 = 0; } while(0)

// get/set RB4 aliases
#define RB4_TRIS               TRISBbits.TRISB4
#define RB4_LAT                LATBbits.LATB4
#define RB4_PORT               PORTBbits.RB4
#define RB4_WPU                WPUBbits.WPUB4
#define RB4_ANS                ANSELBbits.ANSB4
#define RB4_SetHigh()            do { LATBbits.LATB4 = 1; } while(0)
#define RB4_SetLow()             do { LATBbits.LATB4 = 0; } while(0)
#define RB4_Toggle()             do { LATBbits.LATB4 = ~LATBbits.LATB4; } while(0)
#define RB4_GetValue()           PORTBbits.RB4
#define RB4_SetDigitalInput()    do { TRISBbits.TRISB4 = 1; } while(0)
#define RB4_SetDigitalOutput()   do { TRISBbits.TRISB4 = 0; } while(0)
#define RB4_SetPullup()      do { WPUBbits.WPUB4 = 1; } while(0)
#define RB4_ResetPullup()    do { WPUBbits.WPUB4 = 0; } while(0)
#define RB4_SetAnalogMode()  do { ANSELBbits.ANSB4 = 1; } while(0)
#define RB4_SetDigitalMode() do { ANSELBbits.ANSB4 = 0; } while(0)

// get/set RB5 aliases
#define RB5_TRIS               TRISBbits.TRISB5
#define RB5_LAT                LATBbits.LATB5
#define RB5_PORT               PORTBbits.RB5
#define RB5_WPU                WPUBbits.WPUB5
#define RB5_ANS                ANSELBbits.ANSB5
#define RB5_SetHigh()            do { LATBbits.LATB5 = 1; } while(0)
#define RB5_SetLow()             do { LATBbits.LATB5 = 0; } while(0)
#define RB5_Toggle()             do { LATBbits.LATB5 = ~LATBbits.LATB5; } while(0)
#define RB5_GetValue()           PORTBbits.RB5
#define RB5_SetDigitalInput()    do { TRISBbits.TRISB5 = 1; } while(0)
#define RB5_SetDigitalOutput()   do { TRISBbits.TRISB5 = 0; } while(0)
#define RB5_SetPullup()      do { WPUBbits.WPUB5 = 1; } while(0)
#define RB5_ResetPullup()    do { WPUBbits.WPUB5 = 0; } while(0)
#define RB5_SetAnalogMode()  do { ANSELBbits.ANSB5 = 1; } while(0)
#define RB5_SetDigitalMode() do { ANSELBbits.ANSB5 = 0; } while(0)

// get/set RC0 procedures
#define RC0_SetHigh()    do { LATCbits.LATC0 = 1; } while(0)
#define RC0_SetLow()   do { LATCbits.LATC0 = 0; } while(0)
#define RC0_Toggle()   do { LATCbits.LATC0 = ~LATCbits.LATC0; } while(0)
#define RC0_GetValue()         PORTCbits.RC0
#define RC0_SetDigitalInput()   do { TRISCbits.TRISC0 = 1; } while(0)
#define RC0_SetDigitalOutput()  do { TRISCbits.TRISC0 = 0; } while(0)
#define RC0_SetAnalogMode() do { ANSELCbits.ANSC0 = 1; } while(0)
#define RC0_SetDigitalMode()do { ANSELCbits.ANSC0 = 0; } while(0)

// get/set RC2 aliases
#define RC2_TRIS               TRISCbits.TRISC2
#define RC2_LAT                LATCbits.LATC2
#define RC2_PORT               PORTCbits.RC2
#define RC2_ANS                ANSELCbits.ANSC2
#define RC2_SetHigh()            do { LATCbits.LATC2 = 1; } while(0)
#define RC2_SetLow()             do { LATCbits.LATC2 = 0; } while(0)
#define RC2_Toggle()             do { LATCbits.LATC2 = ~LATCbits.LATC2; } while(0)
#define RC2_GetValue()           PORTCbits.RC2
#define RC2_SetDigitalInput()    do { TRISCbits.TRISC2 = 1; } while(0)
#define RC2_SetDigitalOutput()   do { TRISCbits.TRISC2 = 0; } while(0)
#define RC2_SetAnalogMode()  do { ANSELCbits.ANSC2 = 1; } while(0)
#define RC2_SetDigitalMode() do { ANSELCbits.ANSC2 = 0; } while(0)

// get/set RC3 aliases
#define RC3_TRIS               TRISCbits.TRISC3
#define RC3_LAT                LATCbits.LATC3
#define RC3_PORT               PORTCbits.RC3
#define RC3_ANS                ANSELCbits.ANSC3
#define RC3_SetHigh()            do { LATCbits.LATC3 = 1; } while(0)
#define RC3_SetLow()             do { LATCbits.LATC3 = 0; } while(0)
#define RC3_Toggle()             do { LATCbits.LATC3 = ~LATCbits.LATC3; } while(0)
#define RC3_GetValue()           PORTCbits.RC3
#define RC3_SetDigitalInput()    do { TRISCbits.TRISC3 = 1; } while(0)
#define RC3_SetDigitalOutput()   do { TRISCbits.TRISC3 = 0; } while(0)
#define RC3_SetAnalogMode()  do { ANSELCbits.ANSC3 = 1; } while(0)
#define RC3_SetDigitalMode() do { ANSELCbits.ANSC3 = 0; } while(0)

// get/set RC4 aliases
#define RC4_TRIS               TRISCbits.TRISC4
#define RC4_LAT                LATCbits.LATC4
#define RC4_PORT               PORTCbits.RC4
#define RC4_ANS                ANSELCbits.ANSC4
#define RC4_SetHigh()            do { LATCbits.LATC4 = 1; } while(0)
#define RC4_SetLow()             do { LATCbits.LATC4 = 0; } while(0)
#define RC4_Toggle()             do { LATCbits.LATC4 = ~LATCbits.LATC4; } while(0)
#define RC4_GetValue()           PORTCbits.RC4
#define RC4_SetDigitalInput()    do { TRISCbits.TRISC4 = 1; } while(0)
#define RC4_SetDigitalOutput()   do { TRISCbits.TRISC4 = 0; } while(0)
#define RC4_SetAnalogMode()  do { ANSELCbits.ANSC4 = 1; } while(0)
#define RC4_SetDigitalMode() do { ANSELCbits.ANSC4 = 0; } while(0)

// get/set RC5 aliases
#define RC5_TRIS               TRISCbits.TRISC5
#define RC5_LAT                LATCbits.LATC5
#define RC5_PORT               PORTCbits.RC5
#define RC5_ANS                ANSELCbits.ANSC5
#define RC5_SetHigh()            do { LATCbits.LATC5 = 1; } while(0)
#define RC5_SetLow()             do { LATCbits.LATC5 = 0; } while(0)
#define RC5_Toggle()             do { LATCbits.LATC5 = ~LATCbits.LATC5; } while(0)
#define RC5_GetValue()           PORTCbits.RC5
#define RC5_SetDigitalInput()    do { TRISCbits.TRISC5 = 1; } while(0)
#define RC5_SetDigitalOutput()   do { TRISCbits.TRISC5 = 0; } while(0)
#define RC5_SetAnalogMode()  do { ANSELCbits.ANSC5 = 1; } while(0)
#define RC5_SetDigitalMode() do { ANSELCbits.ANSC5 = 0; } while(0)

// get/set RC6 aliases
#define RC6_TRIS               TRISCbits.TRISC6
#define RC6_LAT                LATCbits.LATC6
#define RC6_PORT               PORTCbits.RC6
#define RC6_ANS                ANSELCbits.ANSC6
#define RC6_SetHigh()            do { LATCbits.LATC6 = 1; } while(0)
#define RC6_SetLow()             do { LATCbits.LATC6 = 0; } while(0)
#define RC6_Toggle()             do { LATCbits.LATC6 = ~LATCbits.LATC6; } while(0)
#define RC6_GetValue()           PORTCbits.RC6
#define RC6_SetDigitalInput()    do { TRISCbits.TRISC6 = 1; } while(0)
#define RC6_SetDigitalOutput()   do { TRISCbits.TRISC6 = 0; } while(0)
#define RC6_SetAnalogMode()  do { ANSELCbits.ANSC6 = 1; } while(0)
#define RC6_SetDigitalMode() do { ANSELCbits.ANSC6 = 0; } while(0)

// get/set RC7 aliases
#define RC7_TRIS               TRISCbits.TRISC7
#define RC7_LAT                LATCbits.LATC7
#define RC7_PORT               PORTCbits.RC7
#define RC7_ANS                ANSELCbits.ANSC7
#define RC7_SetHigh()            do { LATCbits.LATC7 = 1; } while(0)
#define RC7_SetLow()             do { LATCbits.LATC7 = 0; } while(0)
#define RC7_Toggle()             do { LATCbits.LATC7 = ~LATCbits.LATC7; } while(0)
#define RC7_GetValue()           PORTCbits.RC7
#define RC7_SetDigitalInput()    do { TRISCbits.TRISC7 = 1; } while(0)
#define RC7_SetDigitalOutput()   do { TRISCbits.TRISC7 = 0; } while(0)
#define RC7_SetAnalogMode()  do { ANSELCbits.ANSC7 = 1; } while(0)
#define RC7_SetDigitalMode() do { ANSELCbits.ANSC7 = 0; } while(0)

// get/set RD0 aliases
#define RD0_TRIS               TRISDbits.TRISD0
#define RD0_LAT                LATDbits.LATD0
#define RD0_PORT               PORTDbits.RD0
#define RD0_ANS                ANSELDbits.ANSD0
#define RD0_SetHigh()            do { LATDbits.LATD0 = 1; } while(0)
#define RD0_SetLow()             do { LATDbits.LATD0 = 0; } while(0)
#define RD0_Toggle()             do { LATDbits.LATD0 = ~LATDbits.LATD0; } while(0)
#define RD0_GetValue()           PORTDbits.RD0
#define RD0_SetDigitalInput()    do { TRISDbits.TRISD0 = 1; } while(0)
#define RD0_SetDigitalOutput()   do { TRISDbits.TRISD0 = 0; } while(0)
#define RD0_SetAnalogMode()  do { ANSELDbits.ANSD0 = 1; } while(0)
#define RD0_SetDigitalMode() do { ANSELDbits.ANSD0 = 0; } while(0)

// get/set RD1 aliases
#define RD1_TRIS               TRISDbits.TRISD1
#define RD1_LAT                LATDbits.LATD1
#define RD1_PORT               PORTDbits.RD1
#define RD1_ANS                ANSELDbits.ANSD1
#define RD1_SetHigh()            do { LATDbits.LATD1 = 1; } while(0)
#define RD1_SetLow()             do { LATDbits.LATD1 = 0; } while(0)
#define RD1_Toggle()             do { LATDbits.LATD1 = ~LATDbits.LATD1; } while(0)
#define RD1_GetValue()           PORTDbits.RD1
#define RD1_SetDigitalInput()    do { TRISDbits.TRISD1 = 1; } while(0)
#define RD1_SetDigitalOutput()   do { TRISDbits.TRISD1 = 0; } while(0)
#define RD1_SetAnalogMode()  do { ANSELDbits.ANSD1 = 1; } while(0)
#define RD1_SetDigitalMode() do { ANSELDbits.ANSD1 = 0; } while(0)

// get/set RD2 aliases
#define RD2_TRIS               TRISDbits.TRISD2
#define RD2_LAT                LATDbits.LATD2
#define RD2_PORT               PORTDbits.RD2
#define RD2_ANS                ANSELDbits.ANSD2
#define RD2_SetHigh()            do { LATDbits.LATD2 = 1; } while(0)
#define RD2_SetLow()             do { LATDbits.LATD2 = 0; } while(0)
#define RD2_Toggle()             do { LATDbits.LATD2 = ~LATDbits.LATD2; } while(0)
#define RD2_GetValue()           PORTDbits.RD2
#define RD2_SetDigitalInput()    do { TRISDbits.TRISD2 = 1; } while(0)
#define RD2_SetDigitalOutput()   do { TRISDbits.TRISD2 = 0; } while(0)
#define RD2_SetAnalogMode()  do { ANSELDbits.ANSD2 = 1; } while(0)
#define RD2_SetDigitalMode() do { ANSELDbits.ANSD2 = 0; } while(0)

// get/set RD3 aliases
#define RD3_TRIS               TRISDbits.TRISD3
#define RD3_LAT                LATDbits.LATD3
#define RD3_PORT               PORTDbits.RD3
#define RD3_ANS                ANSELDbits.ANSD3
#define RD3_SetHigh()            do { LATDbits.LATD3 = 1; } while(0)
#define RD3_SetLow()             do { LATDbits.LATD3 = 0; } while(0)
#define RD3_Toggle()             do { LATDbits.LATD3 = ~LATDbits.LATD3; } while(0)
#define RD3_GetValue()           PORTDbits.RD3
#define RD3_SetDigitalInput()    do { TRISDbits.TRISD3 = 1; } while(0)
#define RD3_SetDigitalOutput()   do { TRISDbits.TRISD3 = 0; } while(0)
#define RD3_SetAnalogMode()  do { ANSELDbits.ANSD3 = 1; } while(0)
#define RD3_SetDigitalMode() do { ANSELDbits.ANSD3 = 0; } while(0)

// get/set RD4 aliases
#define RD4_TRIS               TRISDbits.TRISD4
#define RD4_LAT                LATDbits.LATD4
#define RD4_PORT               PORTDbits.RD4
#define RD4_ANS                ANSELDbits.ANSD4
#define RD4_SetHigh()            do { LATDbits.LATD4 = 1; } while(0)
#define RD4_SetLow()             do { LATDbits.LATD4 = 0; } while(0)
#define RD4_Toggle()             do { LATDbits.LATD4 = ~LATDbits.LATD4; } while(0)
#define RD4_GetValue()           PORTDbits.RD4
#define RD4_SetDigitalInput()    do { TRISDbits.TRISD4 = 1; } while(0)
#define RD4_SetDigitalOutput()   do { TRISDbits.TRISD4 = 0; } while(0)
#define RD4_SetAnalogMode()  do { ANSELDbits.ANSD4 = 1; } while(0)
#define RD4_SetDigitalMode() do { ANSELDbits.ANSD4 = 0; } while(0)

// get/set RD5 aliases
#define RD5_TRIS               TRISDbits.TRISD5
#define RD5_LAT                LATDbits.LATD5
#define RD5_PORT               PORTDbits.RD5
#define RD5_ANS                ANSELDbits.ANSD5
#define RD5_SetHigh()            do { LATDbits.LATD5 = 1; } while(0)
#define RD5_SetLow()             do { LATDbits.LATD5 = 0; } while(0)
#define RD5_Toggle()             do { LATDbits.LATD5 = ~LATDbits.LATD5; } while(0)
#define RD5_GetValue()           PORTDbits.RD5
#define RD5_SetDigitalInput()    do { TRISDbits.TRISD5 = 1; } while(0)
#define RD5_SetDigitalOutput()   do { TRISDbits.TRISD5 = 0; } while(0)
#define RD5_SetAnalogMode()  do { ANSELDbits.ANSD5 = 1; } while(0)
#define RD5_SetDigitalMode() do { ANSELDbits.ANSD5 = 0; } while(0)

// get/set RD6 aliases
#define RD6_TRIS               TRISDbits.TRISD6
#define RD6_LAT                LATDbits.LATD6
#define RD6_PORT               PORTDbits.RD6
#define RD6_ANS                ANSELDbits.ANSD6
#define RD6_SetHigh()            do { LATDbits.LATD6 = 1; } while(0)
#define RD6_SetLow()             do { LATDbits.LATD6 = 0; } while(0)
#define RD6_Toggle()             do { LATDbits.LATD6 = ~LATDbits.LATD6; } while(0)
#define RD6_GetValue()           PORTDbits.RD6
#define RD6_SetDigitalInput()    do { TRISDbits.TRISD6 = 1; } while(0)
#define RD6_SetDigitalOutput()   do { TRISDbits.TRISD6 = 0; } while(0)
#define RD6_SetAnalogMode()  do { ANSELDbits.ANSD6 = 1; } while(0)
#define RD6_SetDigitalMode() do { ANSELDbits.ANSD6 = 0; } while(0)

// get/set RD7 aliases
#define RD7_TRIS               TRISDbits.TRISD7
#define RD7_LAT                LATDbits.LATD7
#define RD7_PORT               PORTDbits.RD7
#define RD7_ANS                ANSELDbits.ANSD7
#define RD7_SetHigh()            do { LATDbits.LATD7 = 1; } while(0)
#define RD7_SetLow()             do { LATDbits.LATD7 = 0; } while(0)
#define RD7_Toggle()             do { LATDbits.LATD7 = ~LATDbits.LATD7; } while(0)
#define RD7_GetValue()           PORTDbits.RD7
#define RD7_SetDigitalInput()    do { TRISDbits.TRISD7 = 1; } while(0)
#define RD7_SetDigitalOutput()   do { TRISDbits.TRISD7 = 0; } while(0)
#define RD7_SetAnalogMode()  do { ANSELDbits.ANSD7 = 1; } while(0)
#define RD7_SetDigitalMode() do { ANSELDbits.ANSD7 = 0; } while(0)

// get/set RE0 aliases
#define RE0_TRIS               TRISEbits.TRISE0
#define RE0_LAT                LATEbits.LATE0
#define RE0_PORT               PORTEbits.RE0
#define RE0_ANS                ANSELEbits.ANSE0
#define RE0_SetHigh()            do { LATEbits.LATE0 = 1; } while(0)
#define RE0_SetLow()             do { LATEbits.LATE0 = 0; } while(0)
#define RE0_Toggle()             do { LATEbits.LATE0 = ~LATEbits.LATE0; } while(0)
#define RE0_GetValue()           PORTEbits.RE0
#define RE0_SetDigitalInput()    do { TRISEbits.TRISE0 = 1; } while(0)
#define RE0_SetDigitalOutput()   do { TRISEbits.TRISE0 = 0; } while(0)
#define RE0_SetAnalogMode()  do { ANSELEbits.ANSE0 = 1; } while(0)
#define RE0_SetDigitalMode() do { ANSELEbits.ANSE0 = 0; } while(0)

// get/set RE1 aliases
#define RE1_TRIS               TRISEbits.TRISE1
#define RE1_LAT                LATEbits.LATE1
#define RE1_PORT               PORTEbits.RE1
#define RE1_ANS                ANSELEbits.ANSE1
#define RE1_SetHigh()            do { LATEbits.LATE1 = 1; } while(0)
#define RE1_SetLow()             do { LATEbits.LATE1 = 0; } while(0)
#define RE1_Toggle()             do { LATEbits.LATE1 = ~LATEbits.LATE1; } while(0)
#define RE1_GetValue()           PORTEbits.RE1
#define RE1_SetDigitalInput()    do { TRISEbits.TRISE1 = 1; } while(0)
#define RE1_SetDigitalOutput()   do { TRISEbits.TRISE1 = 0; } while(0)
#define RE1_SetAnalogMode()  do { ANSELEbits.ANSE1 = 1; } while(0)
#define RE1_SetDigitalMode() do { ANSELEbits.ANSE1 = 0; } while(0)

// get/set RE2 aliases
#define RE2_TRIS               TRISEbits.TRISE2
#define RE2_LAT                LATEbits.LATE2
#define RE2_PORT               PORTEbits.RE2
#define RE2_ANS                ANSELEbits.ANSE2
#define RE2_SetHigh()            do { LATEbits.LATE2 = 1; } while(0)
#define RE2_SetLow()             do { LATEbits.LATE2 = 0; } while(0)
#define RE2_Toggle()             do { LATEbits.LATE2 = ~LATEbits.LATE2; } while(0)
#define RE2_GetValue()           PORTEbits.RE2
#define RE2_SetDigitalInput()    do { TRISEbits.TRISE2 = 1; } while(0)
#define RE2_SetDigitalOutput()   do { TRISEbits.TRISE2 = 0; } while(0)
#define RE2_SetAnalogMode()  do { ANSELEbits.ANSE2 = 1; } while(0)
#define RE2_SetDigitalMode() do { ANSELEbits.ANSE2 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);

/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handling routine
 * @Example
    PIN_MANAGER_IOC();
 */
void PIN_MANAGER_IOC(void);


/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handler for the IOCBF0 pin functionality
 * @Example
    IOCBF0_ISR();
 */
void IOCBF0_ISR(void);

/**
  @Summary
    Interrupt Handler Setter for IOCBF0 pin interrupt-on-change functionality

  @Description
    Allows selecting an interrupt handler for IOCBF0 at application runtime
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    InterruptHandler function pointer.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF0_SetInterruptHandler(MyInterruptHandler);

*/
void IOCBF0_SetInterruptHandler(void* InterruptHandler);

/**
  @Summary
    Dynamic Interrupt Handler for IOCBF0 pin

  @Description
    This is a dynamic interrupt handler to be used together with the IOCBF0_SetInterruptHandler() method.
    This handler is called every time the IOCBF0 ISR is executed and allows any function to be registered at runtime.
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF0_SetInterruptHandler(IOCBF0_InterruptHandler);

*/
extern void (*IOCBF0_InterruptHandler)(void);

/**
  @Summary
    Default Interrupt Handler for IOCBF0 pin

  @Description
    This is a predefined interrupt handler to be used together with the IOCBF0_SetInterruptHandler() method.
    This handler is called every time the IOCBF0 ISR is executed. 
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF0_SetInterruptHandler(IOCBF0_DefaultInterruptHandler);

*/
void IOCBF0_DefaultInterruptHandler(void);


/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handler for the IOCBF1 pin functionality
 * @Example
    IOCBF1_ISR();
 */
void IOCBF1_ISR(void);

/**
  @Summary
    Interrupt Handler Setter for IOCBF1 pin interrupt-on-change functionality

  @Description
    Allows selecting an interrupt handler for IOCBF1 at application runtime
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    InterruptHandler function pointer.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF1_SetInterruptHandler(MyInterruptHandler);

*/
void IOCBF1_SetInterruptHandler(void* InterruptHandler);

/**
  @Summary
    Dynamic Interrupt Handler for IOCBF1 pin

  @Description
    This is a dynamic interrupt handler to be used together with the IOCBF1_SetInterruptHandler() method.
    This handler is called every time the IOCBF1 ISR is executed and allows any function to be registered at runtime.
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF1_SetInterruptHandler(IOCBF1_InterruptHandler);

*/
extern void (*IOCBF1_InterruptHandler)(void);

/**
  @Summary
    Default Interrupt Handler for IOCBF1 pin

  @Description
    This is a predefined interrupt handler to be used together with the IOCBF1_SetInterruptHandler() method.
    This handler is called every time the IOCBF1 ISR is executed. 
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF1_SetInterruptHandler(IOCBF1_DefaultInterruptHandler);

*/
void IOCBF1_DefaultInterruptHandler(void);


/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handler for the IOCBF2 pin functionality
 * @Example
    IOCBF2_ISR();
 */
void IOCBF2_ISR(void);

/**
  @Summary
    Interrupt Handler Setter for IOCBF2 pin interrupt-on-change functionality

  @Description
    Allows selecting an interrupt handler for IOCBF2 at application runtime
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    InterruptHandler function pointer.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF2_SetInterruptHandler(MyInterruptHandler);

*/
void IOCBF2_SetInterruptHandler(void* InterruptHandler);

/**
  @Summary
    Dynamic Interrupt Handler for IOCBF2 pin

  @Description
    This is a dynamic interrupt handler to be used together with the IOCBF2_SetInterruptHandler() method.
    This handler is called every time the IOCBF2 ISR is executed and allows any function to be registered at runtime.
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF2_SetInterruptHandler(IOCBF2_InterruptHandler);

*/
extern void (*IOCBF2_InterruptHandler)(void);

/**
  @Summary
    Default Interrupt Handler for IOCBF2 pin

  @Description
    This is a predefined interrupt handler to be used together with the IOCBF2_SetInterruptHandler() method.
    This handler is called every time the IOCBF2 ISR is executed. 
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF2_SetInterruptHandler(IOCBF2_DefaultInterruptHandler);

*/
void IOCBF2_DefaultInterruptHandler(void);


/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handler for the IOCBF3 pin functionality
 * @Example
    IOCBF3_ISR();
 */
void IOCBF3_ISR(void);

/**
  @Summary
    Interrupt Handler Setter for IOCBF3 pin interrupt-on-change functionality

  @Description
    Allows selecting an interrupt handler for IOCBF3 at application runtime
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    InterruptHandler function pointer.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF3_SetInterruptHandler(MyInterruptHandler);

*/
void IOCBF3_SetInterruptHandler(void* InterruptHandler);

/**
  @Summary
    Dynamic Interrupt Handler for IOCBF3 pin

  @Description
    This is a dynamic interrupt handler to be used together with the IOCBF3_SetInterruptHandler() method.
    This handler is called every time the IOCBF3 ISR is executed and allows any function to be registered at runtime.
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF3_SetInterruptHandler(IOCBF3_InterruptHandler);

*/
extern void (*IOCBF3_InterruptHandler)(void);

/**
  @Summary
    Default Interrupt Handler for IOCBF3 pin

  @Description
    This is a predefined interrupt handler to be used together with the IOCBF3_SetInterruptHandler() method.
    This handler is called every time the IOCBF3 ISR is executed. 
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF3_SetInterruptHandler(IOCBF3_DefaultInterruptHandler);

*/
void IOCBF3_DefaultInterruptHandler(void);


/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handler for the IOCBF4 pin functionality
 * @Example
    IOCBF4_ISR();
 */
void IOCBF4_ISR(void);

/**
  @Summary
    Interrupt Handler Setter for IOCBF4 pin interrupt-on-change functionality

  @Description
    Allows selecting an interrupt handler for IOCBF4 at application runtime
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    InterruptHandler function pointer.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF4_SetInterruptHandler(MyInterruptHandler);

*/
void IOCBF4_SetInterruptHandler(void* InterruptHandler);

/**
  @Summary
    Dynamic Interrupt Handler for IOCBF4 pin

  @Description
    This is a dynamic interrupt handler to be used together with the IOCBF4_SetInterruptHandler() method.
    This handler is called every time the IOCBF4 ISR is executed and allows any function to be registered at runtime.
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF4_SetInterruptHandler(IOCBF4_InterruptHandler);

*/
extern void (*IOCBF4_InterruptHandler)(void);

/**
  @Summary
    Default Interrupt Handler for IOCBF4 pin

  @Description
    This is a predefined interrupt handler to be used together with the IOCBF4_SetInterruptHandler() method.
    This handler is called every time the IOCBF4 ISR is executed. 
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF4_SetInterruptHandler(IOCBF4_DefaultInterruptHandler);

*/
void IOCBF4_DefaultInterruptHandler(void);


/**
 * @Param
    none
 * @Returns
    none
 * @Description
    Interrupt on Change Handler for the IOCBF5 pin functionality
 * @Example
    IOCBF5_ISR();
 */
void IOCBF5_ISR(void);

/**
  @Summary
    Interrupt Handler Setter for IOCBF5 pin interrupt-on-change functionality

  @Description
    Allows selecting an interrupt handler for IOCBF5 at application runtime
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    InterruptHandler function pointer.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF5_SetInterruptHandler(MyInterruptHandler);

*/
void IOCBF5_SetInterruptHandler(void* InterruptHandler);

/**
  @Summary
    Dynamic Interrupt Handler for IOCBF5 pin

  @Description
    This is a dynamic interrupt handler to be used together with the IOCBF5_SetInterruptHandler() method.
    This handler is called every time the IOCBF5 ISR is executed and allows any function to be registered at runtime.
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF5_SetInterruptHandler(IOCBF5_InterruptHandler);

*/
extern void (*IOCBF5_InterruptHandler)(void);

/**
  @Summary
    Default Interrupt Handler for IOCBF5 pin

  @Description
    This is a predefined interrupt handler to be used together with the IOCBF5_SetInterruptHandler() method.
    This handler is called every time the IOCBF5 ISR is executed. 
    
  @Preconditions
    Pin Manager intializer called

  @Returns
    None.

  @Param
    None.

  @Example
    PIN_MANAGER_Initialize();
    IOCBF5_SetInterruptHandler(IOCBF5_DefaultInterruptHandler);

*/
void IOCBF5_DefaultInterruptHandler(void);



#endif // PIN_MANAGER_H
/**
 End of File
*/