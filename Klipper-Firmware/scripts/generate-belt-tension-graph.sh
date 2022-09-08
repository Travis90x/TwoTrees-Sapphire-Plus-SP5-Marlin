#!/bin/bash
sleep 10
## Time to write the files of the tests
 
outdir=/home/pi/klipper_config/input_shaper
 
if [ ! -d "${outdir}" ]; then
    mkdir "${outdir}"
    ## Edit below with your username
    chown pi:pi "${outdir}" 
fi

~/klipper/scripts/graph_accelerometer.py -c /tmp/raw_data_axis*.csv -o /home/pi/klipper_config/input_shaper/resonances.png
## Clean TMP folder and let you see all files from klipper
mv /tmp/raw_data_axis* "${outdir}"
