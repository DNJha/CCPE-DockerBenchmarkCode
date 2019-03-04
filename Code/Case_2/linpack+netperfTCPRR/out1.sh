#!/bin/bash

j=1
while [ 1 ]
do
   echo "----------------------------------" >> app/TCP1.txt
   echo "Running TCP RR started at: " >> app/TCP1.txt
   echo ; date >> app/TCP1.txt
   echo "TCP_RR Iteration:  " $j >> app/TCP1.txt
   
   echo "$(cd netperf-2.7.0 && ./configure && make && make install && netperf -t TCP_RR -l 120 -H #ip)" >> app/TCP1.txt	#ip: change with IP address
   echo "Finished TCP_RR Iteration " $j >> app/TCP1.txt
   echo ;date >> app/TCP1.txt
   j=$((j+1))
done


