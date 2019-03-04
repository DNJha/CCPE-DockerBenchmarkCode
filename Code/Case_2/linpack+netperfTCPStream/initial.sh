#!/bin/bash

#Build the image from the Dockerfile
docker build -t lin/tcp1 .

#Run the container
docker run --rm --name lin-TCP1 -v //c/Users/B6054669/netperf/linTCPStr:/app lin/tcp1 


echo "Done"
