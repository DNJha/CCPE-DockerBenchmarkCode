#!/bin/bash

i=1
while [ 1 ]
do
   echo "----------------------------------" >> app/stream.txt
   echo "Running Stream started at: " >> app/stream.txt
   echo ; date >> app/stream.txt
   echo "Stream iteration:  " $i >> app/stream.txt

   echo "$(./stream.50M)" >> app/stream.txt 
   echo "iteration finished " $i >> app/stream.txt
   echo ;date >> app/stream.txt
   i=$((i+1))
done
