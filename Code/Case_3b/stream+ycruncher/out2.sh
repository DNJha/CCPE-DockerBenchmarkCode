#!/bin/bash

mkdir -p results1
log1="results1/docker.log"
i=1
while [ 1 ]
do
	 echo "----------------------------------" >> $log1
	 echo "Running Stream started at: "  >> $log1
	 echo ; date >> $log1
	 echo "Iteration:  " $i >> $log1

	 echo "$(docker run --rm --name stream1 --cpuset-cpus 1 -m 2048m --blkio-weight 500 stream)" >> $log1
	 echo "iteration finished " $i >> $log1
	 echo ;date >> $log1
	 i=$((i+1))
done

