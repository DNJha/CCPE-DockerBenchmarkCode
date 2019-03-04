#!/bin/bash

#Build the image from the Dockerfile
docker build -t lin/stream .

#Run the container
docker run --rm --name lin-stream -v //c/Users/Docker/linstream:/app lin/stream

