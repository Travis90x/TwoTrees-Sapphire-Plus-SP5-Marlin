# Klipper ADXL345 with RP4020 Zero or Robin Nano
Copy scipts in your ~/klipper/scripts/ folder  (ex. /home/pi/klipper/scripts/)
Copy .cfg files in your /home/pi/klipper_config/

Edit your printer.cfg and add
[include pico.cfg]
[include shell_command.cfg]

Pico.cfg is needed for ADXL345 with RP4020 (a clone of Raspberry Pi Pico)
as a secondary MCU (usb connected, ex. to Android TV Box with Armbian)
or for ADXL345 connected to Robin Nano v1.2 SDcard pins

Important: with ACCELEROMETER_QUERY et similar, only on the first time you will got an error, so retry the test.


# Klipper-for-TwoTrees-Sapphire-Plus-SP5

https://github.com/Travis90x/TwoTrees-Sapphire-Plus-SP5/wiki/Klipper
