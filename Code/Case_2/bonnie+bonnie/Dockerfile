
FROM ubuntu:14.04
RUN apt-get update && apt-get install -y wget tar g++ && apt-get install make 

RUN wget http://www.coker.com.au/bonnie++/bonnie++-1.03e.tgz
RUN tar zxvf bonnie++-1.03e.tgz

COPY out1.sh out1.sh
COPY out2.sh out2.sh
COPY execute.sh execute.sh


CMD ./execute.sh
