#!/bin/bash

mkdir -p results1
log1="results1/docker.log"
j=1
while [ 1 ]
do
       	echo "----------------------------------" >> $log1
        echo "Running Netperf started at: "  >> $log1
        echo ; date >> $log1
        echo "Netperf iteration:  " $j >> $log1

       	echo "$(docker run --rm --name nettest --cpuset-cpus 0 -m 2048m --blkio-weight 500 netperf netperf -t TCP_STREAM -l 120 -H #ip)" >> $log1 #ip: change with IP address
		echo "iteration finished " $j >> $log1
		echo ;date >> $log1
		j=$((j+1))
done

