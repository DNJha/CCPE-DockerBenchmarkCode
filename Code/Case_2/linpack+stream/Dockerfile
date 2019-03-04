
FROM ubuntu:16.04
RUN apt-get update && apt-get install wget -y && apt-get install tar -y && apt-get install gcc -y 

RUN wget http://registrationcenter-download.intel.com/akdlm/irc_nas/9752/l_mklb_p_2018.0.006.tgz
RUN tar zxvf l_mklb_p_2018.0.006.tgz

RUN wget https://raw.githubusercontent.com/jeffhammond/STREAM/master/stream.c
RUN gcc -O -DSTREAM_ARRAY_SIZE=60000000 -DNTIMES=200 stream.c -o stream.50M

COPY out1.sh out1.sh
COPY out2.sh out2.sh
COPY execute.sh execute.sh

#this copy statement is for copying the run-time info for linpack
COPY file.txt file.txt

CMD ./execute.sh
