
FROM ubuntu:16.04
RUN apt-get update && apt-get install wget -y
RUN wget http://www.numberworld.org/y-cruncher/y-cruncher%20v0.7.5.9481-static.tar.gz
RUN tar zxvf y-cruncher\ v0.7.5.9481-static.tar.gz

#CMD cd /y-cruncher\ v0.7.5.9481-static && ./y-cruncher bench 100m -PF:none

COPY out1.sh out1.sh
COPY out2.sh out2.sh
COPY execute.sh execute.sh


CMD ./execute.sh


