/* 
 * File:   checkIDs.h
 * Author: drewmaatman
 *
 * Created on November 7, 2017, 9:28 PM
 */

#ifndef CHECKIDS_H
#define	CHECKIDS_H

#ifdef	__cplusplus
extern "C" {
#endif

    
    void checkIDs(void);
    // Check IDs function
    // Originally written for the PIC16LF1519
    
    // Requires the following defined:
    //      expected_user_ID_0
    //      expected_user_ID_1
    //      expected_user_ID_2
    //      expected_user_ID_3
    //      expected_device_ID
    
    // When function is called, will loop endlessly when an IDs don't match
    


#ifdef	__cplusplus
}
#endif

#endif	/* CHECKIDS_H */

