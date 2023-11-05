

#include "generic_carrier_input.h"
#include "32mz_interrupt_control.h"

#include <stdio.h>

#include "terminal_control.h"

// This function initializes the port D input change notification interrupts
void carrierPushbuttonInitialize(void) {
 
    // Configure PORT D CNF
    disableInterrupt(PORTD_Input_Change_Interrupt);
    CNCONDbits.EDGEDETECT = 1;
    CNCONDbits.ON = 1;
    setInterruptPriority(PORTD_Input_Change_Interrupt, 2);
    setInterruptSubpriority(PORTD_Input_Change_Interrupt, 1);
    
    // Set rising edge detection on RD0, RD1, RD2, RD3, RD4, RD12, RD13
    CNEND = 0;
    CNNED = 0;
    CNENDbits.CNIED0 = 1;
    CNENDbits.CNIED1 = 1;
    CNENDbits.CNIED2 = 1;
    CNENDbits.CNIED3 = 1;
    CNENDbits.CNIED4 = 1;
    CNENDbits.CNIED12 = 1;
    CNENDbits.CNIED13 = 1;
    
    // Enable interrupts
    clearInterruptFlag(PORTD_Input_Change_Interrupt);
    enableInterrupt(PORTD_Input_Change_Interrupt);
    
    #warning "add this back in: clockSetBlankingTimerInitialize();"
    
    
}

// PORTD CNF ISR
void __ISR(_CHANGE_NOTICE_D_VECTOR, IPL2SRS) carrierBoardPushbuttonISR(void) {
    
    if (CNFDbits.CNFD0 && CNENDbits.CNIED0) {
        
        terminalTextAttributes(MAGENTA_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("User pressed pushbutton 0\r\n");
        terminalTextAttributesReset();
        
        if (pushbutton_input_0_callback != NULL) pushbutton_input_0_callback();
    
    }
    
    if (CNFDbits.CNFD1 && CNENDbits.CNIED1) {
        
        terminalTextAttributes(MAGENTA_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("User pressed pushbutton 1\r\n");
        terminalTextAttributesReset();
        
        if (pushbutton_input_1_callback != NULL) pushbutton_input_1_callback();
    
    }
    
    if (CNFDbits.CNFD2 && CNENDbits.CNIED2) {
        
        terminalTextAttributes(MAGENTA_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("User pressed pushbutton 2\r\n");
        terminalTextAttributesReset();
        
        if (pushbutton_input_2_callback != NULL) pushbutton_input_2_callback();
    
    }
    
    if (CNFDbits.CNFD3 && CNENDbits.CNIED3) {
        
        terminalTextAttributes(MAGENTA_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("User pressed pushbutton 3\r\n");
        terminalTextAttributesReset();
        
        if (pushbutton_input_3_callback != NULL) pushbutton_input_3_callback();
    
    }
    
    if (CNFDbits.CNFD4 && CNENDbits.CNIED4) {
        
        terminalTextAttributes(MAGENTA_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("User pressed pushbutton 6\r\n");
        terminalTextAttributesReset();
        
        if (pushbutton_input_6_callback != NULL) pushbutton_input_6_callback();
    
    }
    
    if (CNFDbits.CNFD12 && CNENDbits.CNIED12) {
        
        terminalTextAttributes(MAGENTA_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("User pressed pushbutton 4\r\n");
        terminalTextAttributesReset();
        
        if (pushbutton_input_4_callback != NULL) pushbutton_input_4_callback();
    
    }
    
    if (CNFDbits.CNFD13 && CNENDbits.CNIED13) {
        
        terminalTextAttributes(MAGENTA_COLOR, BLACK_COLOR, BOLD_FONT);
        printf("User pressed pushbutton 5\r\n");
        terminalTextAttributesReset();
        
        if (pushbutton_input_5_callback != NULL) pushbutton_input_5_callback();
    
    }
    
    // Clear all change notification flags
    // If this is not done, we'll continuously trigger on edges that aren't there
    CNFD    = 0;
    CNSTATD = 0;
    
    // Read PORTD, this clears more CN flags
    uint16_t dummy = PORTD;
    
    clearInterruptFlag(PORTD_Input_Change_Interrupt);
    
    
}

// this assigns a callback function for the pushbutton interrupts
void assignPushbutton0Handler(pushbutton_input_0_callback_t callback_func) {
     pushbutton_input_0_callback = callback_func;
}
void assignPushbutton1Handler(pushbutton_input_1_callback_t callback_func) {
     pushbutton_input_1_callback = callback_func;
}
void assignPushbutton2Handler(pushbutton_input_2_callback_t callback_func) {
     pushbutton_input_2_callback = callback_func;
}
void assignPushbutton3Handler(pushbutton_input_3_callback_t callback_func) {
     pushbutton_input_3_callback = callback_func;
}
void assignPushbutton4Handler(pushbutton_input_4_callback_t callback_func) {
     pushbutton_input_4_callback = callback_func;
}
void assignPushbutton5Handler(pushbutton_input_5_callback_t callback_func) {
     pushbutton_input_5_callback = callback_func;
}
void assignPushbutton6Handler(pushbutton_input_6_callback_t callback_func) {
     pushbutton_input_6_callback = callback_func;
}