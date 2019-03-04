#!/bin/bash

j=1
while [ 1 ]
do
   echo "----------------------------------" >> app/YC2.txt
   echo "Running YC 2 started at: " >> app/YC2.txt
   echo ; date >> app/YC2.txt
   echo "YC 2 Iteration:  " $j >> app/YC2.txt
   
   echo "$(cd /y-cruncher\ v0.7.5.9481-static && ./y-cruncher bench 100m)" >> app/YC2.txt
   echo "Finished YC 2 Iteration " $j >> app/YC2.txt
   echo ;date >> app/YC2.txt
   j=$((j+1))
done