#!/bin/bash

mkdir -p results1
log1="results1/docker.log"
j=1
while [ 1 ]
do
       	echo "----------------------------------" >> $log1
        echo "Running y-cruncher started at: "  >> $log1
        echo ; date >> $log1
        echo "y-cruncher2 iteration:  " $j >> $log1

       	echo "$(docker run --rm --name yc1 y-cruncher)" >> $log1
		echo "y-cruncher1 iteration finished " $j >> $log1
		echo ;date >> $log1
		j=$((j+1))
done


