#!/bin/bash

#rm *.csv

rsync -cv ~/git/zambia-paper/data/raw/facility-demand-17.csv \
    reference-facilities-daily-demand-mean.csv

rsync -cv ~/git/zambia-paper/data/clean/facility-demand-17-weekly-normalized.csv \
    reference-facilities-normalized-weekly-demand-mean.csv

rsync -cv \
    ~/git/zambia-paper/data/stock-card-transactions/zach.csv \
    stock-card-transactions.csv

rsync -cv \
    ~/git/zambia-paper/msom/data.md \
    README.md





