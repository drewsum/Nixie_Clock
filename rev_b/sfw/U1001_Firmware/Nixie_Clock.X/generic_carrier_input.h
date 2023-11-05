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

#ifndef _GENERIC_CARRIER_INPUT_H    /* Guard against multiple inclusion */
#define _GENERIC_CARRIER_INPUT_H

#include <xc.h>

// These are macros needed for defining ISRs, included in XC32
#include <sys/attribs.h>

// this is a typedef to be able to set a callback function for the individual pushbuttons inputs
typedef void (*pushbutton_input_0_callback_t)(void);
typedef void (*pushbutton_input_1_callback_t)(void);
typedef void (*pushbutton_input_2_callback_t)(void);
typedef void (*pushbutton_input_3_callback_t)(void);
typedef void (*pushbutton_input_4_callback_t)(void);
typedef void (*pushbutton_input_5_callback_t)(void);
typedef void (*pushbutton_input_6_callback_t)(void);
pushbutton_input_0_callback_t pushbutton_input_0_callback;
pushbutton_input_1_callback_t pushbutton_input_1_callback;
pushbutton_input_2_callback_t pushbutton_input_2_callback;
pushbutton_input_3_callback_t pushbutton_input_3_callback;
pushbutton_input_4_callback_t pushbutton_input_4_callback;
pushbutton_input_5_callback_t pushbutton_input_5_callback;
pushbutton_input_6_callback_t pushbutton_input_6_callback;

// This function initializes the port D input change notification interrupts
void carrierPushbuttonInitialize(void);

// PORTD CNF ISR
void __ISR(_CHANGE_NOTICE_D_VECTOR, IPL2SRS) carrierBoardPushbuttonISR(void);

// this assigns a callback function for the pushbutton interrupts
void assignPushbutton0Handler(pushbutton_input_0_callback_t callback_func);
void assignPushbutton1Handler(pushbutton_input_1_callback_t callback_func);
void assignPushbutton2Handler(pushbutton_input_2_callback_t callback_func);
void assignPushbutton3Handler(pushbutton_input_3_callback_t callback_func);
void assignPushbutton4Handler(pushbutton_input_4_callback_t callback_func);
void assignPushbutton5Handler(pushbutton_input_5_callback_t callback_func);
void assignPushbutton6Handler(pushbutton_input_6_callback_t callback_func);

#endif /* _GENERIC_CARRIER_INPUT_H */

/* *****************************************************************************
 End of File
 */
