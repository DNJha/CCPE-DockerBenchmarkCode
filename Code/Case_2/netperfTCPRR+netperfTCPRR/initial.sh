#!/bin/bash

#Build the image from the Dockerfile
docker build -t net2/tcp2 .

#Run the container
docker run --rm --name net2-TCP2 -v //c/Users/Docker/netperf/net2-TCPRR:/app net2/tcp2 


echo "Done"
