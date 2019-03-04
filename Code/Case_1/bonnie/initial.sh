#!/bin/bash

#Build the image from the Dockerfile
#docker build -t bonnie .

mkdir -p results
log="results/docker.log"
i=1

while [ $i -le 50 ]
do
   
   echo "----------------------------------" >> $log
   echo "Running Bonnie++ started at: " >> $log
   echo ; date >> $log
   echo "iteration: " $i >> $log

   docker run --rm --name bonnie --cpuset-cpus 0 -m 2048m --blkio-weight 500 bonnie >>$log
   echo "Iteration finished " $i >> $log
   echo ; date >> $log
   i=$(( i+1 ))
done

