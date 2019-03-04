#!/bin/bash

mkdir -p results
log="results/docker.log"
i=1
while [ 1 ]
do
	 echo "----------------------------------" >> $log
	 echo "Running Stream started at: "  >> $log
	 echo ; date >> $log
	 echo "Iteration:  " $i >> $log
	 
	 echo "$(docker run --rm --name bonnie1 bonnie)" >> $log
	 echo "iteration finished " $i >> $log
	 echo ;date >> $log
	 i=$((i+1))
done

