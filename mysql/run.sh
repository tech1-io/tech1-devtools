#!/usr/bin/env bash

APP_NAME=tech1-mysql
TAG=5.7.24
MYSQL_ROOT_PASSWORD=root

VOLUME_PATH=$(pwd)/volume-mysql

docker run -d --rm --name ${APP_NAME} \
    -e MYSQL_ROOT_PASSWORD=${MYSQL_ROOT_PASSWORD} \
    -v ${VOLUME_PATH}:/var/lib/mysql \
    -p 3306:3306 \
    mysql:${TAG}
