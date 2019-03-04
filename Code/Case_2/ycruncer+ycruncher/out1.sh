#!/bin/bash

j=1
while [ 1 ]
do
   echo "----------------------------------" >> app/YC1.txt
   echo "Running YC 1 started at: " >> app/YC1.txt
   echo ; date >> app/YC1.txt
   echo "YC 1 Iteration:  " $j >> app/YC1.txt
   
   echo "$(cd /y-cruncher\ v0.7.5.9481-static && ./y-cruncher bench 100m)" >> app/YC1.txt
   echo "Finished YC 1 Iteration " $j >> app/YC1.txt
   echo ;date >> app/YC1.txt
   j=$((j+1))
done
