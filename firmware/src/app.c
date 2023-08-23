/*******************************************************************************
  MPLAB Harmony Application Source File
  
  Company:
    Microchip Technology Inc.
  
  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It 
    implements the logic of the application's state machine and it may call 
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (c) 2013-2014 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
// DOM-IGNORE-END


// *****************************************************************************
// *****************************************************************************
// Section: Included Files 
// *****************************************************************************
// *****************************************************************************

#include "app.h"
#include "peripheral/isc/plib_isc.h"
#include "driver/isc/drv_isc.h"
// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_Initialize function.
    
    Application strings and buffers are be defined outside this structure.
*/

APP_DATA appData USB_ALIGN;

/* This is the string that will written to the file */
static volatile uint32_t _isMounted =0;
static volatile uint32_t _captureRequested=0;
static volatile uint32_t _capturing=0;
static volatile uint32_t file_opened = 0;
static uint32_t filenumber = 0;
char fileName[32];
//USB_ALIGN uint8_t canvasfb0[640*480*4] = { 0 };
uint8_t __attribute__ ((section(".region_nocache"), aligned (32))) canvasfb0[640*480*4] = { 0 };

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/
static void switchInterruptCB(PIO_PIN pin, uintptr_t context)
{
    
    if(_isMounted == 1)
    {
        if(_capturing == 0)
        {   
            _capturing =1;
            _captureRequested = 1;
            LED_BLUE_Off(); 
        }
    }
    
   
}
// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary local functions.
*/

static size_t _writeCanvasToFile(SYS_FS_HANDLE handle,
    uint8_t *buffer, uint32_t w, uint32_t h)
{
    int filesize = 54 + 3*w*h;  /*w is your image width, h is image height, both int*/
    /*Reference: https://en.wikipedia.org/wiki/BMP_file_format*/
    uint8_t bmpfileheader[14] = {'B','M', 0,0,0,0, 0,0, 0,0, 54,0,0,0}; /*54 is the location of the image*/
    uint8_t bmpinfoheader[40] = {40,0,0,0, 0,0,0,0, 0,0,0,0, 1,0, 24,0};
    uint8_t clr[4];
    int i;
    size_t ret;
    /*The file header offset 2 has the size of the BMP file in bytes*/
    bmpfileheader[ 2] = (uint8_t)(filesize    );
    bmpfileheader[ 3] = (uint8_t)(filesize>> 8);
    bmpfileheader[ 4] = (uint8_t)(filesize>>16);
    bmpfileheader[ 5] = (uint8_t)(filesize>>24); 
    /*The info header has the width  (offset 4)and height (offset 8 info of the image */
    bmpinfoheader[ 4] = (uint8_t)(w);
    bmpinfoheader[ 5] = (uint8_t)(w>> 8);
    bmpinfoheader[ 6] = (uint8_t)(w>>16);
    bmpinfoheader[ 7] = (uint8_t)(w>>24);
    bmpinfoheader[ 8] = (uint8_t)(h);
    bmpinfoheader[ 9] = (uint8_t)(h>> 8);
    bmpinfoheader[10] = (uint8_t)(h>>16);
    bmpinfoheader[11] = (uint8_t)(h>>24);
    
    // write header and data to file
    ret = SYS_FS_FileWrite(handle, (const void *) bmpfileheader, sizeof(bmpfileheader));
    ret = SYS_FS_FileWrite(handle, (const void *) bmpinfoheader, sizeof(bmpinfoheader));

    for (i = 0; i < w * h; i++) {
        clr[0] = *(buffer++);
		clr[1] = *(buffer++);
		clr[2] = *(buffer++);
        clr[3] = *(buffer++);
        ret = SYS_FS_FileWrite(handle, (const void *)clr, 3);             
	}

    return ret;
}
// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    appData.state = APP_STATE_BUS_ENABLE;
    appData.deviceIsConnected = false;
    
    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
    PIO_PinInterruptEnable(PIO_PIN_PA12);
    PIO_PinInterruptCallbackRegister(PIO_PIN_PA12,
                                     switchInterruptCB,
                                     0);
    DRV_ISC_Initialize();
    /* Configure the ISC Interface */
    DRV_ISC_Configure();
}

USB_HOST_EVENT_RESPONSE APP_USBHostEventHandler (USB_HOST_EVENT event, void * eventData, uintptr_t context)
{
    switch (event)
    {
        case USB_HOST_EVENT_DEVICE_UNSUPPORTED:
            break;
        default:
            break;
                    
    }
    
    return(USB_HOST_EVENT_RESPONSE_NONE);
}

