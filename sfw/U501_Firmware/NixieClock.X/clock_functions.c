/*
 * File:   clock_functions.c
 * Author: drewmaatman
 *
 * Created on November 5, 2017, 7:28 PM
 */


#include <xc.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stddef.h>
#include <math.h>
#include <pic.h>
#include "mcc_generated_files/mcc.h"
#include <stdio.h>
#include "global_variables.h"
#include "definitions.h"
#include "clock_functions.h"


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Startup Function /////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void startup(void){
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This function is called upon startup
    
    // Enable Global Interrupts
    INTERRUPT_GlobalInterruptEnable();
    
    // Enable Peripheral Interrupts
    INTERRUPT_PeripheralInterruptEnable();
    
    // Call MCC Generated Startup Functions
    SYSTEM_Initialize();
    
    error_ind_TRIS = OUTPUT;
    tick_ind_TRIS = OUTPUT;
    enable_ind_TRIS = OUTPUT;
    error_ind = HIGH;
    
    // Check user and device ID numbers. If this check does not pass,
    // system should just endlessly loop with error LED on
    checkIDs();
    
    // Set Timer ISRs:
    // Set Timer 0 Interrupt Service Routine as muxISR function
    TMR0_SetInterruptHandler(muxISR);
    
    // Set Timer 1 Interrupt Service Routine as tickISR function
    TMR1_SetInterruptHandler(tickISR);
    
    // Set Timer 2 Interrupt Service Routine as blankISR function
    TMR2_SetInterruptHandler(blankISR);
    
    // Set IOC ISRs:
    // Call setSecondsISR on IOC flag PORTB0, setSecodns
    IOCBF0_SetInterruptHandler(setSecondsISR);
    
    // Call setMinutesISR on IOC flag PORTB3, n_set_minutes
    IOCBF1_SetInterruptHandler(setMinutesISR);
    
    // Call setHoursISR on IOC flag PORTB2, n_set_hours
    IOCBF2_SetInterruptHandler(setHoursISR);
    
    // Call displayToggleISR on IOC flag PORTB3, n_display_toggle
    IOCBF3_SetInterruptHandler(displayToggleISR);
    
    // Call powerFailISR on IOC flag PORTB4, vcc_backup_pfo
    IOCBF4_SetInterruptHandler(powerFailISR);
    
    
    // Set parallel port TRIS bits
    BCOA_TRIS = OUTPUT;
    BCOB_TRIS = OUTPUT;
    BCOC_TRIS = OUTPUT;
    
    BCDA_TRIS = OUTPUT;
    BCDB_TRIS = OUTPUT;
    BCDC_TRIS = OUTPUT;
    BCDD_TRIS = OUTPUT;
    
    decode_enable_TRIS = OUTPUT;
    
    // Colon signals are outputs
    colon_drive_0_TRIS = OUTPUT;
    colon_drive_1_TRIS = OUTPUT;
    
    // Start with colons low
    colon_drive_0 = LOW;
    colon_drive_1 = LOW;
    
    // Time Setting pins are inputs
    set_seconds_TRIS = INPUT;
    set_minutes_TRIS = INPUT;
    set_hours_TRIS = INPUT;
    
    // backaup supply PFO signal is an input
    vcc_backup_pfo_TRIS = INPUT;
    
    // Safety signal is an input
    conn_sense_TRIS = INPUT;
    
    // PGOOD signals are input
    vcc_pgood_TRIS = INPUT;
    vcom_pgood_TRIS = INPUT;
    vvv_pgood_TRIS = INPUT;
    
    // Disbale PLUG interrupt since this isn't used
    plug_falling_interrupt_enable = LOW;
    plug_rising_interrupt_enable = LOW;
    
    // Set unused pins as output to keep from floating
    TRISBbits.TRISB6 = OUTPUT;
    TRISBbits.TRISB7 = OUTPUT;
    TRISAbits.TRISA1 = OUTPUT;
    TRISCbits.TRISC1 = OUTPUT;
    
    // Turn on enable LED
    enable_ind_TRIS = OUTPUT;
    
    // 24 hr setting
    twenty_four_hr_TRIS = INPUT;
    
    // Enable Timer1 Clock Sync
    nT1SYNC = LOW;
    
    // Decimal point is output and starts low
    low_side_base_dec_TRIS = OUTPUT;
    low_side_base_dec = LOW;
    
    // Set display toggle button input as input
    display_toggle_TRIS = INPUT;
    
    // Boost Converter Run signal is output
    vvv_run_TRIS = OUTPUT;
    
    // Start with boost converter off
    vvv_run = LOW;
    
    // Disable multiplexing interrupts until turned on
    mux_interrupt_enable = LOW;
    blank_interrupt_enable = LOW;
    
    // Stop blanking period timer
    TMR2_StopTimer();

    // Clear timer 2
    TMR2 = 0;
    
    // Update LEDs
    error_ind = LOW;
    enable_ind = LOW;
    
    
}   // End startup function

