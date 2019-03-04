
FROM ubuntu:16.04
RUN apt-get update && apt-get install -y wget tar gcc && apt-get install make 
RUN wget http://registrationcenter-download.intel.com/akdlm/irc_nas/9752/l_mklb_p_2018.0.006.tgz
RUN tar zxvf l_mklb_p_2018.0.006.tgz

RUN wget http://www.numberworld.org/y-cruncher/y-cruncher%20v0.7.5.9481-static.tar.gz
RUN tar zxvf y-cruncher\ v0.7.5.9481-static.tar.gz



COPY out1.sh out1.sh
COPY out2.sh out2.sh
COPY execute.sh execute.sh

#this copy statement is for copying the run-time info for linpack
COPY file.txt file.txt


CMD ./execute.sh
