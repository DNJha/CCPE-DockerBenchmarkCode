#!/bin/bash

mkdir -p results1
log="results1/docker.log"
j=1
while [ 1 ]
do
       	echo "----------------------------------" >> $log
        echo "Running Netperf started at: "  >> $log
        echo ; date >> $log
        echo "Netperf iteration:  " $j >> $log

       	echo "$(docker run --rm --name tcprr netperf netperf -t TCP_STREAM -l 120 -H #ip)" >> $log	#ip: change with IP address
		echo "iteration finished " $j >> $log
		echo ;date >> $log
		j=$((j+1))
done




