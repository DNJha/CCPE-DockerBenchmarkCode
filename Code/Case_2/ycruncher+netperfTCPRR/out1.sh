#!/bin/bash

j=1
while [ 1 ]
do
   echo "----------------------------------" >> app/TCP2.txt
   echo "Running TCP RR started at: " >> app/TCP2.txt
   echo ; date >> app/TCP2.txt
   echo "TCP_RR Iteration:  " $j >> app/TCP2.txt
   
   echo "$(cd netperf-netperf-2.7.0 && ./configure && make && make install && netperf -t TCP_RR -l 120 -H #ip)" >> app/TCP2.txt	#ip: change with IP address
   echo "Finished TCP_RR Iteration " $j >> app/TCP2.txt
   echo ;date >> app/TCP2.txt
   j=$((j+1))
done

