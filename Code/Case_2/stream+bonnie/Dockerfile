
FROM ubuntu:16.04
RUN apt-get update && apt-get install -y wget tar gcc g++ && apt-get install make 
RUN wget http://www.coker.com.au/bonnie++/bonnie++-1.03e.tgz
RUN tar zxvf bonnie++-1.03e.tgz

RUN wget https://raw.githubusercontent.com/jeffhammond/STREAM/master/stream.c
RUN gcc -O -DSTREAM_ARRAY_SIZE=60000000 -DNTIMES=200 stream.c -o stream.50M

COPY out1.sh out1.sh
COPY out2.sh out2.sh
COPY execute.sh execute.sh

CMD ./execute.sh
