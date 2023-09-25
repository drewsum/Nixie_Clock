
#include <stdio.h>

#include "pgood_monitor.h"

#include "pin_macros.h"

#include "terminal_control.h"

// this function prints current PGOOD status
void printPGOODStatus(void) {
 
    terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, BOLD_FONT);
    printf("Current Power Supply Control Status:\r\n");
   
    if (POS24_PGOOD_PIN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    +24V Input Voltage is %s\n\r", POS24_PGOOD_PIN ? "within tolerance" : "out of tolerance");
    
    if (POS3P3_PGOOD_PIN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    +3.3V Power Supply is %s", POS3P3_PGOOD_PIN ? "enabled, " : "disabled\r\n");
    if (POS3P3_PGOOD_PIN) printf("output voltage is %s\r\n", POS3P3_PGOOD_PIN ? "within regulation" : "out of regulation");
        
    if (POS180_PGOOD_PIN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    +180V Power Supply is %s, RUN pin currently %s\r\n", POS180_PGOOD_PIN ? "within regulation" : "out of regulation", POS180_RUN_PIN ? "enabled" : "disabled");
    
    if (POS90_PGOOD_PIN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    +90V Termination Voltage is %s\r\n", POS90_PGOOD_PIN ? "within regulation" : "out of regulation");
    
    if (RTC_HARDSTRAP_PIN == LOW) {
        if (VBAT_PGOOD_PIN) terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
        else terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
        printf("    RTC Backup Battery voltage is %s\r\n", VBAT_PGOOD_PIN ? "within range" : "out of range");
    }
    
    if (PGOOD_LED_SHDN_PIN) terminalTextAttributes(RED_COLOR, BLACK_COLOR, NORMAL_FONT);
    else terminalTextAttributes(GREEN_COLOR, BLACK_COLOR, NORMAL_FONT);
    printf("    PGOOD LED voltage is %s\r\n", PGOOD_LED_SHDN_PIN ? "disabled" : "enabled");
    
    terminalTextAttributesReset();
}