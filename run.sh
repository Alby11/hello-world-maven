#!/bin/bash
# source ./container.conf
# echo $NAME $PORT

NAME="hello-world-maven"
PORT="8090"
# docker stop $NAME 2>/dev/null
# echo y | docker container rm $NAME 2>/dev/null
# echo y | docker image rm $NAME
docker build --progress=plain --tag $NAME .
docker run \
    --restart no \
    --publish $PORT:8080 \
    --hostname $NAME \
    --name $NAME \
    --detach \
    $NAME \
    ;
    # --mount type=bind,source=/var/log/docker,target=/app/log \
