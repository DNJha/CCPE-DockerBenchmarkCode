#!/bin/bash

mkdir -p results1
log1="results1/docker.log"
j=1
while [ 1 ]
do
       	echo "----------------------------------" >> $log1
        echo "Running y-cruncher started at: "  >> $log1
        echo ; date >> $log1
        echo "y-cruncher iteration:  " $j >> $log1

       	echo "$(docker run --rm --name yc1 --cpuset-cpus 0 -m 2048m --blkio-weight 500 y-cruncher)" >> $log1
		echo "iteration finished " $j >> $log1
		echo ;date >> $log1
		j=$((j+1))
done




