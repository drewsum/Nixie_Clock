
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//HEADER/RESOURCE ALLOCATION ////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//<editor-fold defaultstate="collapsed" desc="">
/*
 * 
 * File:   main.c
 * Author: Drew Maatman
 * 
 * Created on March 30, 2017, 8:51 PM
 * 
 * NIXIE CLOCK PIC FIRMWARE
 * 
 * OPTIMIZED FOR PIC16LF1519
 * 
 * 
 * RESOURCE ALLOCATION:
 *      Timer0:
 *          Main multiplexing timer with period of 2.9952 (~3) milliseconds.
 *          Input is FOSC/4. Upon overflow, Tmr0 interrupt will trigger and 
 *          increment which digit is being displayed. This will keep 
 *          multiplexing refresh rate constant.
 * 
 *      Timer1:
 *          Main timekeeping timer with period of 1 second. Input is external
 *          32.768 CMOS oscillator. Upon overflow, Tmr1 interrupt will increment
 *          the time that the clock displays. Operation of this timer is 
 *          critical to operation of clock
 * 
 *      Timer2:
 *          Secondary multiplexing timer with period of 200 microseconds. This
 *          timer will keep a consistent time base for the blanking period when
 *          all digit anodes are disabled. Input is FOSC/4
 * 
 *      Watchdog Timer:
 *          Setup with post scalar of 65536. WDT must be continuously cleared to
 *          avoid system reset. Will eventually be disabled during sleep
 *          Might be removed in later revisions
 * 
 *      PORT A: 
 *          General I/O port
 * 
 *      PORT B:
 *          General I/O port with interrupts on change
 * 
 *      PORT C:
 *          General I/O port
 * 
 *      PORT D:
 *          Nicknamed "Parallel Port", output data port for hardware decoders
 *          Set or read ParallelPort.BCD for binary coded decimal for numeral
 *          Set or read ParallelPort.BCO for binary coded octal for digit
 * 
 *      PORT E:
 *          LED indicator port
 * 
 * 
 *  
 * Most hardware is configured with MCC, but all MCC ISRs will call functions 
 * within main.c for consistency and simplicity
 * 
 */
//</editor-fold>


/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// VARIABLES AND FUNCTION PROTOTYPES ////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//<editor-fold defaultstate="collapsed" desc="">

// File Inclusions
#include <xc.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stddef.h>
#include <math.h>
#include <pic.h>
#include "mcc_generated_files/mcc.h"
#include <stdio.h>
#include "definitions.h"
#include "clock_functions.h"

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Main Function ////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void main(void) {

    
    // Wake up from reset, set TRIS bits, etc
    if (asleep_flag == LOW) {
        
        startup();
        
    }

    while(1) {
        
        if (asleep_flag == LOW) {

            // Set error
            if(vcom_pgood && vcc_pgood && vvv_pgood && vcc_backup_pgood && !n_conn_sense) {

                // Throw an error if supplies don't come up
                error_ind = LOW;

            } // end error state if

            else {

                error_ind = HIGH & !(asleep_flag);

            } // End error state else


            // If we've just completed any set time ISR's this interrupt enable bit 
            // will be low, so go off of this
            if (tick_interrupt_enable == LOW) {

                // Wait... if we trigger setSecondsISR this should be reset
                // This delay is the time it will take to resume counting
                // when setting the seconds variable manually
                // DON'T DELETE THIS
                __delay_ms(3000);

                // If this interrupt is STILL low, we're done setting the seconds
                if (tick_interrupt_enable == LOW) {

                    // Enable timekeeping
                    tick_interrupt_enable = HIGH;
                    TMR1_StartTimer();

                }

            } // End timekeeping delay IF

            // TURN OFF VVV SUPPLY IF UNSAFE TO OPERATE
            if (n_conn_sense == HIGH) {

                vvv_run = LOW;
                error_ind = HIGH;
                enable_ind = LOW;

            } // end conn_sense if
            
            enable_ind = vvv_run;

        } // end asleep flag if
        
        else {
            
            while (asleep_flag == HIGH) {
            
                SLEEP();
                NOP();
            
            }
            
        }
            
    }   // End main loop
    
}   // End main();

