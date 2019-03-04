#!/bin/bash

#Build the image from the Dockerfile
docker build -t stream/tcp2 .

#Run the container
docker run --rm --name stream-TCP2 -v //c/Users/Docker/netperf/StreamTCPRR:/app stream/tcp2 


echo "Done"
