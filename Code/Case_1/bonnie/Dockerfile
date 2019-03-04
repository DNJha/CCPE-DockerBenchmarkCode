
FROM ubuntu:16.04
RUN apt-get update && apt-get install wget -y && apt-get install g++ -y && apt-get install make
RUN wget http://www.coker.com.au/bonnie++/bonnie++-1.03e.tgz
RUN tar zxvf bonnie++-1.03e.tgz

CMD cd /bonnie++-1.03e && make all && ./bonnie++ -r 4096 -d /opt/ -u root -n 2 -s 8192  -f -b
