#!/bin/bash

j=1
while [ 1 ]
do
   echo "----------------------------------" >> app/str2.txt
   echo "Running Stream started at: " >> app/str2.txt
   echo ; date >> app/str2.txt
   echo "Stream iteration:  " $j >> app/str2.txt

   echo "$(./stream.50M)" >> app/str2.txt 
   echo "Stream Finish iteration " $i >> app/str2.txt
   echo ;date >> app/str2.txt
   j=$((j+1))
done

