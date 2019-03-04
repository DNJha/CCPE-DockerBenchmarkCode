#!/bin/bash

#Build the image from the Dockerfile
#docker build -t netperf .

mkdir -p results
log="results/docker.log"
i=1


while [ $i -le 50]
do
 
   echo "----------------------------------" >> $log
   echo "Running Netperf TCP Stream started at: " >> $log
   echo ; date >> $log
   echo "iteration: " $i >> $log
   
   docker run --rm --name nettest --cpuset-cpus 0 -m 2048m --blkio-weight 500 netperf netperf -t TCP_STREAM -l 120 -H xx.xx.xx.xx >> $log
   echo "Iteration finished " $i >> $log
   echo ; date >> $log
   i=$(( i+1 ))
done


