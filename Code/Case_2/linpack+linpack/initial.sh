#!/bin/bash

#Build the image from the Dockerfile
docker build -t linpack2 .

#Run the container
docker run --rm --name linpack-2 -v //c/Users/Docker/linlin:/app linpack2 #>> $log
   

