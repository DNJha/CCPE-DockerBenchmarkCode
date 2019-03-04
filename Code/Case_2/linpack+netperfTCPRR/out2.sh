#!/bin/bash

i=1
while [ 1 ]
do
   echo "----------------------------------" >> app/lin.txt
   echo "Running Linpack started at: " >> app/lin.txt
   echo ; date >> app/lin.txt
   echo "Iteration:  " $i >> app/lin.txt
   
   echo "$(cd /l_mklb_p_2018.0.006/benchmarks_2018/linux/mkl/benchmarks/linpack && ./xlinpack_xeon64 -i $home/file.txt)" >> app/lin.txt 
   echo "Linpack iteration finished " $i >> app/lin.txt
   echo ;date >> app/lin.txt
   i=$((i+1))
done
