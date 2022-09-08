#!/bin/bash
sleep 10
## Time to write the files of the tests
 
 FILENAME=$(ls -Art /tmp/raw_data_axis_*_belt-tension-*.csv | tail -n 1)
date=$(date +'%Y-%m-%d-%H%M%S')
 
OUTDIR=/home/pi/klipper_config/input_shaper
 if [ ! -d "${OUTDIR}" ]; then
    mkdir "${OUTDIR}"
    ## Edit below with your username
    chown pi:pi "${OUTDIR}" 
fi


## File renamed with date
## ~/klipper/scripts/graph_accelerometer.py -c $FILENAME -o "${OUTDIR}/input_shaper/resonances_$DATE.png"

## Keep the last one png
~/klipper/scripts/graph_accelerometer.py -c $FILENAME -o ${OUTDIR}/input_shaper/resonances.png

## Clean TMP folder and let you see all files from klipper
mv $FILENAME $OUTDIR
