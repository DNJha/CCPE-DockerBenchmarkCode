#!/bin/bash

#Build the image from the Dockerfile
docker build -t bonnie/tcp1 .

#Run the container
docker run --rm --name bonnie-TCP1 -v //c/Users/Docker/BonnieTCPStr:/app bonnie/tcp1 


echo "Done"
