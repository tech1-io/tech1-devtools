#!/usr/bin/env bash

set -x

# Read: Images, Disk Usage
echo "============================"
docker ps
echo "============================"
docker image ls
echo "============================"
df
echo "============================"

# Stop all containers
containers=`docker ps -a -q`
if [ -n "$containers" ] ; then
        docker stop ${containers}
fi

# Delete all containers
containers=`docker ps -a -q`
if [ -n "$containers" ]; then
        docker rm -f -v ${containers}
fi

# Delete all images
images=`docker images -f 'dangling=true' -q`
if [ -n "$images" ]; then
        docker rmi -f ${images}
fi
# Delete all images: prune
docker image prune

# Read: Images, Disk Usage
echo "============================"
docker ps
echo "============================"
docker image ls
echo "============================"
df
echo "============================"
