#!/bin/bash

#Build the image from the Dockerfile
docker build -t yc/tcp2 .

#Run the container
docker run --rm --name yc-TCP2 -v //c/Users/Docker/ycTCPRR:/app yc/tcp2 
