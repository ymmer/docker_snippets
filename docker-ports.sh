#!/bin/bash

for CONTAINER in $(docker ps -q)
do
        docker inspect $CONTAINER | grep HostPort | cut -d '"' -f 4
done
