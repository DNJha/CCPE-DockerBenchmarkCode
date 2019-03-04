#!/bin/bash

#Build the image from the Dockerfile
docker build -t lin/bonnie1 .

#Run the container
docker run --rm --name lin-bon1 -v //c/Users/Docker/linbon:/app lin/bonnie1 

