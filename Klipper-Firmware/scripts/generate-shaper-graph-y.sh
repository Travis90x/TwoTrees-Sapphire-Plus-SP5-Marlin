#!/bin/bash

NEWX=$(ls -Art /tmp/resonances_y_*.csv | tail -n 1)
DATE=$(date +'%Y-%m-%d-%H%M%S')
if [ ! -d "/home/pi/klipper_config/input_shaper" ]
then
    mkdir /home/pi/klipper_config/input_shaper
    chown pi:pi /home/pi/klipper_config/input_shaper
fi

#~/klipper/scripts/calibrate_shaper.py $NEWX -o /home/pi/klipper_config/input_shaper/resonances_y_$DATE.png
~/klipper/scripts/calibrate_shaper.py $NEWX -o /home/pi/klipper_config/input_shaper/resonances_y.png

mv /tmp/resonances_y_* /home/pi/klipper_config/input_shaper/
