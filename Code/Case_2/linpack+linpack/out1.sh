#!/bin/bash

i=1
while [ 1 ]
do
   echo "----------------------------------" >> app/lin1.txt
   echo "Running Linpack started at: "  >> app/lin1.txt
   echo ; date >> app/lin1.txt
   echo "Iteration:  " $i >> app/lin1.txt
   
   echo "$(cd l_mklb_p_2018.0.006/benchmarks_2018/linux/mkl/benchmarks/linpack &&./xlinpack_xeon64 -i $home/file.txt)" >> app/lin1.txt #>> $log2
   echo "Linpack iteration finished " $i >> app/lin1.txt
   echo ;date >> app/lin1.txt
   i=$((i+1))
done



