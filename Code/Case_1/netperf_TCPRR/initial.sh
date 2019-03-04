#!/bin/bash

#Build the image from the Dockerfile
#docker build -t netperf .

mkdir -p results
log="results/docker.log"
i=1

while [ $i -le 50 ]
do
 
   echo "----------------------------------" >> $log
   echo "Running Netperf TCP RR started at: " >> $log
   echo ; date >> $log
   echo "iteration: " $i >> $log

   docker run --rm --name tcprr --cpuset-cpus 0 -m 2048m netperf netperf -t TCP_RR -l 120 -H 172.17.0.2 >> $log 
   echo "Iteration finished " $i >> $log
   echo ; date >> $log
   i=$(( i+1 ))
done


