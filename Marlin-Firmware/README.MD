# Marlin Firmware 2.0.x bugfix (2.0.9.5) for TwoTrees Sapphire Plus SP5 

This is a non-offical project. 
This repo contains one preconfigured Marlin 2.0.x bugifix firmware version for 3D-Printer "TwoTrees Sapphire Plus or SP5".
There are several different revisions of this printer, so you have to choose your Sapphire "Variant" in configuration.h file. 

# Configuration.h

If you have a Stock Variant of Sapphire, you have to edit only few settings.

##Language
#define LCD_LANGUAGE XX  (en for english)

Default LCD_LANGUAGE is italian

## Sapphire Variant
You have to choose Sapphire Variant (according to your stepper drivers configuration)

Configure z_endstop_qty if you use 0, 1 or 2 physics Z endstops

If use BLTouch without endstops z, connect BL Touch to ZMIM PA11 pin (Z-)

If use BLtouch with 1 or 2 endstop z, connect BL Touch on PE6 pin (MT_DET2)

#define SapphirePlusVariant *
 * CHOOSE YOUR SAPPHIRE PLUS VARIANT
 * 1: 	X tmc2208, Y tmc2208, E a4988, 	 single Z a4988
 * 10:  X tmc2208, Y tmc2208, E a4988, 	 dual 	Z a4988
 * 11:	X tmc2208, Y tmc2208, E tmc2208, dual 	Z a4988
 * 2: 	X tmc2208, Y tmc2208, E a4988, 	 dual 	Z tmc2208
 * 3: 	X tmc2208, Y tmc2208, E tmc2208, single Z tmc2208
 * 4: 	X tmc2208, Y tmc2208, E tmc2208, dual 	Z tmc2208
 * 44: 	X tmc2225, Y tmc2225, E tmc2225, dual 	Z tmc2225
 * 5: 	X tmc2208, Y tmc2208, E tmc2208, dual 	Z tmc2208
 * 6: 	X tmc2208, Y tmc2208, E tmc2208, dual 	Z a4988
 * 7: 	X tmc2209, Y tmc2209, E tmc2209, dual 	Z tmc2225
 * 8: 	X tmc2209, Y tmc2209, E tmc2209, dual 	Z tmc2209

 
#define SAPPHIRE_PLUS_TMC_UART           
// 2209 UART addresses: 4 steppers with 1 dire on PIN PA9 (X,Y,Z,Z2) 1 stepper on PA10 (E0)

#define SAPPHIRE_PLUS_TMC_UART_DIRECT
// UART 2208 single PIN for each DRIVER

#define SAPPHIRE_PLUS_MKS_UI  // Not preferred - comment it to use COLOR_UI
// it enable classic UI of TwoTrees with coloured icons (ATTENTION: copy assets folder into root sdcard)

#define ROTATED_SCREEN
//to rotate screen of 180 degrees if necessary

#define SAPPHIRE_PLUS_RUNOUT    // Filament Sensor

Define SAPPHIRE_PLUS_BLTOUCH
you can use BL-Touch on PIN PE6 for bed leveling and 1 or 2 Z_Enstops for Homing.

#define probe_x probe_y probe_z (position of BLTouch respect Nozzle)
 
#define SEPARATED_Z_MOTORS 
// to enable probe without Endstops and with or without BLTouch for non belt-synced Z step motors

#define SAPPHIRE_PLUS_DIRECTDRIVE         // Direct Drive Mode (no browden)

#define HE1ASHE0 // use HE1 instead H0 if Mosfet HE0 is damaged

#define SAPPHIRE_PLUS_AUTOFAN           // Power ON fans on "Hot-End-1 pinout" PIN: PB0 when Hotend >= 50°

#define MOTHERBOARD BOARD_MKS_ROBIN_NANO // for V1.2
otherwise BOARD_MKS_ROBIN_NANO_V1.3_F4 or BOARD_MKS_ROBIN_NANO_V2


