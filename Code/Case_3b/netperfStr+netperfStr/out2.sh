#!/bin/bash

mkdir -p results
log="results/docker.log"
i=1
while [ 1 ]
do
	 echo "----------------------------------" >> $log
	 echo "Running Netperf started at: "  >> $log
	 echo ; date >> $log
	 echo "Netperf1 iteration:  " $i >> $log

	 echo "$(docker run --rm --name nettest1 --cpuset-cpus 1 -m 2048m --blkio-weight 500 netperf netperf -t TCP_STREAM -l 120 -H #ip)" >> $log	#ip: change with IP address
	 echo "iteration finished " $i >> $log
	 echo ;date >> $log
	 i=$((i+1))
done

