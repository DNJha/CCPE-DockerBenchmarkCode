#!/bin/bash

#Build the image from the Dockerfile
docker build -t net2/tcp1 .

#Run the container
docker run --rm --name net2-TCP1 -v //c/Users/B6054669/Docker/net2-TCPStr:/app net2/tcp1 

