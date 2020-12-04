#!/usr/bin/env bash

APP_NAME=tech1-influxdb
TAG=1.8

VOLUME_PATH=$(pwd)/volume-influxdb

docker run -d --rm --name ${APP_NAME} \
    -v ${VOLUME_PATH}:/var/lib/influxdb \
    -p 8086:8086 \
    influxdb:${TAG}
