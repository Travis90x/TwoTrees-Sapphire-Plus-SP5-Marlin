#!/bin/bash
## set -x #echo on # don't activate if use script in klipper
# set -e -u -o pipefail

# sleep 3
## Time to write the files of the tests

# Take last files
FILE1=$(ls -Art /tmp/raw_data_axis=1.000,*.csv | tail -n 1)
FILE2=$(ls -Art /tmp/raw_data_axis=1.000,-1*.csv | tail -n 1)

rm /tmp/File_raw_data*.csv > /dev/null 2>&1
cp "$FILE1" /tmp/File_raw_data1.csv
cp "$FILE2" /tmp/File_raw_data2.csv

ALLCSV=/tmp/raw_data_axis*.csv

DATE=$(date +'%Y-%m-%d-%H%M%S')
 
OUTDIR=~/klipper_config/input_shaper
 if [ ! -d "${OUTDIR}" ]; then
    mkdir "${OUTDIR}"
    ## Edit below with your username
    chown pi:pi "${OUTDIR}" 
fi


## File renamed with date from last two CSV files
~/klipper/scripts/graph_accelerometer.py -c /tmp/File_raw_data*.csv -o "${OUTDIR}/resonances_$DATE.png"

## Replace old png
cp "${OUTDIR}/resonances_$DATE.png" "${OUTDIR}/0_resonances.png"

## Clean TMP folder and let you see all files from klipper
rm /tmp/File_raw_data*.csv
mv $ALLCSV "$OUTDIR"
