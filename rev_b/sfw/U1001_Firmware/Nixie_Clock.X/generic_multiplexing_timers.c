
#include "generic_multiplexing_timers.h"

#include <xc.h>

#include "pin_macros.h"
#include "32mz_interrupt_control.h"

// This function initializes the multiplexing timer (using timer 4)
void genericMultiplexingTimerInitialize(void) {
    
        // Disable timer to start init
    T4CONbits.ON = 0;
    
    // Enable stop in idle, we don't want to mux when in sleep mode
    T4CONbits.SIDL = 1;
    
    // Disable gating
    T4CONbits.TGATE = 0;
    
    // prescaler of 1:2 and period of 12500 gives a muxing period of ~2ms
    // this gives a refresh rate of around 60 Hz
    
    // Set prescaler to 1:2
    T4CONbits.TCKPS = 0b001;
    
    // Set period to 12500
    PR4 = 12500;
    
    // Disable 32 bit mode
    T4CONbits.T32 = 0;
    
    // Set clock source to PBCLK3
    T4CONbits.TCS = 0;
    
    // Clear timer
    TMR4 = 0;
    
    // Clear Timer Interrupt Flag
    clearInterruptFlag(Timer4);
    
    // Set Timer interrupt priority
    setInterruptPriority(Timer4, 5);
    setInterruptSubpriority(Timer4, 2);
    
    // Enable timer interrupt
    enableInterrupt(Timer4);
    
    // Start timer
    T4CONbits.ON = 1;
    
}

// This function initializes the brightness timer (using timer 5)
void genericBrightnessTimerInitialize(void) {
    
        // Disable timer to start init
    T5CONbits.ON = 0;
    
    // Enable stop in idle, we don't want to mux when in sleep mode
    T5CONbits.SIDL = 1;
    
    // Disable gating
    T5CONbits.TGATE = 0;
    
    // prescaler of 1:2 and period of 11000 gives an on time of ~1.75ms
    
    // Set prescaler to 1:2
    T5CONbits.TCKPS = 0b001;
    
    // Set brightness to 100%
    PR5 = 100 * generic_display_brightness_setting;
    
    // Set clock source to PBCLK3
    T5CONbits.TCS = 0;
    
    // Clear timer
    TMR5 = 0;
    
    // Clear Timer Interrupt Flag
    clearInterruptFlag(Timer5);
    
    // Set Timer interrupt priority
    setInterruptPriority(Timer5, 5);
    setInterruptSubpriority(Timer5, 2);
    
    // Enable timer interrupt
    enableInterrupt(Timer5);
    
}

// this function sets the brightness of the display based on what you pass it
// number must be between 10 and 100
void setGenericDisplayBrightness(uint8_t input_brightness) {

    if (input_brightness > 100 || input_brightness < 10) return;
    
    PR5 = 100 * input_brightness;    

}

// This function stops both multiplexing timers
void genericMultiplexingTimersStop(void) {
    
    T4CONbits.ON = 0;
    T5CONbits.ON = 0;
    TMR4 = 0;
    TMR5 = 0;
    
}

// muxing timer interrupt service routine
void __ISR(_TIMER_4_VECTOR, IPL5SRS) genericMultiplexingTimerISR(void) {
    
    // if a callback function is assigned, call it before clearing the IRQ
    if (multiplexing_timer_callback != NULL) multiplexing_timer_callback();
    
    // start brightness timer
    T5CONbits.ON = 1;
    
    // clear IRQ
    clearInterruptFlag(Timer4);
    
}

// brightness timer interrupt service routine
void __ISR(_TIMER_5_VECTOR, IPL5SRS) genericBrightnessTimerISR(void) {
    
    // stop brightness timer
    T5CONbits.ON = 0;
    
    // if a callback function is assigned, call it before clearing the IRQ
    if (brightness_timer_callback != NULL) brightness_timer_callback();
    
    // clear IRQ
    clearInterruptFlag(Timer5);
    
}

// this assigns a callback function for the genericMultiplexingTimerISR
void assignGenericMultiplexingHandler(multiplexing_timer_callback_t callback_func) {
    multiplexing_timer_callback = callback_func;
}

// this assigns a callback function for the genericBrightnessTimerISR
void assignGenericBrightnessHandler(brightness_timer_callback_t callback_func) {
    brightness_timer_callback = callback_func;
}