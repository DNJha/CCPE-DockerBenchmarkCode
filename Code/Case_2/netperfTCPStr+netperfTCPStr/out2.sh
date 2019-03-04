#!/bin/bash

j=1
while [ 1 ]
do
   echo "----------------------------------" >> app/TCP12.txt
   echo "Running TCP Stream 2 started at: " >> app/TCP12.txt
   echo ; date >> app/TCP12.txt
   echo "TCP_STREAM 2 Iteration:  " $j >> app/TCP12.txt
   
   echo "$(netperf -t TCP_STREAM -l 120 -H #ip)" >> app/TCP12.txt	#ip: change with IP address
   echo "Finished TCP_STREAM 2 Iteration " $j >> app/TCP12.txt
   echo ;date
   j=$((j+1))
done