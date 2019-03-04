#!/bin/bash

#Build the image from the Dockerfile
docker build -t bonnie/2 .

#Run the container
docker run --rm --name bonnie2 -v //c/Users/Docker/bonbon-new:/app bonnie/2 #>> $log

