
#include <xc.h>

#include <stdio.h>
#include <sys/attribs.h>

#include "heartbeat_timer.h"
#include "heartbeat_services.h"
#include "pin_macros.h"

// This function initializes the heartbeat timer (100Hz)
void heartbeatTimerInitialize(void) {
    
    // Stop timer 1
    T1CONbits.ON = 0;
    
    // Set timer 1 prescalar to 256
    T1CONbits.TCKPS = 0b11;
    
    // Set timer clock input as PBCLK3
    T1CONbits.TCS = 0;
    
    // Clear timer 1
    TMR1 = 0x0000;
    
    // Set timer 1 period match to 488
    // This will give an interrupt rate of 100 Hz
    PR1 = 488;
    
    // Clear Timer1 Interrupt Flag
    clearInterruptFlag(Timer1);
    
    // Set Timer 1 interrupt priority
    setInterruptPriority(Timer1, 3);
    setInterruptSubpriority(Timer1, 3);
    
    // Enable timer 1 interrupt
    enableInterrupt(Timer1);
    
    // Start timer 1
    T1CONbits.ON = 1;

    // Set up Timer 2
    /////////////////
    // Stop timer 2
    T2CONbits.ON = 0;
    
    // Stop timer 2 in idle
    T2CONbits.SIDL = 1;
    
    // Disable gated time accumulation
    T2CONbits.TGATE = 0;
    
    // Set timer 2 prescalar to 1
    T2CONbits.TCKPS = 0b000;
    
    // Set timer clock input as PBCLK3
    // PBCLK3 is 15.75 MHz
    T2CONbits.TCS = 0;
    
    // Clear timer 2
    TMR2 = 0x0000;
    
    // Set timer 2 period match to 1000
    PR2 = 200;
    
    // Start timer 2
    T2CONbits.ON = 1;
    
}

// This function starts the heartbeat timer
void heartbeatTimerStart(void) {
    
    // Start timer 1
    T1CONbits.ON = 1;
    
}

// This function stops the heartbeat timer
void heartbeatTimerStop(void) {
 
    // Stop timer 1
    T1CONbits.ON = 0;
    
}

// Heartbeat timer interrupt service routine
void __ISR(_TIMER_1_VECTOR, IPL3SRS) hearbeatTimerISR(void) {

    // Clear the watchdog timer
    wdt_clear_request = 1;
    
    // Adjust duty cycle of heartbeat LED
    if (heartbeat_dir == heartbeat_inhale) {
        heartbeat_on_time++;
        if (heartbeat_on_time == 100) {
            HEARTBEAT_LED_PIN = HIGH;
            heartbeat_dir = heartbeat_exhale;
        }
    }
    if (heartbeat_dir == heartbeat_exhale) {
        heartbeat_on_time--;
        if (heartbeat_on_time == 0) {
            HEARTBEAT_LED_PIN = LOW;
            heartbeat_dir = heartbeat_inhale;
        }
    }
    
    // increment heartbeat_systick
    heartbeat_systick++;
    
    // Set flags to execute recurring function calls
    heartbeatServices();
    
    // Clear interrupt flag
    clearInterruptFlag(Timer1);
    
}