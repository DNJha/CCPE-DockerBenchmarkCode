#!/bin/bash

#Build the image from the Dockerfile
docker build -t stream2 .

#Run the container
docker run --rm --name stream-2 -v //c/Users/B6054669/Docker/strstr:/app stream2 

