#!/bin/bash

i=1
while [ 1 ]
do
   echo "----------------------------------" >> app/lin2.txt
   echo "Running Linpack started at: "  >> app/lin2.txt
   echo ; date >> app/lin2.txt
   
   echo "Iteration:  " $i >> app/lin2.txt
   echo "$(cd l_mklb_p_2018.0.006/benchmarks_2018/linux/mkl/benchmarks/linpack &&./xlinpack_xeon64 -i $home/file.txt)" >> app/lin2.txt #>> $log2
   echo "Linpack iteration finished " $i >> app/lin2.txt
   echo ;date >> app/lin2.txt
   i=$((i+1))
done



