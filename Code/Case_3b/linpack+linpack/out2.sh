#!/bin/bash

mkdir -p results
log="results/docker.log"
i=1
while [ 1 ]
do
	 echo "----------------------------------" >> $log
	 echo "Running Linpack started at: "  >> $log
	 echo ; date >> $log
	 echo "Iteration:  " $i >> $log
	 
	 echo "$(docker run --rm --name linpack2 --cpuset-cpus 1 -m 2048m --blkio-weight 500 lin)" >> $log
	 echo "iteration finished " $i >> $log
	 echo ;date >> $log
	 i=$((i+1))
done

