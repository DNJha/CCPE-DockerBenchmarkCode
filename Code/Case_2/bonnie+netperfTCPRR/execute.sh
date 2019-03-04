#!/bin/bash



./out1.sh & P1=$! & ./out2.sh & P2=$! & wait $P1 $P2