//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Multiplexing Interrupt Service Routine ///////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void muxISR(void) {
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This ISR is called on the rising edge of the multiplexing clock, at around 
    // 333 Hz
    
    // Turn off hardware decoding
    n_decode_enable = HIGH;
    
    // Reset if we've displayed all digits
    if (mux_digit == 6) {
        
        mux_digit = 0;

    }


    // Enable and disable decimal point when digit is correct and enabled
    if (twenty_four_hr == HIGH && mux_digit == 5 && hours > 11) {

        low_side_base_dec = HIGH;

    }

    else {

        low_side_base_dec = LOW;

    }
    
    
    // Update the output port
    updateParallelPort();

    // Enable hardware decoding
    n_decode_enable = LOW;
    
    // Start blanking period timer
    TMR2_StartTimer();
    
    

    
} // end multiplexing ISR function

//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Timekeeping Interrupt Service Routine ////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void tickISR(void) {
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This ISR is called on the rising edge of the seconds timekeeping clock, at 
    // 1 Hz. It also wakes the PIC from sleep to keep counting when in shutdown

    // toggle tick indicator LED
    tick_ind = !(tick_ind);

    // toggle colons
    colon_drive_0 = tick_ind;
    colon_drive_1 = tick_ind;

    // Only count when not setting seconds
    if (n_set_seconds == HIGH) {

        // Increase seconds
        seconds++;

    }

    // Call the functions needed to go from seconds to time
    timeParse();
    twentyFourParse();
    isolateDigits();
    updateDisplay();
    
} // end tick ISR function

//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Blanking Interrupt Service Routine ///////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void blankISR(void) {
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This function is called after the blanking delay, around 200uS nominal after
    // the main mux timer

    // Stop Blanking Period Timer
    TMR2_StopTimer();
    
    // Clear timer 2
    TMR2 = 0;
    
    // Disconnect Anode, Keep Cathode Connected
    groundCathode();

    
    mux_digit++;
    



} // end blank ISR function

//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Set Seconds Interrupt Service Routine ////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void setSecondsISR(void) {
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This ISR is called when pushing the set seconds button and increments
    // the seconds variable
    
    // Only on the falling edge
    if (n_set_seconds == LOW) {
        
        // stop timekeeping
        tick_interrupt_enable = LOW;
        
        // Turn On Colons
        colon_drive_0 = HIGH;
        colon_drive_1 = HIGH;
        
        // Disable set seconds interrupt
        set_seconds_interrupt_enable = LOW;
        
        // Increment seconds
        seconds++;
        
        // Separate digits and stuff
        // DON'T CALL TIMEPARSE();, THIS WOULD INCREMENT MINUTES ON ISR
        //timeParse();
        if (seconds == 60) {
            
            seconds = 0;
        
        }
        
        isolateDigits();
        updateDisplay();
        
        //Re enable interrupt
        set_seconds_interrupt_enable = HIGH;
        
        // Stop the timekeeping timer and resume after setting time delay, which
        // appears in main loop
        TMR1_StopTimer();
        
    }
    
} // end set seconds ISR function

