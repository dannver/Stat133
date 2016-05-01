#!/bin/bash

# file="yellow_tripdata_2009-01_clean.csv"
# col_names="p_time,d_time,num_passengers,distance,p_lat,p_long,d_lat,d_long,payment_type,fare,total"
# echo $col_names | cat - $file > "temp"
# mv "temp" $file

yellow="yellow_tripdata_"
green="green_tripdata_"
dir="taxi_data/"
extension=".csv"
col_names="p_time,d_time,num_passengers,distance,p_lat,p_long,d_lat,d_long,payment_type,fare,total"

for year in `seq 2009 2014`; do
    for month in `seq 1 12`; do
		if [ $month -lt 10 ]; then
		    file="$dir$yellow$year-0$month"
		else
		    file="$dir$yellow$year-$month"
		fi
		file=$file"_clean"$extension

		echo $col_names | cat - $file > "temp"
		mv "temp" $file
	done
done
