# Marlin Firmware 2.0.x (bugfix) for TwoTrees Sapphire Plus SP5 

This is a non-offical project. 
This repo contains one preconfigured Marlin 2.0.x bugifix fimrware versions for 3D-Printer "TwoTrees Sapphire Plus or SP5".
There are several different revisions of this printer, so you have to choose your Sapphire "Variant" in configuration.h file. 
I will release compiled Firmware for main Versions of it.
The Sapphire Pro (New Name: SP-3) are not supported yet. 
If you've got a Printer: Please feel free to do a pull-request, when your firmware is working.


# Configuration.h

If you have a Stock Variant of Sapphire, you have to edit only few settings.

#define LCD_LANGUAGE XX  (en for english)

You have to choose Sapphire Variant (according to your stepper drivers configuration)

Configure z_endstop_qty if you use 0, 1 or 2 physics Z endstops
If use BLTouch without endstops z, connect BL Touch to ZMIM PA11 pin (Z-)
If use BLtouch with 1 or 2 endstop z, connect BL Touch on PE6 pin (MT_DET2

#define SapphirePlusVariant *
/** CHOOSE YOUR SAPPHIRE PLUS CONFIGURATION
* 1:__X_tmc2208,_Y_tmc2208,_E_a4988,___single_Z_a4988,____1_endstop
* 10:_X_tmc2208,_Y_tmc2208,_E_a4988,___dual_Z_a4988,_____2_endstops
* 11:_X_tmc2208,_Y_tmc2208,_E_tmc2208,_dual_Z_a4988,_____2_endstops
* 2:__X_tmc2208,_Y_tmc2208,_E_a4988,___dual_Z_tmc2208,___2_endstops
* 3:__X_tmc2208,_Y_tmc2208,_E_tmc2208,_single_Z_tmc2208,_1_endstop
* 4:__X_tmc2208,_Y_tmc2208,_E_tmc2208,_dual_Z_tmc2208,___1_endstop
* 44:_X_tmc2225,_Y_tmc2225,_E_tmc2225,_dual_Z_tmc2225,___1_endstop
* 5:__X_tmc2208,_Y_tmc2208,_E_tmc2208,_dual_Z_tmc2208,___2_endstops
* 6:__X_tmc2208,_Y_tmc2208,_E_tmc2208,_dual_Z_a4988,______2_endstops
* 7:__X_tmc2209,_Y_tmc2209,_E_tmc2209,_dual_Z_tmc2225,___2_endstops
* 8:__X_tmc2209,_Y_tmc2209,_E_tmc2209,_dual_Z_tmc2209,___1_endstop

 
#define SAPPHIRE_PLUS_TMC_UART           
// 2209 UART addresses: 4x on PIN PA9 (X,Y,Z,Z2) 1x on PA10 (E0)

#define SAPPHIRE_PLUS_TMC_UART_DIRECT
// UART 2208 single PIN for each DRIVER

#define SAPPHIRE_PLUS_MKS_UI  // Not preferred - comment it to use COLOR_UI
// it enable classic UI of TwoTrees with coloured icons (ATTENTION: copy assets folder into root sdcard)

#define ROTATED_SCREEN
//to rotate screen of 180 degrees if necessary

#define SAPPHIRE_PLUS_RUNOUT    // Filament Sensor

Define SAPPHIRE_PLUS_BLTOUCH
if you use it (it will be connected replacing Z1 Endstop, and without Z2 Endstop)

Define BLTOUCH_WITH_ENDSTOPS
if you use BL-Touch on PIN PE6 for bed leveling and two Z_Enstops for Homing.

#define probe_x probe_y probe_z (position of BLTouch respect Nozzle)
 
#define SEPARATED_Z_MOTORS // to enable probe without Endstops and withous BLTouch for non synched Plus Z step motors

#define SAPPHIRE_PLUS_DIRECTDRIVE         // Direct Drive Mode (no browden)

#define HE1ASHE0 // use HE1 instead H0 if Mosfet HE0 is damaged

#define SAPPHIRE_PLUS_AUTOFAN           // Power ON fans on "Hot-End-1 pinout" PIN: PB0 when Hotend >= 50°

#define MOTHERBOARD BOARD_MKS_ROBIN_NANO // for V1.2
otherwise BOARD_MKS_ROBIN_NANO_V1.3_F4 or BOARD_MKS_ROBIN_NANO_V2