//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Set Minutes Interrupt Service Routine ////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void setMinutesISR(void) {
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This ISR is called when pushing the set minutes button and increments
    // the minutes variable
    
    // Only on the falling edge
    if (n_set_minutes == LOW) {
    
        // stop timekeeping
        tick_interrupt_enable = LOW;
        
        // Hold colons on when setting time
        colon_drive_0 = HIGH;
        colon_drive_1 = HIGH;

        // Turn off minutes interrupt
        set_minutes_interrupt_enable = LOW;
        
        // Increment minutes
        minutes++;
        
        // Do the thing
        // DON'T CALL TIMEPARSE();, THIS WOULD INCREMENT MINUTES ON ISR
        //timeParse();
        if (minutes == 60) {
            
            minutes = 0;
        
        }
        
        isolateDigits();
        updateDisplay();
        
        // Re enable interrupt
        set_minutes_interrupt_enable = HIGH;
        
        // Stop the timekeeping timer and resume after setting time delay, which
        // appears in main loop
        TMR1_StopTimer();
        
        
    }
    
    
} // end set minutes ISR function

//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Set Hours Interrupt Service Routine //////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void setHoursISR(void) {
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This ISR is called when pushing the set hours button and increments
    // the hours variable
    
    // Only on the falling edge
    if (n_set_hours == LOW) {
        
        // stop timekeeping
        tick_interrupt_enable = LOW;
        
        // Turn on the colons
        colon_drive_0 = HIGH;
        colon_drive_1 = HIGH;
        
        // Disable the hours interrupt
        set_hours_interrupt_enable = LOW;
        
        // Increment Hours
        hours++;
        
        // Do the thing
        // DON'T CALL TIMEPARSE();, THIS WOULD INCREMENT MINUTES ON ISR
        //timeParse();
        if (hours == 24) {
            
            hours = 0;
        
        }
        
        twentyFourParse();
        isolateDigits();
        updateDisplay();
            
        // Re enable interrupt
        set_hours_interrupt_enable = HIGH;
        
        // Stop the timekeeping timer and resume after setting time delay, which
        // appears in main loop
        TMR1_StopTimer();
        
        
    }
    
} // end set hours ISR function

//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Power Fail Interrupt Service Routine /////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void powerFailISR(void) {
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This ISR is called when the input power fails according to the PFO input 
    // detection circuit. It sends the pic into sleep to minimize current
    // draw and keeps the time current while unplugged
    
    // If input power has been removed (don't freak out)
    if (asleep_flag == LOW) {

        shutdown();
        
    }
    
    // If input power has been restored
    else {

        wakeup();
        
    }
    
    
} // end power fail ISR function

//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Display Toggle Interrupt Service Routine /////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void displayToggleISR(void) {
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This ISR is called when pressing the toggle display button and toggles
    // the state of the display, turning the clock on and off
    
    // Falling edge
    if (n_display_toggle == LOW) {
        
        // Turning clock on
        if (vvv_run == LOW) {
            
            vvv_run = !(n_conn_sense);
            enable_ind = HIGH;
            
            while (vvv_pgood == LOW);
            
            // Enable multiplexing interrupts
            mux_interrupt_enable = HIGH;
            blank_interrupt_enable = HIGH;
            
            set_seconds_interrupt_enable = HIGH;
            set_minutes_interrupt_enable = HIGH;
            set_hours_interrupt_enable = HIGH;
    
            
            
        }
        
        // Turning clock off
        else {
            
            vvv_run = LOW;
            enable_ind = LOW;
            
            // Disable multiplexing interrupts
            mux_interrupt_enable = LOW;
            blank_interrupt_enable = LOW;
            
            set_seconds_interrupt_enable = LOW;
            set_minutes_interrupt_enable = LOW;
            set_hours_interrupt_enable = LOW;
            
        }
        
    }
    
} // end display toggle ISR function

//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Mux Digit Compensate Function ////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void muxDigitCompensation(void) {
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This function compensates for incorrect wiring somewhere in the high side
    // decoder circuit by replacing the mux_digit variable with a new value using
    // a case statement
    // THE RESULT OF FLIPPING MSB AND LSB OF OCTAL DATA BUS
    
    switch(mux_digit) {
        
        case 0:
            mux_digit_compensated = 0;
            break;
            
        case 1: 
            mux_digit_compensated = 4;
            break;
            
        case 2:
            mux_digit_compensated = 2;
            break;
            
        case 3:
            mux_digit_compensated = 6;
            break;
            
        case 4:
            mux_digit_compensated = 1;
            break;
            
        case 5:
            mux_digit_compensated = 5;
            break;
            
        case 6:
            mux_digit_compensated = 3;
            break;
            
        default:
            mux_digit_compensated = 7;
    }
    
} // end multiplexing compensation function

