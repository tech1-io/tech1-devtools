#!/usr/bin/env bash

APP_NAME=forcelate-mongodb
TAG=4.1-xenial

VOLUME_PATH=$(pwd)/volumes-mongodb

docker run -d --rm --name ${APP_NAME} \
    -v ${VOLUME_PATH}:/data/db \
    -p 27017:27017 \
    mongo:${TAG}
