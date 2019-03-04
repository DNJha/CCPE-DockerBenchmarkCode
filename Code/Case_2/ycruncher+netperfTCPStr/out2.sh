#!/bin/bash

j=1
while [ 1 ]
do
   echo "----------------------------------" >> app/yc.txt
   echo "Running YC started at: " >> app/yc.txt
   echo ; date >> app/yc.txt
   echo "YC Iteration:  " $j >> app/yc.txt
   
   echo "$(cd /y-cruncher\ v0.7.5.9481-static && ./y-cruncher bench 100m)" >> app/yc.txt
   echo "Finished YC Iteration " $j >> app/yc.txt
   echo ;date >> app/yc.txt
   j=$((j+1))
done


