#!/bin/bash

j=1
while [ 1 ]
do
   echo "----------------------------------" >> app/TCP11.txt
   echo "Running TCP Stream 1 started at: " >> app/TCP11.txt
   echo ; date >> app/TCP11.txt
   echo "TCP_STREAM 1 Iteration:  " $j >> app/TCP11.txt
   
   echo "$(netperf -t TCP_STREAM -l 120 -H #ip)" >> app/TCP11.txt	#ip: change with IP address
   echo "Finished TCP_STREAM 1 Iteration " $j >> app/TCP11.txt
   j=$((j+1))
done
