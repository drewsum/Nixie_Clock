/**
  Generated Pin Manager File

  Company:
    Microchip Technology Inc.

  File Name:
    pin_manager.c

  Summary:
    This is the Pin Manager file generated using MPLAB(c) Code Configurator

  Description:
    This header file provides implementations for pin APIs for all pins selected in the GUI.
    Generation Information :
        Product Revision  :  MPLAB(c) Code Configurator - 4.15.3
        Device            :  PIC16LF1519
        Driver Version    :  1.02
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

#include <xc.h>
#include "pin_manager.h"
#include "stdbool.h"


void (*IOCBF0_InterruptHandler)(void);
void (*IOCBF1_InterruptHandler)(void);
void (*IOCBF2_InterruptHandler)(void);
void (*IOCBF3_InterruptHandler)(void);
void (*IOCBF4_InterruptHandler)(void);
void (*IOCBF5_InterruptHandler)(void);

void PIN_MANAGER_Initialize(void)
{
    /**
    LATx registers
    */   
    LATE = 0x00;    
    LATD = 0x80;    
    LATA = 0x02;    
    LATB = 0x00;    
    LATC = 0x00;    

    /**
    TRISx registers
    */    
    TRISE = 0x00;
    TRISA = 0xF5;
    TRISB = 0xFF;
    TRISC = 0xE3;
    TRISD = 0x00;

    /**
    ANSELx registers
    */   
    ANSELC = 0x02;
    ANSELB = 0x00;
    ANSELD = 0x00;
    ANSELE = 0x00;
    ANSELA = 0x00;

    /**
    WPUx registers
    */ 
    WPUE = 0x08;
    WPUB = 0xC0;
    OPTION_REGbits.nWPUEN = 0;

    
    /**
    APFCONx registers
    */
    APFCON = 0x00;

    /**
    IOCx registers
    */
    // interrupt on change for group IOCBF - flag
    IOCBFbits.IOCBF0 = 0;
    IOCBFbits.IOCBF1 = 0;
    IOCBFbits.IOCBF2 = 0;
    IOCBFbits.IOCBF3 = 0;
    IOCBFbits.IOCBF4 = 0;
    IOCBFbits.IOCBF5 = 0;
    // interrupt on change for group IOCBN - negative
    IOCBNbits.IOCBN0 = 1;
    IOCBNbits.IOCBN1 = 1;
    IOCBNbits.IOCBN2 = 1;
    IOCBNbits.IOCBN3 = 1;
    IOCBNbits.IOCBN4 = 1;
    IOCBNbits.IOCBN5 = 1;
    // interrupt on change for group IOCBP - positive
    IOCBPbits.IOCBP0 = 0;
    IOCBPbits.IOCBP1 = 0;
    IOCBPbits.IOCBP2 = 0;
    IOCBPbits.IOCBP3 = 0;
    IOCBPbits.IOCBP4 = 1;
    IOCBPbits.IOCBP5 = 1;

    // register default IOC callback functions at runtime; use these methods to register a custom function
    IOCBF0_SetInterruptHandler(IOCBF0_DefaultInterruptHandler);
    IOCBF1_SetInterruptHandler(IOCBF1_DefaultInterruptHandler);
    IOCBF2_SetInterruptHandler(IOCBF2_DefaultInterruptHandler);
    IOCBF3_SetInterruptHandler(IOCBF3_DefaultInterruptHandler);
    IOCBF4_SetInterruptHandler(IOCBF4_DefaultInterruptHandler);
    IOCBF5_SetInterruptHandler(IOCBF5_DefaultInterruptHandler);
   
    // Enable IOCI interrupt 
    INTCONbits.IOCIE = 1; 
    
}       

void PIN_MANAGER_IOC(void)
{   
    // interrupt on change for pin IOCBF0
    if(IOCBFbits.IOCBF0 == 1)
    {
        IOCBF0_ISR();  
    }                          

    // interrupt on change for pin IOCBF1
    if(IOCBFbits.IOCBF1 == 1)
    {
        IOCBF1_ISR();  
    }                          

    // interrupt on change for pin IOCBF2
    if(IOCBFbits.IOCBF2 == 1)
    {
        IOCBF2_ISR();  
    }                          

    // interrupt on change for pin IOCBF3
    if(IOCBFbits.IOCBF3 == 1)
    {
        IOCBF3_ISR();  
    }                          

    // interrupt on change for pin IOCBF4
    if(IOCBFbits.IOCBF4 == 1)
    {
        IOCBF4_ISR();  
    }                          

    // interrupt on change for pin IOCBF5
    if(IOCBFbits.IOCBF5 == 1)
    {
        IOCBF5_ISR();  
    }                          


}

