#!/bin/bash

#Build the image from the Dockerfile
docker build -t y-cruncher2 .

#Run the container
docker run --rm --name yc2 -v //c/Users/Docker/yc2:/app y-cruncher2 


echo "Done"
