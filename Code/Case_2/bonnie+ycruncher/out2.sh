#!/bin/bash

i=1
while [ 1 ]
do
   echo "----------------------------------" >> app/bonnie.txt
   echo "Running Bonnie++ started at: " >> app/bonnie.txt
   echo ; date >> app/bonnie.txt
   echo "Iteration:  " $i >> app/bonnie.txt
   
   echo "$(cd /bonnie++-1.03e && make all && ./bonnie++ -r 4096 -d /opt/ -s 8192 -n 2 -f -b -u root)" >> app/bonnie.txt 
   echo "Bonnie++ iteration finished " $i >> app/bonnie.txt
   echo ;date >> app/bonnie.txt
   i=$((i+1))
done
