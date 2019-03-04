FROM ubuntu:16.04
RUN apt-get update && apt-get install wget -y 
RUN wget http://registrationcenter-download.intel.com/akdlm/irc_nas/9752/l_mklb_p_2018.0.006.tgz
RUN tar zxvf l_mklb_p_2018.0.006.tgz

COPY file.txt file.txt
CMD cd /l_mklb_p_2018.0.006/benchmarks_2018/linux/mkl/benchmarks/linpack && ./xlinpack_xeon64 -i $home/file.txt

