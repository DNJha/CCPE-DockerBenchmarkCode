#!/bin/bash

j=1
while [ 1 ]
do
   echo "----------------------------------" >> app/bon2.txt
   echo "Running Bonnie++ started at: " >> app/bon2.txt
   echo ; date >> app/bon2.txt
   echo "Iteration:  " $j >> app/bon2.txt

   echo "$(cd /bonnie++-1.03e && make all && ./bonnie++ -r 4096 -d /opt/ -s 8192 -n 2 -f -b -u root)" >> app/bon2.txt 
   echo "Bonnie++ finish iteration " $j >> app/bon2.txt
   echo ;date >> app/bon2.txt
   j=$((j+1))
done