//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Update Parallel Port Function ////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void updateParallelPort(void) {
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This function updates PORTD with data for the hardware decoders
    
    // Account for errors in wiring
    muxDigitCompensation();
    // Update BCO and BCD output on PORT D
    ParallelPort.BCO = mux_digit_compensated;
    ParallelPort.BCD = mux_numeral[mux_digit];
       
} // end update parallel port function

//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// 24 Hour Parse Function ///////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void twentyFourParse(void) {
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This function splits hours into display hours, depending on the state of
    // 24hr
    
    // Display 12 hours
    if (twenty_four_hr == HIGH) {
        
        // If it's 12 AM, display 12
        if (hours == 0) {
            
            display_hours = 12;
            
        }
        
        // If it's after 12PM, subtract 12
        else if (hours > 12) {
            
            display_hours = hours - 12;
            
        }
        
        // If it's before 12PM, just display the current hours
        else {
            
            display_hours = hours;
            
        }
        
    } // end 24hr IF
    
    // Display 24 hrs
    else {
        
        display_hours = hours;
        
    }
    
} // end 24hr parse function

//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Time Parse Function //////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void timeParse(void) {
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This function updates the time based on the elapsed seconds, minutes and 
    // hours
    
    // If 60 seconds have elapsed, increase minutes and reset seconds
    if (seconds == 60) {
        
        seconds = 0;  
        minutes++;
        
    }
    
    // If 60 minutes have elapsed, increase hours and reset minutes
    if (minutes == 60) {
        
        minutes = 0;
        hours++;
        
    }
    
    // If 24 hours have elapsed, reset hours
    if (hours == 24) {
        
        hours = 0;
        
    }
    
 
    
} // end timeparse function

//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Isolate Digits Function //////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void isolateDigits(void) {
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This function isolates the LSDs and MSDs from the seconds, minutes, and hours
    
    // Isolate time into least and most significant digits
    seconds_LSD = seconds%10;
    seconds_MSD = (seconds/10)%10;
    
    minutes_LSD = minutes%10;
    minutes_MSD = (minutes/10)%10;
    
    hours_LSD = display_hours%10;
    hours_MSD = (display_hours/10)%10;
    
    
    
} // end isolate digits function

//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Update Display Function //////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void updateDisplay(void) {
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This function updates the mux_numeral array with LSD and MSD data
    
    // Set array values to corresponding MSDs and LSDs
    mux_numeral[0] = seconds_LSD;
    mux_numeral[1] = seconds_MSD;
    mux_numeral[2] = minutes_LSD;
    mux_numeral[3] = minutes_MSD;
    mux_numeral[4] = hours_LSD;
    mux_numeral[5] = hours_MSD;
    
    
} // end update display function

//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Shutdown Function ////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void shutdown(void) {
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This function turns the system off for power saving
    
    // Disable time setting interrupts and toggle interrupt
    set_seconds_interrupt_enable = LOW;
    set_minutes_interrupt_enable = LOW;
    set_hours_interrupt_enable = LOW;
    display_toggle_interrupt_enable = LOW;
    
    // Turn off enable LED
    enable_ind = LOW;
    
    // Turn off timekeeping LED
    tick_ind = LOW;
    
    // Turn off error LED
    error_ind = LOW;
    
    // Turn off colons
    colon_drive_0 = LOW;
    colon_drive_1 = LOW;
    
    // Turn off decimal point
    low_side_base_dec = LOW;
    
    // Set output ports to zero
    ParallelPort.BCO = 0;
    ParallelPort.BCD = 0;
    
    // Disable hardware decoding
    n_decode_enable = HIGH;
    
    // Throw everything into High Impedance except floating pins
    TRISA = 0xFD;
    TRISB = 0x3F;
    TRISC = 0xFD;
    TRISD = 0xFF;
    TRISE = 0xF;
    
    // Shut off boost converter
    vvv_run = LOW;
    
    // Tell other functions not to run when not needed
    asleep_flag = HIGH;
    
    // Disable multiplexing interrupts
    mux_interrupt_enable = LOW;
    blank_interrupt_enable = LOW;
    
    // Disable multiplexing timers
    TMR0CS = HIGH;
    TMR2_StopTimer();
    
    // Disable Timer1 Clock Sync
    nT1SYNC = HIGH;
    
    // Set Timer 1 Interrupt Service Routine as sleepyTickISR function
    TMR1_SetInterruptHandler(sleepyTickISR);
    
    // Change system clock to lower speed for lower power consumption
    // (32kHz LFINTOSC)
    OSCCONbits.IRCF = 0b0000;
    while(!LFIOFR);
    OSCCONbits.SCS = 0b11;
    while(!LFIOFR);
    // Wait for FOSC to switch over to HFINTOSC
    
    
    // Shhh.... go to bed
    SLEEP();
    NOP();
 } // end shutdown function

