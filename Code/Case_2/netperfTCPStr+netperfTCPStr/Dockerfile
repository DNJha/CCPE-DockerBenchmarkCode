
FROM ubuntu:16.04
RUN apt-get update && apt-get install -y wget tar gcc g++ && apt-get install make 

RUN wget https://fossies.org/linux/misc/netperf-2.7.0.tar.gz
RUN tar zxvf netperf-2.7.0.tar.gz
RUN cd netperf-2.7.0 && ./configure && make && make install


COPY out1.sh out1.sh
COPY out2.sh out2.sh
COPY execute.sh execute.sh


CMD ./execute.sh
