#!/bin/bash
sleep 3
## Time to write the files of the tests

NEWX=$(ls -Art /tmp/resonances_x_*.csv | tail -n 1)

DATE=$(date +'%Y-%m-%d-%H%M%S')
 
outdir=/home/pi/klipper_config/input_shaper
 
if [ ! -d "${outdir}" ]; then
    mkdir "${outdir}"
    ## Edit below with your username
    chown pi:pi "${outdir}" 
fi

## File renamed with Date
#~/klipper/scripts/calibrate_shaper.py $NEWX -o /home/pi/klipper_config/input_shaper/resonances_x_$DATE.png

## Keep the last one png
~/klipper/scripts/calibrate_shaper.py $NEWX -o /home/pi/klipper_config/input_shaper/resonances_x.png

## Clean TMP folder and let you see all files from klipper
mv /tmp/resonances_x_* /home/pi/klipper_config/input_shaper/