/**
   IOCBF0 Interrupt Service Routine
*/
void IOCBF0_ISR(void) {

    // Add custom IOCBF0 code

    // Call the interrupt handler for the callback registered at runtime
    if(IOCBF0_InterruptHandler)
    {
        IOCBF0_InterruptHandler();
    }
    IOCBFbits.IOCBF0 = 0;
}

/**
  Allows selecting an interrupt handler for IOCBF0 at application runtime
*/
void IOCBF0_SetInterruptHandler(void* InterruptHandler){
    IOCBF0_InterruptHandler = InterruptHandler;
}

/**
  Default interrupt handler for IOCBF0
*/
void IOCBF0_DefaultInterruptHandler(void){
    // add your IOCBF0 interrupt custom code
    // or set custom function using IOCBF0_SetInterruptHandler()
}

/**
   IOCBF1 Interrupt Service Routine
*/
void IOCBF1_ISR(void) {

    // Add custom IOCBF1 code

    // Call the interrupt handler for the callback registered at runtime
    if(IOCBF1_InterruptHandler)
    {
        IOCBF1_InterruptHandler();
    }
    IOCBFbits.IOCBF1 = 0;
}

/**
  Allows selecting an interrupt handler for IOCBF1 at application runtime
*/
void IOCBF1_SetInterruptHandler(void* InterruptHandler){
    IOCBF1_InterruptHandler = InterruptHandler;
}

/**
  Default interrupt handler for IOCBF1
*/
void IOCBF1_DefaultInterruptHandler(void){
    // add your IOCBF1 interrupt custom code
    // or set custom function using IOCBF1_SetInterruptHandler()
}

/**
   IOCBF2 Interrupt Service Routine
*/
void IOCBF2_ISR(void) {

    // Add custom IOCBF2 code

    // Call the interrupt handler for the callback registered at runtime
    if(IOCBF2_InterruptHandler)
    {
        IOCBF2_InterruptHandler();
    }
    IOCBFbits.IOCBF2 = 0;
}

/**
  Allows selecting an interrupt handler for IOCBF2 at application runtime
*/
void IOCBF2_SetInterruptHandler(void* InterruptHandler){
    IOCBF2_InterruptHandler = InterruptHandler;
}

/**
  Default interrupt handler for IOCBF2
*/
void IOCBF2_DefaultInterruptHandler(void){
    // add your IOCBF2 interrupt custom code
    // or set custom function using IOCBF2_SetInterruptHandler()
}

/**
   IOCBF3 Interrupt Service Routine
*/
void IOCBF3_ISR(void) {

    // Add custom IOCBF3 code

    // Call the interrupt handler for the callback registered at runtime
    if(IOCBF3_InterruptHandler)
    {
        IOCBF3_InterruptHandler();
    }
    IOCBFbits.IOCBF3 = 0;
}

/**
  Allows selecting an interrupt handler for IOCBF3 at application runtime
*/
void IOCBF3_SetInterruptHandler(void* InterruptHandler){
    IOCBF3_InterruptHandler = InterruptHandler;
}

/**
  Default interrupt handler for IOCBF3
*/
void IOCBF3_DefaultInterruptHandler(void){
    // add your IOCBF3 interrupt custom code
    // or set custom function using IOCBF3_SetInterruptHandler()
}

/**
   IOCBF4 Interrupt Service Routine
*/
void IOCBF4_ISR(void) {

    // Add custom IOCBF4 code

    // Call the interrupt handler for the callback registered at runtime
    if(IOCBF4_InterruptHandler)
    {
        IOCBF4_InterruptHandler();
    }
    IOCBFbits.IOCBF4 = 0;
}

/**
  Allows selecting an interrupt handler for IOCBF4 at application runtime
*/
void IOCBF4_SetInterruptHandler(void* InterruptHandler){
    IOCBF4_InterruptHandler = InterruptHandler;
}

/**
  Default interrupt handler for IOCBF4
*/
void IOCBF4_DefaultInterruptHandler(void){
    // add your IOCBF4 interrupt custom code
    // or set custom function using IOCBF4_SetInterruptHandler()
}

/**
   IOCBF5 Interrupt Service Routine
*/
void IOCBF5_ISR(void) {

    // Add custom IOCBF5 code

    // Call the interrupt handler for the callback registered at runtime
    if(IOCBF5_InterruptHandler)
    {
        IOCBF5_InterruptHandler();
    }
    IOCBFbits.IOCBF5 = 0;
}

/**
  Allows selecting an interrupt handler for IOCBF5 at application runtime
*/
void IOCBF5_SetInterruptHandler(void* InterruptHandler){
    IOCBF5_InterruptHandler = InterruptHandler;
}

/**
  Default interrupt handler for IOCBF5
*/
void IOCBF5_DefaultInterruptHandler(void){
    // add your IOCBF5 interrupt custom code
    // or set custom function using IOCBF5_SetInterruptHandler()
}

/**
 End of File
*/