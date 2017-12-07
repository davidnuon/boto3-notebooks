#!/bin/bash

docker build --tag ivn-notebook .
docker run \
    -v $PWD:/home/jovyan/workplace \
    -p 8888:8888 \
    ivn-notebook

