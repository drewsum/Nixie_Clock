/* 
 * File:   global_variables.h
 * Author: drewmaatman
 *
 * Created on October 29, 2017, 12:01 PM
 */

#ifndef GLOBAL_VARIABLES_H
#define	GLOBAL_VARIABLES_H

#ifdef	__cplusplus
extern "C" {
#endif


// Variables

// Multiplexing stage and data array
// mux_digit hols the current digit to be displayed
// mux_digit_compensated holds the corrected code to turn on correct anode
// due to incorrect PCB wiring
// mux_numeral holds the number to display on all digits
unsigned volatile int mux_digit = 0;  // 0 - 6
unsigned volatile int mux_digit_compensated = 0; // 0 - 6, ideally
unsigned volatile int mux_numeral[6] = 0;   // 0 - 9

// timekeeping variables
unsigned volatile int seconds = 0;
unsigned volatile int minutes = 0;
unsigned volatile int hours = 0;

// difference between 12 and 24 hours, display_hours is what is displayed and
// may be different than hours
unsigned volatile int display_hours = 0;

// MSDs and LSDs of time variables, individual single digit numbers
unsigned volatile int seconds_LSD = 0;
unsigned volatile int seconds_MSD = 0;
unsigned volatile int minutes_LSD = 0;
unsigned volatile int minutes_MSD = 0;
unsigned volatile int hours_LSD = 0;
unsigned volatile int hours_MSD = 0;

// Asleep Flag, used to determine if in power down
volatile bit asleep_flag = LOW;

// Sleepy Seconds, time to count when in sleep
unsigned volatile short long sleepy_seconds = 0;

// Multiplier on sleepy_seconds when recalculating time to account for drift
const float extended_calibration = 1.0052736051707;

// Expected user IDs and Device IDs
// Last element in expected_user_ID should be programmed with build number
const unsigned short expected_user_ID[4] = {'N', 'I', 'X', 4};
const unsigned short expected_device_ID = 0b010111111; //PIC16LF1519 DEV ID

#ifdef	__cplusplus
}
#endif

#endif	/* GLOBAL_VARIABLES_H */

