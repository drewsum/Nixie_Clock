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

#ifndef _HEARTBEAT_TIMER_H    /* Guard against multiple inclusion */
#define _HEARTBEAT_TIMER_H

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

#include <xc.h>

#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#include "../src/config/default/peripheral/coretimer/plib_coretimer.h"
#include "../src/config/default/peripheral/gpio/plib_gpio.h"
#include "../src/config/default/peripheral/wdt/plib_wdt.h"

void HEARTBEAT_TIMER_Handler(uint32_t status, uintptr_t context);

#endif /* _HEARTBEAT_TIMER_H */

/* *****************************************************************************
 End of File
 */
