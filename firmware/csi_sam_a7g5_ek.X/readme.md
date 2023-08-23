
isc\_cam\_sam\_a5d2\_xult.X

Defining the Architecture
-------------------------

![](../../../../docs/html/csi_sama7g5_cam_arch.png)

This application demonstrates how to use the MIPI DPHY, CSI2, CSI2DC and ISC peripherals. For this example, the raspberry pi camera module with the imx219 image sensor is used. The application will store the captured images to a USB storage device in BMP format. 
When user inserts a USB stick, the blue LED turns ON indicating that the simple filesystem is mounted. When the user presses the SW1 button the captured image is copied to a buffer by the ISC. This buffer is copied to the Filesystem mounted on the USB stick as a BMP image. The green LED turns ON indicating that the USB stick is ready to be detached.

![](../../../../docs/html/sama7g5ek_buttonSW1.png)

The camera module can be purchased from [this](https://www.adafruit.com/product/3099?src=raspberrypi) link.

### Demonstration Features

-   Image Sensor Controller
-   MIPI DPHY, CSI2 and CSI2DC
-   USB host implementation
-   Filesystem implementation
-   Analog push button handling

Creating the Project Graph
--------------------------

![](../../../../docs/html/mipi_csi_cam_prj_graph.png)

The Project Graph diagram shows the Harmony components that are included in this application. Lines between components are drawn to satisfy components that depend on a capability that another component provides.

The I2C driver in this project is used for communication with the IMX219 image sensor.

The pins are configured as follows through the MCC Pin Configuration tool:

|Pin ID|Custom Name|Function|Direction|Latch|PIO Interrupt|
|:-----------|:-------|:----------|:----------|:----------|:----------|
|PA12|USER\_BUTTON|SWITCH_AL|In|High|Falling Edge|
|PA13|LED1|LED\_AH|Out|Low|Disabled|
|PB2|VBUS\_AH\_PB2|VBUS\_AH|Out|Low|Disabled|
|PB8|LED\_RED|LED\_AH|Out|Low|Disabled|
|PC6|VBUS\_AH\_PC6|VBUS\_AH|Out|Low|Disabled|
|PC11|VBUS\_AH\_PC11|VBUS\_AH|Out|Low|Disabled|
|PC13||FLEXCOM8\_IO1|n/a|n/a|Disabled|
|PC14||FLEXCOM8\_IO0|n/a|n/a|Disabled|
|PD20|LED\_BLUE|LED\_AH|Out|Low|Disabled|
|PE1|CAM\_RESET|GPIO|Out|Low|Disabled|



The peripheral clocks need to be turned on for "CSI2DC", "FLEXCOM8", "ISC", "CSI, "TC0" and "UHPHS". In addition, the CSI interrupt should be enabled in the "Interrupt (GIC)->SPI Interrupts".

<b>Note:  The IMX219 image sensor is an off-the-shelf module and is not officially supported by MPLAB Harmony 3.   While a driver for this module is included as part of this demo, it is not guaranteed to be complete.  Nor are the IMX219 configuration values guaranteed to be optimal. The primary purpose of this application is to demonstrate the functionality of the CSI2DC and Image Sensor Controller modules. </b>

Building the Application
------------------------

The parent directory for this application is gfx/apps/mipi\_csi. To build this application, use MPLAB X IDE to open the gfx/apps/mipi\_csi/firmware/csi\_sam\_a7g5\_ek.X project and press F11.
A successful build will generate a harmony.bin file in dist\sam\_a7g5\_ek\_IMX219\production in the project folder.

The following table lists configuration properties:

|Project Name|BSP Used|Description|
|:-----------|:-------|:---------------------|:----------|
|csi_sam_a7g5_ek.X|SAM A7G5 Evaluation Kit|SAM A7G5 EK and raspberry pi camera module|


Configuring the Hardware
------------------------

Configure the hardware as follows:

-	Connect the ribbon cable from the raspberry pi camera module to the MIPI CSI connector on the SAMA7G5EK board.

-   Take an SD Card formatted with FAT32 file system, and copy the boot.bin binary file from this [location](../../../boot_image/boot.bin). Also copy the harmony.bin file you generated from the "Building the Application" section.

-   Insert the SD card to J4 of the SAMA7G5EK board and power up the board by connecting a powered USB cable to J7 or +5V wall adapter power cable to J1 on the SAMA7G5EK board.

-   You can optionally connect an FTDI UART to USB adapter cable to J20.

![](../../../../docs/html/csi_sama7g5_setup1.png)

![](../../../../docs/html/csi_sama7g5_setup2.png)

Running the Demonstration
-------------------------

Press the SW3 nSTART button to power-on the board. The green LED will turn On and Off indicating the harmony application is running. Insert a USB stick. Blue LED turns ON indicating the USB is attached and a file system is mounted. Press the SW1 "USER BUTTON" to capture an image. The blue LED turns off while the image is copied to the USB stick in BMP file format. The green LED turns ON indiciating that the USB stick can be detached.
<b>Note:  It will take 7-8 s for the image to be written to the USB stick and the green LED to turn ON. After removing the USB device, you can insert it again and once the blue LED turns ON, press SW1 to capture another image. </b>

![](../../../../docs/html/csi_sama7g5_demo.png)

* * * * *

 
