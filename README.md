# TwoTrees Sapphire Plus SP5
Marlin Firmware: this is a non-offical project. 
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



# The Diamond Mount by Laurienzu
https://cults3d.com/en/3d-model/various/the-diamond-mount-direct-drive-hotend-mount-for-v6-nf-smart-dragon-dragonfly-zodiac-bmo-and-more-sapphire-pro-sp-3-plus-sp-5-printers-laurienzudesign-2

https://github.com/laurienzu/Marlin/tree/Two-Trees-SP-3-SP-5

The Diamond Mount Assembly Guide by Laurienzu
https://docs.google.com/presentation/d/1-Ee2e8QgYi-yDCYDKD2s8ehqo0UsH6LD/edit#slide=id.p32

General TwoTrees SP-3 SP-5 Suggested Upgrades + Diamond needed parts
https://docs.google.com/spreadsheets/d/1BW-cE3cIfOesapLvuGciVe0dl3kaHlzK0vwRGYZZXz4/edit#gid=152074595

# Social / Telegram Group ITA
https://web.telegram.org/z/#-1201369506
https://www.facebook.com/search/top?q=two%20trees%20sapphire%20plus%20italia

# Social / Telegram Group Global
https://web.telegram.org/z/#-1633907119
https://www.facebook.com/groups/805993576250577

# Raspberry Pi Pico + ADXL345: Portable resonance measurement 
https://klipper.discourse.group/t/raspberry-pi-pico-adxl345-portable-resonance-measurement/1757

# Wiring_Pinout_and_Size
https://github.com/makerbase-mks/MKS-Robin-Nano-V1.X/wiki/Wiring_Pinout_and_Size
https://github.com/makerbase-mks/MKS-Robin-Nano-V1.X/blob/master/hardware/MKS%20Robin%20Nano%20V1.2_004/MKS%20Robin%20Nano%20V1.2_004%20PIN.pdf

# Compare with other Printers
https://travis90x.altervista.org/stampanti-3d-boards-comparazione-2021/


