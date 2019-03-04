#!/bin/bash

#Build the image from the Dockerfile
docker build -t stream/tcp1 .

#Run the container
docker run --rm --name stream-TCP1 -v //c/Users/B6054669/Docker/StreamTCPStr:/app stream/tcp1 


echo "Done"
