#!/bin/bash

echo "Send ^\ to kill..."
docker build --tag ivn-notebook .
docker run \
    -t \
    -v $PWD:/work \
    -p 8888:8888 \
    --name unversed-tomato \
    ivn-notebook
docker kill unversed-tomato
docker rm unversed-tomato
