#!/bin/bash
args="$@"

for file in $args; do
	lines=($(wc -l $file))
	tail -$lines $file | shuf -n 20000 | cut -f 2,3,4,5,6,7,10,11,12,13,19 -d ',' > $file
done
