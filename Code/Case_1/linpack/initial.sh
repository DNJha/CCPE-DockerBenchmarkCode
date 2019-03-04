#!/bin/bash

#Build the image from the Dockerfile
#docker build -t lin .

mkdir -p results
log="results/docker.log"

i=1
while [ $i -le 50 ]
do

	echo "-----------------------" >> $log
	echo "Running Linpack started at: " >> $log
	echo ; date >> $log
	echo "iteration: " $i >> $log
	
	echo "$(docker run --rm --name lin --cpuset-cpus 0 -m 2048m --blkio-weight 500 lin)" >>$log
	echo "Iteration finished " $i >> $log
	echo ;date >>$log
	i=$((i+1))
done



