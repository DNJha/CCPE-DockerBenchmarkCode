
FROM ubuntu:16.04
RUN apt-get update && apt-get install -y wget tar gcc && apt-get install make 

RUN wget http://www.numberworld.org/y-cruncher/y-cruncher%20v0.7.5.9481-static.tar.gz
RUN tar zxvf y-cruncher\ v0.7.5.9481-static.tar.gz

RUN wget https://fossies.org/linux/misc/netperf-netperf-2.7.0.tar.gz
RUN tar zxvf netperf-netperf-2.7.0.tar.gz

COPY out1.sh out1.sh
COPY out2.sh out2.sh
COPY execute.sh execute.sh


CMD ./execute.sh


#https://fossies.org/linux/misc/netperf-netperf-2.7.0.tar.gz