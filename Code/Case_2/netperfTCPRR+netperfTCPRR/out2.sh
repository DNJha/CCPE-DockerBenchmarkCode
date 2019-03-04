#!/bin/bash

j=1
while [ 1 ]
do
   echo "----------------------------------" >> app/TCP12.txt
   echo "Running TCP RR 2 started at: " >> app/TCP12.txt
   echo ; date >> app/TCP12.txt
   echo "TCP_RR 2 Iteration:  " $j >> app/TCP12.txt
   
   echo "$(netperf -t TCP_RR -l 120 -H #ip)" >> app/TCP12.txt	#ip: change with IP address
   echo "Finished TCP_RR 2 Iteration " $j >> app/TCP12.txt
   echo ;date >> app/TCP12.txt
   j=$((j+1))
done