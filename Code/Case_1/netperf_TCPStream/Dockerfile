
FROM ubuntu:16.04
RUN apt-get update && apt-get install -y wget tar gcc
RUN apt-get install make
RUN wget https://fossies.org/linux/misc/netperf-2.7.0.tar.gz
RUN tar zxvf netperf-2.7.0.tar.gz
RUN cd netperf-2.7.0 && ./configure && make && make install
