#!/bin/bash

#Build the image from the Dockerfile
docker build -t lin/yc .

#Run the container
docker run --rm --name lin-yc -v //c/Users/Docker/linYC:/app lin/yc 


