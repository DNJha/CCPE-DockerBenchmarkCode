#!/bin/bash

docker build -t bonnie/yc .

docker run --rm --name bonnie-yc -v //c/Users/Docker/Bonyc:/app bonnie/yc


echo "Done"