void APP_SYSFSEventHandler(SYS_FS_EVENT event, void * eventData, uintptr_t context)
{
    switch(event)
    {
        case SYS_FS_EVENT_MOUNT:
            LED_BLUE_On(); 
            appData.deviceIsConnected = true;
            
            break;
            
        case SYS_FS_EVENT_UNMOUNT:
            appData.deviceIsConnected = false;
            LED1_Off();
            break;
            
        default:
            break;
    }
}
/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */

void APP_Tasks ( void )
{
    switch(appData.state)
    {
        case APP_STATE_BUS_ENABLE:
                      
           /* Set the event handler and enable the bus */
            SYS_FS_EventHandlerSet((void *)APP_SYSFSEventHandler, (uintptr_t)NULL);
            USB_HOST_EventHandlerSet(APP_USBHostEventHandler, 0);
            USB_HOST_BusEnable(USB_HOST_BUS_ALL);
            appData.state = APP_STATE_WAIT_FOR_BUS_ENABLE_COMPLETE;
            break;
            
        case APP_STATE_WAIT_FOR_BUS_ENABLE_COMPLETE:
            if(USB_HOST_BusIsEnabled(USB_HOST_BUS_ALL))
            {
                appData.state = APP_STATE_WAIT_FOR_DEVICE_ATTACH;
            }
            break;
       
        case APP_STATE_WAIT_FOR_DEVICE_ATTACH:

            /* Wait for device attach. The state machine will move
             * to the next state when the attach event
             * is received.  */
            if(appData.deviceIsConnected)
            {
                appData.state = APP_STATE_DEVICE_CONNECTED;
            }

            break;

        case APP_STATE_DEVICE_CONNECTED:

            /* Device was connected. We can try mounting the disk */
            _isMounted = 1;
            //appData.state = APP_STATE_OPEN_FILE;
            appData.state = APP_STATE_IDLE;
            break;

        case APP_STATE_OPEN_FILE:

            _capturing = 1;
            _captureRequested = 0; 
            if(file_opened ==0)
            {     
                file_opened=1;
                /* Try opening the file for append */
                sprintf(fileName,
                "/mnt/myDrive1/file_%ld.bmp",
                filenumber++);
                appData.fileHandle = SYS_FS_FileOpen(fileName, (SYS_FS_FILE_OPEN_WRITE_PLUS));
                if(appData.fileHandle == SYS_FS_HANDLE_INVALID)
                {
                    /* Could not open the file. Error out*/
                    appData.state = APP_STATE_ERROR;

                }
                else
                {
                    /* File opened successfully. Write to file */
                    appData.state = APP_STATE_WRITE_TO_FILE;
                    file_opened=1;

                }
            }
            break;

        case APP_STATE_WRITE_TO_FILE:

            /* Try writing to the file */
            if(_writeCanvasToFile(appData.fileHandle, (uint8_t*) canvasfb0, 640, 480) == -1)
            {
                /* Write was not successful. Close the file
                 * and error out.*/
                SYS_FS_FileClose(appData.fileHandle);
                appData.state = APP_STATE_ERROR;

            }
            else
            {
                /* We are done writing. Close the file */
                appData.state = APP_STATE_CLOSE_FILE;
            }
            
            break;

        case APP_STATE_CLOSE_FILE:

            /* Close the file */
            SYS_FS_FileClose(appData.fileHandle);
            file_opened=0;
            _capturing = 0;
            /* Indicate User that File operation has been completed */
            LED1_On(); 
            /* The test was successful. Lets idle. */
            appData.state = APP_STATE_IDLE;
            break;

        case APP_STATE_IDLE:

            /* The application comes here when the demo has completed
             * successfully. Provide LED indication. Wait for device detach
             * and if detached, wait for attach. */

            if(appData.deviceIsConnected == false)
            {
                appData.state = APP_STATE_WAIT_FOR_DEVICE_ATTACH;
            }
            if(appData.deviceIsConnected ==true && _captureRequested == 1){
                DRV_ISC_Capture((uint32_t)&canvasfb0[0]);
                appData.state = APP_STATE_OPEN_FILE;
            }
            break;

        case APP_STATE_ERROR:

            /* The application comes here when the demo
             * has failed. Provide LED indication .*/

            if(SYS_FS_Unmount("/mnt/myDrive1") != 0)
            {
                /* The disk could not be un mounted. Try
                 * un mounting again untill success. */

                appData.state = APP_STATE_ERROR;
            }
            else
            {
                /* UnMount was successful. Wait for device attach */
                appData.state =  APP_STATE_WAIT_FOR_DEVICE_ATTACH;
                appData.deviceIsConnected = false; 

            }
            break;

        default:
            break;

    }
}
 

/*******************************************************************************
 End of File
 */
