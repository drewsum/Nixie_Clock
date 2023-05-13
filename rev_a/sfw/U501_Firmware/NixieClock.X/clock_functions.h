/* 
 * File:   clock_functions.h
 * Author: drewmaatman
 *
 * Created on October 29, 2017, 12:03 PM
 */

#include "global_variables.h"
#include "definitions.h"
#include "checkIDs.h"
#include <math.h>

#ifndef CLOCK_FUNCTIONS_H
#define	CLOCK_FUNCTIONS_H

#ifdef	__cplusplus
extern "C" {
#endif

 /*
  * The functions used and their descriptions of use are as follows:
  * 
  * startup():
  *     No arguments, updates global variables only once on startup to prepare
  *     the clock for use. This function is only called after programming or
  *     reset. Ideally never after programmed.
  * 
  * muxISR():
  *     Multiplexing interrupt service routine. Attached to TMR0IF in both
  *     startup() and wakeup(). This function is called by timer 0 at around
  *     333 Hz, every 3 milliseconds, as long as timer 0 is enabled and its
  *     interrupt is enabled. It starts the blanking timer (timer 2) and updates
  *     the output parallel port with necessary data for displaying the time.
  * 
  * tickISR():
  *     Timekeeping interrupt service routine. This ISR is called by TMR1IF at 
  *     ideally exactly 1 Hz. It increments the seconds global variable and 
  *     calculates time from this. It also controls the colons and tick indicator.
  *     It is called in sleep, but only when TMR1SYNC is disabled.
  * 
  * blankISR():
  *     Blanking interrupt service routine. This ISR is called 200uS after
  *     muxISR() and enabled hardware decoding. This is used for a blanking
  *     period to change data and let the nixie tubes discharge before displaying
  *     the next digit. 
  * 
  * setSecondsISR():
  *     Interrupt service routine used for manually setting the seconds. It is
  *     invoked when pressing the set_seconds pushbutton. It also disables the
  *     TMR1 interrupt for a few seconds to keep the clock from running while the
  *     user sets the time. It is disabled while in sleep and while the display
  *     is disabled to keep the user from accidentally setting the time.
  * 
  * setMinutesISR():
  *     The same as above with minutes
  * 
  * setHoursISR():
  *     The same as above but with hours 
  * 
  * displayToggleISR():
  *     This interrupt service routine is called when the user presses the
  *     display_toggle pushbutton. It toggles the state of the high voltage
  *     boost converter to turn the display off. It also disables the multiplexing
  *     timer interrupts and the time setting interrupts.
  * 
  * muxDigitCompensation():
  *     This function takes in the global variable 
  * 
  * 
  * 
  *  
  */

// Function Prototypes
void startup(void);
void muxISR(void);
void tickISR(void);
void blankISR(void);
void setSecondsISR(void);
void setMinutesISR(void);
void setHoursISR(void);
void powerFailISR(void);
void displayToggleISR(void);
void muxDigitCompensation(void);
void updateParallelPort(void);
void twentyFourParse(void);
void timeParse(void);
void isolateDigits(void);
void updateDisplay(void);
void shutdown(void);
void wakeup(void);
void groundCathode(void);
void sleepyTickISR(void);
void restoreTime(void);

//</editor-fold>


#ifdef	__cplusplus
}
#endif

#endif	/* CLOCK_FUNCTIONS_H */