//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Wakeup Function //////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void wakeup(void) {
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This function is called when waking from sleep to get the pic going again
    
    // Enable Peripheral Interrupts
    INTERRUPT_PeripheralInterruptEnable();
    
    // Change system clock to normal external oscillator after changing LFINTOSC
    // to HFINTOSC
    // (20MHz HS)
    OSCCONbits.IRCF = 0b1010;
    while(!HFIOFR);
    OSCCONbits.SCS = 0b00;
    // Wait for FOSC to switch over to external crystal
    while(!OSTS);
    
    // Enable Timer1 Clock Sync
    nT1SYNC = LOW;
    
    // LEDs are outputs
    error_ind_TRIS = OUTPUT;
    tick_ind_TRIS = OUTPUT;
    enable_ind_TRIS = OUTPUT;
    error_ind = HIGH;
    
    // Set Timer ISRs:
    // Set Timer 0 Interrupt Service Routine as muxISR function
    TMR0_SetInterruptHandler(muxISR);
    
    // Set Timer 1 Interrupt Service Routine as tickISR function
    TMR1_SetInterruptHandler(tickISR);
    
    // Set Timer 2 Interrupt Service Routine as blankISR function
    TMR2_SetInterruptHandler(blankISR);
    
    // Set IOC ISRs:
    // Call setSecondsISR on IOC flag PORTB0, setSecodns
    IOCBF0_SetInterruptHandler(setSecondsISR);
    
    // Call setMinutesISR on IOC flag PORTB3, n_set_minutes
    IOCBF1_SetInterruptHandler(setMinutesISR);
    
    // Call setHoursISR on IOC flag PORTB2, n_set_hours
    IOCBF2_SetInterruptHandler(setHoursISR);
    
    // Call displayToggleISR on IOC flag PORTB3, n_display_toggle
    IOCBF3_SetInterruptHandler(displayToggleISR);
    
    // Call powerFailISR on IOC flag PORTB4, vcc_backup_pfo
    IOCBF4_SetInterruptHandler(powerFailISR);

    // Set parallel port TRIS bits
    BCOA_TRIS = OUTPUT;
    BCOB_TRIS = OUTPUT;
    BCOC_TRIS = OUTPUT;
    BCDA_TRIS = OUTPUT;
    BCDB_TRIS = OUTPUT;
    BCDC_TRIS = OUTPUT;
    BCDD_TRIS = OUTPUT;
    decode_enable_TRIS = OUTPUT;
    
    // Colon signals are outputs
    colon_drive_0_TRIS = OUTPUT;
    colon_drive_1_TRIS = OUTPUT;
    
    // Start with colons low
    colon_drive_0 = LOW;
    colon_drive_1 = LOW;
    
    // Time Setting pins are inputs
    set_seconds_TRIS = INPUT;
    set_minutes_TRIS = INPUT;
    set_hours_TRIS = INPUT;
    
    // backaup supply PFO signal is an input
    vcc_backup_pfo_TRIS = INPUT;
    
    // Safety signal is input
    conn_sense_TRIS = INPUT;
    
    // PGOOD signals are input
    vcc_pgood_TRIS = INPUT;
    vcom_pgood_TRIS = INPUT;
    vvv_pgood_TRIS = INPUT;
    
    // Set unused pins as output to keep from floating
    TRISBbits.TRISB6 = OUTPUT;
    TRISBbits.TRISB7 = OUTPUT;
    TRISAbits.TRISA1 = OUTPUT;
    TRISCbits.TRISC1 = OUTPUT;
    
    // Turn on enable LED
    enable_ind_TRIS = OUTPUT;
    
    // 24 hr setting
    twenty_four_hr_TRIS = INPUT;
    
    // Decimal point is output and starts low
    low_side_base_dec_TRIS = OUTPUT;
    low_side_base_dec = LOW;
    
    // Set display toggle button input as input
    display_toggle_TRIS = INPUT;
    
    // Boost Converter Run signal is output
    vvv_run_TRIS = OUTPUT;
    
    // Show signs of life
    error_ind = LOW;
    enable_ind = LOW;
    
    // Turn off boost converter until turned on
    vvv_run = LOW;
    
    //Re enable timesetting interrupts
    set_seconds_interrupt_enable = HIGH;
    set_minutes_interrupt_enable = HIGH;
    set_hours_interrupt_enable = HIGH;
    display_toggle_interrupt_enable = HIGH;
    
    // Tell other functions we're up and running
    asleep_flag = LOW;
    
    // Disable Multiplexing Interrupts until turned on
    mux_interrupt_enable = LOW;
    blank_interrupt_enable = LOW;
    
    // Re-enable multiplexing timers
    TMR0CS = 0;
    TMR2_StartTimer();
    
    
    // Stop time for a few instructions to get your act together
    tick_interrupt_enable = LOW;
    
    // Refresh Display Data
    restoreTime();
    twentyFourParse();
    isolateDigits();
    updateDisplay();
    
    // Resume timekeeping
    tick_interrupt_enable = HIGH;
    
    
} // end wakeup function

