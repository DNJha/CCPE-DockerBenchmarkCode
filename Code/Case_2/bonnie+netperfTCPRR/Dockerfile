
FROM ubuntu:16.04
RUN apt-get update && apt-get install -y wget tar gcc g++ && apt-get install make 

RUN wget http://www.coker.com.au/bonnie++/bonnie++-1.03e.tgz
RUN tar zxvf bonnie++-1.03e.tgz

RUN wget https://fossies.org/linux/misc/netperf-2.7.0.tar.gz
RUN tar zxvf netperf-2.7.0.tar.gz



COPY out1.sh out1.sh
COPY out2.sh out2.sh
COPY execute.sh execute.sh

CMD ./execute.sh
