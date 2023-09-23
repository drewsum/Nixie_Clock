/* ************************************************************************** */
/** Descriptive File Name

  @Company
 Drew Maatman

  @File Name
    pin_macros.h

  @Summary
    Macros for setting and checking the state of GPIO pins

  @Description
    Macros for setting and checking the state of GPIO pins
 */
/* ************************************************************************** */

#ifndef _PIN_MACROS_H    /* Guard against multiple inclusion */
#define _PIN_MACROS_H

#include <xc.h>

#define HIGH    1
#define LOW     0

// These pin macros allow for easier manipulation of GPIO with matching
// signal names from the hardware schematic

// Port A
#define CATHODE_DP_PIN              LATAbits.LATA0
#define POS90_PGOOD_PIN             PORTAbits.RA1
#define ERROR_LED_PIN               LATAbits.LATA5
#define IO_LEVEL_SHIFT_ENABLE_PIN   LATAbits.LATA7
#define POS180_RUN_PIN              LATAbits.LATA9
#define POS180_PGOOD_PIN            PORTAbits.RA10

// Port B
#define ANODE_0_PIN                 LATBbits.LATB0
#define ANODE_1_PIN                 LATBbits.LATB1
#define ANODE_2_PIN                 LATBbits.LATB2
#define ANODE_3_PIN                 LATBbits.LATB3
#define ANODE_4_PIN                 LATBbits.LATB4
#define ANODE_5_PIN                 LATBbits.LATB5
#define CATHODE_0_PIN               LATBbits.LATB8
#define CATHODE_1_PIN               LATBbits.LATB9
#define CATHODE_2_PIN               LATBbits.LATB10
#define CATHODE_3_PIN               LATBbits.LATB11
#define CATHODE_4_PIN               LATBbits.LATB12
#define CATHODE_5_PIN               LATBbits.LATB13
#define CATHODE_6_PIN               LATBbits.LATB14
#define CATHODE_7_PIN               LATBbits.LATB15

// Port C not used for GPIO

// Port D
#define PUSHBUTTON_0_PIN            PORTDbits.RD0
#define PUSHBUTTON_1_PIN            PORTDbits.RD1
#define PUSHBUTTON_2_PIN            PORTDbits.RD2
#define PUSHBUTTON_3_PIN            PORTDbits.RD3
#define PUSHBUTTON_6_PIN            PORTDbits.RD4
#define nDISPLAY_DETECT_PIN         PORTDbits.RD5
#define BUZZER_ENABLE_PIN           LATDbits.LATD9
#define PUSHBUTTON_4_PIN            PORTDbits.RD12
#define PUSHBUTTON_5_PIN            PORTDbits.RD13
#define VBAT_PGOOD_PIN              PORTDbits.RD15

// Port E
#define HEARTBEAT_LED_PIN           LATEbits.LATE0
#define CPU_TRAP_LED_PIN            LATEbits.LATE1
#define COLON_2_PIN                 LATEbits.LATE2
#define COLON_1_PIN                 LATEbits.LATE3
#define COLON_0_PIN                 LATEbits.LATE4
#define CATHODE_9_PIN               LATEbits.LATE8
#define CATHODE_8_PIN               LATEbits.LATE9

// Port F
#define TELEMETRY_HARDSTRAP_PIN     PORTFbits.RF8
#define ETC_HARDSTRAP_PIN           PORTFbits.RF12
#define RTC_HARDSTRAP_PIN           PORTFbits.RF13

// Port G
#define POS24_PGOOD_PIN             PORTGbits.RG0
#define POS3P3_PGOOD_PIN            PORTGbits.RG1
#define PGOOD_LED_SHDN_PIN          LATGbits.LATG12
#define COLON_3_PIN                 LATGbits.LATG13
#define RESET_LED_PIN               LATGbits.LATG15

#endif /* _PIN_MACROS_H */

/* *****************************************************************************
 End of File
 */
