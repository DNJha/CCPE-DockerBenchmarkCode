#!/bin/bash

j=1
while [ 1 ]
do
   echo "----------------------------------" >> app/str1.txt
   echo "Running Stream started at: " >> app/str1.txt
   echo ; date >> app/str1.txt
   echo "Stream iteration:  " $j >> app/str1.txt

   echo "$(./stream.50M)" >> app/str1.txt 
   echo "Stream Finish iteration " $i >> app/str1.txt
   echo ;date >> app/str1.txt
   j=$((j+1))   
done

