#!/bin/bash

docker build -t lin/tcp2 .

docker run --rm --name lin-TCP2 -v //c/Users/B6054669/Docker/netperf/linTCPRR:/app lin/tcp2 


echo "Done"
