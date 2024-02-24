/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef _GENERIC_MULTIPLEXING_TIMERS_H    /* Guard against multiple inclusion */
#define _GENERIC_MULTIPLEXING_TIMERS_H

#include <xc.h>
// These are macros needed for defining ISRs, included in XC32
#include <sys/attribs.h>

// this is a typedef to be able to set a callback function for the timer ISRs
typedef void (*multiplexing_timer_callback_t)(void);
typedef void (*brightness_timer_callback_t)(void);
multiplexing_timer_callback_t multiplexing_timer_callback;
brightness_timer_callback_t brightness_timer_callback;

// This flag is what allows values to alternate on and off when setting them
// with capacitive pushbuttons
volatile uint8_t clock_set_blank_request = 0;

// This unsigned int is what's used to set brightness of the display
// brightness timer is set to 10 * this value
volatile __attribute__((coherent)) uint8_t generic_display_brightness_setting = 100;

// This function initializes the multiplexing timer (using timer 4)
void genericMultiplexingTimerInitialize(void);

// This function initializes the brightness timer (using timer 5)
void genericBrightnessTimerInitialize(void);

// this function sets the brightness of the display based on what you pass it
// number must be between 10 and 100
void setGenericDisplayBrightness(uint8_t input_brightness);

// This function stops both multiplexing timers
void genericMultiplexingTimersStop(void);

// muxing timer interrupt service routine
void __ISR(_TIMER_4_VECTOR, IPL7SRS) genericMultiplexingTimerISR(void);

// brightness timer interrupt service routine
void __ISR(_TIMER_5_VECTOR, IPL7SRS) genericBrightnessTimerISR(void);

// this assigns a callback function for the genericMultiplexingTimerISR
void assignGenericMultiplexingHandler(multiplexing_timer_callback_t callback_func);

// this assigns a callback function for the genericBrightnessTimerISR
void assignGenericBrightnessHandler(brightness_timer_callback_t callback_func);

// This timer is used to blink values that are being changed using the pushbuttons
// Using timer 6 for this
void genericValueBlankingTimerInitialize(void);

// this is the ISR for the clock set blanking timer
void __ISR(_TIMER_6_VECTOR, IPL6SRS) genericValueBlankingTimerISR(void);


#endif /* _GENERIC_MULTIPLEXING_TIMERS_H */

/* *****************************************************************************
 End of File
 */
