#!/bin/bash

#Build the image from the Dockerfile
docker build -t bonnie/stream .

#Run the container
docker run --rm --name bon-stream -v //c/Users/Docker/streambon:/app bonnie/stream 

