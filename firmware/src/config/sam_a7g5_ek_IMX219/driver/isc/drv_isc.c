/*******************************************************************************
  ISC Driver Implementation.

  Company:
    Microchip Technology Inc.

  File Name:
    drv_isc.c

  Summary:
    Source code for the ISC driver.

  Description:
    This file contains the source code for the implementation of the
    ISC driver.
*******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
* Copyright (C) 2018 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/
//DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
#include "configuration.h"
#include "driver/isc/drv_isc.h"
#include "system/debug/sys_debug.h"
#include "peripheral/isc/plib_isc.h"
#include "peripheral/isc/plib_csi2dc.h"
#include "peripheral/isc/plib_mipi_csi_dphy.h"
#include "driver/cam/drv_cam.h"
#include "peripheral/isc/plib_mipi_csi.h"
// *****************************************************************************
// *****************************************************************************
// Section: Global Data
// *****************************************************************************
// *****************************************************************************
/* ISC color correction components */
static struct ISC_Color_Correction ref_cc = {
	0, 0, 0, 0x100, 0, 0, 0x100, 0, 0, 0, 0, 0x100};

/* DMA pool for ISC */
struct ISC_DMA_View __attribute__ ((section(".region_nocache"), aligned (32))) isc_dma_view_array[2]= { 0 };

// *****************************************************************************
// *****************************************************************************
// Section: File scope functions
// *****************************************************************************
// *****************************************************************************
static void _DRV_ISC_Configure_DMA(uint32_t bufferp)
{
    struct ISC_DMA_View* dma_view;
    struct  ISC_DMA_Control_Config ctrl;
    ctrl.Descriptor_Enable = 1;
    ctrl.Descriptor_View = 0;
    ctrl.Interrupt_Enable = 0;
    ctrl.Writeback_Enable = 0;
    ctrl.Field = 0;
    ctrl.Done = 0;
    
    dma_view = isc_dma_view_array;
	dma_view[0].ctrl |= ISC_DCTRL_DVIEW_PACKED;
	dma_view[0].next_desc = (uint32_t)&dma_view[0];
	dma_view[0].addr = (uint32_t)bufferp; 
	dma_view[0].stride = 0;
    ISC_DMA_Configure_Desc((uint32_t)&dma_view[0]);
    ISC_DMA_Configure_Register(ISC_DCFG_IMODE_PACKED32_Val, 4, 4);
    ISC_DMA_Enable(&ctrl);
}

static void _DRV_DisableISC(void)
{
    ISC_Disable_Interrupt(ISC_INTDIS_DDONE_Pos);
    /* Disable capture in ISC*/
    ISC_REGS->ISC_CTRLDIS = ISC_CTRLDIS_DISABLE_Msk;
}
// *****************************************************************************
// *****************************************************************************
// Section: ISC Driver Common Interface Implementation
// *****************************************************************************
// *****************************************************************************

void isc_interrupt_callback(uintptr_t context)
{
    _DRV_DisableISC();
}

void DRV_ISC_Configure( void )
{
    ISC_PFE_Set_Continuous_Mode(false);
    /* Set Row/Column Cropping enable */
    ISC_PFE_Set_Cropping_Enable(ISC_PFE_CFG0_ROWEN_Msk, ISC_PFE_CFG0_COLEN_Msk); 
    /* Configure the Parallel Front End module performs data
	 * re-sampling across clock domain boundary. The PFE module 
     * outputs a 12-bit data on the vp_data[11:0] bus */
    ISC_PFE_Set_Video_Mode(ISC_PFE_CFG0_MODE_PROGRESSIVE);
   
    /* ISC_PFE_CFG0.BPS shows the number of bits per sample depends on the bit
	 * width of sensor output */
    ISC_PFE_Set_BPS(2<< ISC_PFE_CFG0_BPS_Pos);
    /* Image data coming from MIPI interface */
    ISC_PFE_Set_MIPI_Mode(true);
	ISC_PFE_Set_Cropping_Area(0, 640, 0, 480);
    /* Apply Gamma correction */
    ISC_Gamma_Correction_Apply();
    /* Enable Gamma Correction */
    ISC_Gamma_Enable(true, 1, 1, 1); 
    ISC_Gamma_BipartEnable(true); 
    /* Enable Color Filter Array Interpolation */
    ISC_CFA_Enable(true);
    ISC_CFA_Configure(1, 1);
    
    /* The White Balance (WB) module captures the data bus from the PFE module,
	 * each Bayer color component (R,Gr, B, Gb) can be manually adjusted using
	 *  an offset and a gain. */

    ISC_WB_Enable(true); 
    ISC_WB_Set_Bayer_Pattern(1);
    
    /* Default value for White balance setting */
    ISC_WB_Adjust_Color_Offset(0, 0, 0, 0); 
    ISC_WB_Adjust_Color_Gain(0x200, 0x200, 0x200, 0x200); 
    ISC_CC_Enable(true); 
    ISC_CC_Configure(&ref_cc); 
    ISC_RLP_Configure(ISC_RLP_CFG_MODE_ARGB32_Val, 0); 
    ISC_Histogram_Table_Clear();
    ISC_CallBackRegister(isc_interrupt_callback, 0);
}


void DRV_ISC_Capture( uint32_t cam_bufferp )
{    
    /* Perform software reset of the interface */
    ISC_Software_Reset(); 
     /* Configure DMA */
    _DRV_ISC_Configure_DMA(cam_bufferp);
    ISC_Update_Profile(); 
    ISC_Enable_Interrupt(ISC_INTEN_DDONE_Msk);
    ISC_Start_Capture();
}
void DRV_ISC_Initialize( void )
{

    DRV_Camera_Init();
    /* Power down DPHY */
    MIPI_DPHY_Init();
    /* Reset CSI2DC Software */
    CSI2DC_Power_Up (false);
    CSI2DC_Initialize();
    
    MIPI_CSI_Init();
    MIPI_DPHY_Configure();
}
/* *****************************************************************************
 End of File
 */
