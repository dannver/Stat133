#!/bin/bash
#Writted by Dannver Wu for Statistics 133 Final Group Project


# args="$@"

# url="https://storage.googleapis.com/tlc-trip-data/2009/yellow_tripdata_2009-01.csv"
# wget $url
lines=($(wc -l "yellow_tripdata_2009-01.csv"))
new="yellow_tripdata_2009-01_clean.csv"
echo $lines
eval "tail -$lines yellow_tripdata_2009-01.csv | shuf -n 20000 | > $new"

# yellowpath="https://storage.googleapis.com/tlc-trip-data/"
# greenpath="https://storage.googleapis.com/tlc-trip-data/"
# yellow="yellow_tripdata_"
# green="green_tripdata_"
# extension=".csv"

# for year in `seq 2009 2015`; do
# 	for month in `seq 1 12`; do
# 		if [ $month -lt 10 ]; then
# 			url="$yellowpath$year/$yellow$year-0$month$extension"
# 		else
# 			url="$yellowpath$year/$yellow$year-$month$extension"
# 		fi
# 		wget $url
# 		if [ $month -lt 10 ]; then
# 			file="$yellow$year-0$month"
# 		else
# 			file="$yellow$year-$month"
# 		lines=($(wc -l "$file$extension"))
# 		new="$file_clean$extension"
# 		tail -$lines $file | shuf -n 20000 | cut -f 2,3,4,5,6,7,10,11,12,13,19 -d ',' > $new
# 	done
# done


# for file in $args; do
	# lines=($(wc -l $file))
	# new="$file.clean"
	# tail -$lines $file | shuf -n 20000 | cut -f 2,3,4,5,6,7,10,11,12,13,19 -d ',' > $new
# done