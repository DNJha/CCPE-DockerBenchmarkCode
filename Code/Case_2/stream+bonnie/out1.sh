#!/bin/bash

j=1
while [ 1 ]
do
   echo "----------------------------------" >> app/stream.txt
   echo "Running Stream started at: " >> app/stream.txt
   echo ; date >> app/stream.txt
   echo "Stream Iteration:  " $j >> app/stream.txt
   
   echo "$(./stream.50M)" >> app/stream.txt 
   echo "Stream Finish iteration " $j >> app/stream.txt
   echo ;date >> app/stream.txt
   j=$((j+1))
done

