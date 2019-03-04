#!/bin/bash

#Build the image from the Dockerfile
docker build -t bonnie/tcp2 .

#Run the container
docker run --rm --name bonnie-TCP2 -v //c/Users/Docker/BonnieTCPRR:/app bonnie/tcp2


echo "Done"
