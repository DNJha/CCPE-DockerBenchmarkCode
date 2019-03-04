#!/bin/bash

mkdir -p results1
log1="results1/docker.log"
j=1
while [ 1 ]
do
    echo "----------------------------------" >> $log1
    echo "Running Stream started at: "  >> $log1
    echo ; date >> $log1
    echo "Iteration:  " $j >> $log1

    echo "$(docker run --rm --name stream stream)" >> $log1
	echo "iteration finished " $j >> $log1
	echo ;date >> $log1
	j=$((j+1))
done

