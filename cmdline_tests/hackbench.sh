#!/bin/bash

REPTS=${1-4}
RESULTS=hackbench.txt

for i in `seq 1 $REPTS`; do
	../tools_arm64/hackbench 100 process 500 | tee >(grep 'Time:' | awk '{ print $2 }' >> $RESULTS)
done
