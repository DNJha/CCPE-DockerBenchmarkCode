#!/bin/bash

#As we are considering the docker images already exists

./out1.sh & P1=$! & ./out2.sh & P2=$! & wait $P1 $P2


