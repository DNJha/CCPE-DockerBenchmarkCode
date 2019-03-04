#!/bin/bash

docker build -t netperfserver .

docker run --rm -dt --name server netperfserver
ip=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' server) 

echo "New Server IP address: " 
echo $ip 


#For stopping the server
#docker stop server
