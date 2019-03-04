#!/bin/bash

#Build the image from the Dockerfile
docker build -t yc/tcp1 .

#Run the container
docker run --rm --name yc-TCP1 -v //c/Users/Docker/ycTCP1:/app yc/tcp1 


echo "Done"
