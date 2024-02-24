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

#ifndef _ADC_CHANNELS_H    /* Guard against multiple inclusion */
#define _ADC_CHANNELS_H

#include <xc.h>

// These are macros needed for defining ISRs, included in XC32
#include <sys/attribs.h>

#include "adc.h"

#define HOST_TEMP_OFFSET    -100.0
#define POS180_ADC_GAIN     151.0
#define POS90_ADC_GAIN      76.0
#define VBAT_ADC_GAIN       5.545

// this function sets up ADC channels
void adcChannelsInitialize(void);

// this function prints out ADC channel status
void printADCChannelStatus(void);

#endif /* _ADC_CHANNELS_H */

/* *****************************************************************************
 End of File
 */