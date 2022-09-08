#!/bin/bash
set -x #echo on
set -u  pipefail

# Take last files
FILENAME=$(ls -Art /tmp/resonances_x_*.csv | tail -n 1)

ALLCSV=/tmp/resonances_x_*.csv

DATE=$(date +'%Y-%m-%d-%H%M%S')

OUTDIR=/home/pi/klipper_config/input_shaper

 if [ ! -d "${OUTDIR}" ]; then
    mkdir "${OUTDIR}"
    ## Edit below with your username
    chown pi:pi "${OUTDIR}" 
fi


## File renamed with date from last two CSV files
~/klipper/scripts/calibrate_shaper.py $FILENAME -o "${OUTDIR}/shaper_calibrate_x_$DATE.png"

## Replace old png
cp "${OUTDIR}/shaper_calibrate_x_$DATE.png" "${OUTDIR}/1_shaper_calibrate_x.png"

mv /tmp/resonances_x_*.csv /home/pi/klipper_config/input_shaper/

mv $ALLCSV "$OUTDIR"
