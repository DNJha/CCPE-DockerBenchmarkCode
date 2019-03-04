#!/bin/bash

#Build the image from the Dockerfile
docker build -t stream/yc .

#Run the container
docker run --rm --name stream-yc -v //c/Users/Docker/strYC:/app stream/yc

