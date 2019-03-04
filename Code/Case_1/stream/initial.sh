#!/bin/bash

#Build the image from the Dockerfile
#docker build -t stream .

mkdir -p results
log="results/docker.log"
i=1

while [ $i -le 50 ]
do
   
   echo "----------------------------------" >> $log
   echo "Running STREAM started at: " >> $log
   echo ; date >> $log
   echo "iteration: " $i >> $log

   docker run --rm --name stream --cpuset-cpus 1 -m 2048m --blkio-weight 500 stream >>$log
   echo "Iteration finished " $i >> $log
   echo ; date >> $log
   i=$(( i+1 ))
done
