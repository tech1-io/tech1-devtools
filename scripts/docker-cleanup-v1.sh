#!/usr/bin/env bash

set -x
# Images, Disk Usage
docker image ls
df
# Delete all containers (investigate zero-case failure, build #3)
# docker rm $(docker ps -a -q)

# Delete all images
# docker rmi -f $(docker images | grep '<none>')
docker image prune

# Images, Disk Usage
docker image ls
df