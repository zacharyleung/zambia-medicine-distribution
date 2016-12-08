#!/bin/bash

#rm *.csv

#rsync -cv \
cp \
    ~/git/zambia-paper/data-new/lead-time/primary-historical-leadtimes.csv \
    primary-leadtimes-historical-data.csv

#rsync -cv \
cp \
    ~/git/zambia-paper/data-new/msom.md \
    README.md

rsync -cv \
    ~/git/zambia-paper/data/lead-time/replenishment.csv \
    district-data.csv

rsync -cv \
    ~/git/zambia-paper/data/msom/facility-data.csv \
    .

rsync -cv \
    ~/git/zambia-paper/data/raw/facility-demand-17.csv \
    reference-facilities-daily-demand-mean.csv

rsync -cv \
    ~/git/zambia-paper/data/lead-time/secondary-leadtimes.csv \
    secondary-leadtimes-historical-data.csv

rsync -cv \
    ~/git/zambia-paper/data/stock-card-transactions/zach.csv \
    stock-card-all.csv

rsync -cv \
    ~/git/zambia-paper/data/stock-card-transactions/zach.csv \
    stock-card-all.csv





