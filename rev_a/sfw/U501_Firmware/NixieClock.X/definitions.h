/* 
 * File:   definitions.h
 * Author: drewmaatman
 *
 * Created on October 29, 2017, 11:56 AM
 */

#ifndef DEFINITIONS_H
#define	DEFINITIONS_H

#ifdef	__cplusplus
extern "C" {
#endif

// PORTA I/O Signal Definitions
#define vcc_pgood PORTAbits.RA0
#define vvv_pgood PORTAbits.RA2
#define vvv_run LATAbits.LATA3
#define vcom_pgood PORTAbits.RA5

// PORTA TRIS Definitions
#define vcc_pgood_TRIS TRISAbits.TRISA0
#define vvv_pgood_TRIS TRISAbits.TRISA2
#define vvv_run_TRIS TRISAbits.TRISA3
#define vcom_pgood_TRIS TRISAbits.TRISA5

// PORTB I/O Signal Definitions
#define n_set_seconds PORTBbits.RB0    // (Active Low)
#define n_set_minutes PORTBbits.RB1    // (Active Low)
#define n_set_hours PORTBbits.RB2    // (Active Low)
#define n_display_toggle PORTBbits.RB3    // (Active Low)
#define n_vcc_backup_pfo PORTBbits.RB4    // (Active Low)
#define n_plug PORTBbits.RB5    // (Active Low)

// PORTB TRIS Definitions
#define set_seconds_TRIS TRISBbits.TRISB0
#define set_minutes_TRIS TRISBbits.TRISB1
#define set_hours_TRIS TRISBbits.TRISB2
#define display_toggle_TRIS TRISBbits.TRISB3
#define vcc_backup_pfo_TRIS TRISBbits.TRISB4
#define plug_TRIS TRISBbits.TRISB5

// PORTC I/O Signal Definitions
#define external_osc PORTCbits.RC0   
#define low_side_base_dec LATCbits.LATC2
#define colon_drive_0 LATCbits.LATC3
#define colon_drive_1 LATCbits.LATC4
#define n_conn_sense PORTCbits.RC5 // Active Low
#define twenty_four_hr PORTCbits.RC6 // Active high for 24 hrs
#define vcc_backup_pgood PORTCbits.RC7

// PORTC TRIS Definitions
#define external_osc_TRIS TRISCbits.TRISC0
#define low_side_base_dec_TRIS TRISCbits.TRISC2
#define colon_drive_0_TRIS TRISCbits.TRISC3
#define colon_drive_1_TRIS TRISCbits.TRISC4
#define conn_sense_TRIS TRISCbits.TRISC5
#define twenty_four_hr_TRIS TRISCbits.TRISC6
#define vcc_backup_pgood_TRIS TRISCbits.TRISC6

// PORTD I/O Signal Definitions

// Binary Coded Decimal for Low Side Switches Signal Definitions
// Four bit BCD bus holds data to display on individual digits
#define BCDA LATDbits.LATD0
#define BCDB LATDbits.LATD1
#define BCDC LATDbits.LATD2
#define BCDD LATDbits.LATD3

// BCD TRIS Definitions
#define BCDA_TRIS TRISDbits.TRISD0
#define BCDB_TRIS TRISDbits.TRISD1
#define BCDC_TRIS TRISDbits.TRISD2
#define BCDD_TRIS TRISDbits.TRISD3

// Binary Coded Octal for High Side Switches Signal Definitions
// Three bit BCO bus holds data for which digit to display
#define BCOA LATDbits.LATD4
#define BCOB LATDbits.LATD5
#define BCOC LATDbits.LATD6

// BCO TRIS Definitions
#define BCOA_TRIS TRISDbits.TRISD4
#define BCOB_TRIS TRISDbits.TRISD5
#define BCOC_TRIS TRISDbits.TRISD6

// (Not) Decoder Enable Bit
// Setting this signal will clear outputs of BCO and BCD decoders
// Clearing this signal will update display after data changes
#define n_decode_enable LATDbits.LATD7 // (Active Low)

// Decoder Enable TRIS
#define decode_enable_TRIS TRISDbits.TRISD7

// PORTE I/O Signal Definitions
#define enable_ind LATEbits.LATE0
#define tick_ind LATEbits.LATE1
#define error_ind LATEbits.LATE2

// PORTE TRIS Definitions
#define enable_ind_TRIS TRISEbits.TRISE0
#define tick_ind_TRIS TRISEbits.TRISE1
#define error_ind_TRIS TRISEbits.TRISE2

// Parallel Port (LATD) Typedef Definition
extern volatile unsigned char           ParallelPortN                @ 0x10F;
#ifndef _LIB_BUILD
asm("ParallelPort equ 010Fh");
#endif

// bitfield definitions
typedef union {
    struct {
        unsigned BCD                  :4;
        unsigned BCO                  :3;
    };
} ParallelPort_t;

// Defining ParallelPort abject at register 0x10F within PIC
extern volatile ParallelPort_t ParallelPort @ 0x10F;

// bitfield macros
// ParallelPort.BCD is defined as lower nibble of LATD
// ParalelPort.BCO is the next 3 MSBs of LATD
// Leaves MSB within LATD as n_decode_enable 
#define _ParallelPortN_BCD_POSN                                    0x0
#define _ParallelPortN_BCD_POSITION                                0x0
#define _ParallelPortN_BCD_SIZE                                    0x4
#define _ParallelPortN_BCD_LENGTH                                  0x4
#define _ParallelPortN_BCD_MASK                                    0x0F
#define _ParallelPortN_BCO_POSN                                    0x10
#define _ParallelPortN_BCO_POSITION                                0x10
#define _ParallelPortN_BCO_SIZE                                    0x3
#define _ParallelPortN_BCO_LENGTH                                  0x3
#define _ParallelPortN_BCO_MASK                                    0x70

// Interrupt Enable Definitions
#define set_seconds_interrupt_enable IOCBNbits.IOCBN0
#define set_minutes_interrupt_enable IOCBNbits.IOCBN1
#define set_hours_interrupt_enable IOCBNbits.IOCBN2
#define display_toggle_interrupt_enable IOCBNbits.IOCBN3
#define plug_falling_interrupt_enable IOCBNbits.IOCBN5
#define plug_rising_interrupt_enable IOCBPbits.IOCBP5

#define mux_interrupt_enable INTCONbits.TMR0IE
#define tick_interrupt_enable PIE1bits.TMR1IE
#define blank_interrupt_enable PIE1bits.TMR2IE



#ifdef	__cplusplus
}
#endif

#endif	/* DEFINITIONS_H */

