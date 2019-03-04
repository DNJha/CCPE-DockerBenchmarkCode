
FROM ubuntu:16.04
RUN apt-get update && apt-get install -y wget tar gcc && apt-get install make 

RUN wget https://raw.githubusercontent.com/jeffhammond/STREAM/master/stream.c
RUN gcc -O -DSTREAM_ARRAY_SIZE=60000000 -DNTIMES=200 stream.c -o stream.50M

RUN wget http://www.numberworld.org/y-cruncher/y-cruncher%20v0.7.5.9481-static.tar.gz
RUN tar zxvf y-cruncher\ v0.7.5.9481-static.tar.gz



COPY out1.sh out1.sh
COPY out2.sh out2.sh
COPY execute.sh execute.sh

CMD ./execute.sh
