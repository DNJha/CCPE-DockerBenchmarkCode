#!/bin/bash

#docker build -t y-cruncher .

mkdir -p results
log="results/docker.log"
i=1

while [ $i -le 50 ]
do
   
   echo "----------------------------------" >> $log
   echo "Running Y-Cruncher started at: " >> $log
   echo ; date >> $log
   echo "iteration: " $i >> $log

   docker run --rm --name yc --cpuset-cpus 1 -m 2048m --blkio-weight 500 y-cruncher >>$log
   
   echo "Iteration finished " $i >> $log
   echo ; date >> $log
   i=$(( i+1 ))
done
