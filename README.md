# Marlin-Firmware-TwoTrees-Sapphire-Plus-SP5
This is a non-offical project. 
This repo contains one preconfigured Marlin 2.1.x bugifix fimrware versions for 3D-Printer "TwoTrees Sapphire Plus or SP5".
There are several different revisions of this printer, so you have to choose your Sapphire "Variant" in configuration.h file. 
I will release compiled Firmware for main Versions of it.
The Sapphire Pro (New Name: SP-3) are not supported yet. 
If you've got a Printer: Please feel free to do a pull-request, when your firmware is working.


# Configuration.h

If you have a Stock Variant of Sapphire, you have to edit only few settings.

#define LCD_LANGUAGE XX  (en for english)

You have to choose Sapphire Variant (according to your stepper drivers configuration, and if it has 2 Z_Driver and 2 Z_EndStop)

#define SapphirePlusVariant *
/** CHOOSE YOUR SAPPHIRE PLUS CONFIGURATION
  * 1: 	X tmc2208, Y tmc2208, E a4988, 	 single Z a4988,    1 endstop
 * 10:  X tmc2208, Y tmc2208, E a4988, 	 dual 	Z a4988,  	2 endstops
 * 11:	X tmc2208, Y tmc2208, E tmc2208, dual 	Z a4988,  	2 endstops
 * 2:  	X tmc2208, Y tmc2208, E a4988, 	 dual 	Z tmc2208, 	2 endstops
 * 3:  	X tmc2208, Y tmc2208, E tmc2208, single Z tmc2208, 	1 endstop
 * 4:  	X tmc2208, Y tmc2208, E tmc2208, dual 	Z tmc2208, 	1 endstop
 * 44: 	X tmc2225, Y tmc2225, E tmc2225, dual 	Z tmc2225, 	1 endstop
 * 5:  	X tmc2208, Y tmc2208, E tmc2208, dual 	Z tmc2208, 	2 endstops
 * 6:  	X tmc2208, Y tmc2208, E tmc2208, dual 	Z a4988,  	2 endstops
 * 7:  	X tmc2209, Y tmc2209, E tmc2209, dual 	Z tmc2225, 	2 endstops
 * 8:  	X tmc2209, Y tmc2209, E tmc2209, dual 	Z tmc2209, 	1 endstop
 
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
