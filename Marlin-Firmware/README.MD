# Marlin Firmware
## click above on "default" and select the branch 2.0.x or 2.1.x (bugfix) for TwoTrees Sapphire Plus SP5 

This is a non-offical project. 

This repo contains one preconfigured Marlin 2.0.x/2.1.x bugfix firmware versions for 3D-Printer "TwoTrees Sapphire Plus or SP5".

There are several different revisions of this printer, so you have to choose your Sapphire "Variant" in configuration.h file. 

# ISSUES ON FIRST BOOT AFTER FLASH MARLIN FIRMWARE

After the flash of an updated Marlin firmware, the LCD Display may not work or the calibration setting is stuck.

## Phase 1
In this case, remove SDcard, unplug the power cord, wait 10 seconds, replug power cord and turn on the printer.

Try this at least 2 times.

## Phase 2
If errors stll occurs, reconnect the sdcard to PC, rename the robin_nano35.cur in robin_nano35.bin and

reflash the firmware: try to reflash al least 2 times.

In issues persist with calibration display, repeat Phase 1.


## Initialize Firmware
After entering in the Marlinmenu, initialize the new firmware with this commands:

Initialize EEPROM

in Configuratio menu, page 2 (under Preheat PLA...)

Restore Defaults

Save Settings

Load Settings

If errors occurs, follow Phase 1 and 2.


