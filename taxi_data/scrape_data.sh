#!/bin/bash
#Writted by Dannver Wu for Statistics 133 Final Group Project

yellowpath="https://storage.googleapis.com/tlc-trip-data/"
greenpath="https://storage.googleapis.com/tlc-trip-data/"
yellow="yellow_tripdata_"
green="green_tripdata_"
extension=".csv"

for year in `seq 2009 2014`; do
	for month in `seq 1 12`; do
		if [ $month -lt 10 ]; then
			url="$yellowpath$year/$yellow$year-0$month$extension"
		else
			url="$yellowpath$year/$yellow$year-$month$extension"
		fi
		wget $url
		if [ $month -lt 10 ]; then
			file="$yellow$year-0$month"
		else
			file="$yellow$year-$month"
		fi
		lines=($(wc -l "$file$extension"))
		lines=$((lines-1))
		new="$file_clean$extension"
 		tail -$lines "$file$extension" | shuf -n 20000 | cut -f 2,3,4,5,6,7,10,11,12,13,18 -d ',' > $new
		rm "$file$extension"
	done
done