//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Ground Cathode Function //////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void groundCathode(void) {
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This function keeps the cathode conducting and shuts off the anode
    // 200uS before the next digit is displayed to lower ghosting effects
    
    // Ground previously illuminated cathode and don't connect an anode
    n_decode_enable = HIGH;
    ParallelPort.BCD = mux_numeral[mux_digit];
    ParallelPort.BCO = 7;
    n_decode_enable = LOW;
    
    
    
} // end ground cathode

//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Sleepy Tick ISR ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void sleepyTickISR(void) {
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This function is used in place of tickISR when in shutdown
    
    // Increment 24 bit reserve seconds variable
    sleepy_seconds++;
    
    
    
    
} // end sleepy tick ISR

//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Restore Time Function ////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void restoreTime(void) {
    //<editor-fold defaultstate="collapsed" desc="">
    
    // This function re-calculates time after waking from shutdown based on sleepy_seconds
    
    // compensate for missing clock ticks in shutdown
    // Long term calibration
    float sleepy_seconds_adjusted = sleepy_seconds * extended_calibration;
    float sleepy_seconds_rounded = round(sleepy_seconds_adjusted);
    sleepy_seconds = (unsigned short long) sleepy_seconds_rounded;
    
    // shave off days
    while (sleepy_seconds >= 86400) {
        
        sleepy_seconds -= 86400;
        
    }
    
    // Calculate elapsed minutes, seconds and hours from remainder
    int calc_seconds = (sleepy_seconds % 60);
    int calc_minutes = (sleepy_seconds % 3600) / 60;
    int calc_hours = (sleepy_seconds % 86400) / 3600;
    
    // Add this stuff to saved time at shutdown
    seconds = seconds + calc_seconds;
    minutes = minutes + calc_minutes;
    hours = hours + calc_hours;
    
    // Compensate for overflows
    if (seconds >= 60) {
        
        seconds -= 60;
        minutes++;
    }
    
    if (minutes >= 60) {
        
        minutes -= 60;
        hours++;
        
    }
    
    if (hours >= 24) {
        
        hours -= 24;
        
    }
    
    // Clear sleepy_seconds for next input power failure
    sleepy_seconds = 0;
    
    
}

//</editor-fold>

