#!/usr/bin/env bash

APP_NAME=tech1-postgresql-mdillion
TAG=10
POSTGRES_PASSWORD=root

VOLUME_PATH=$(pwd)/volume-postgresql

docker run -d --rm --name ${APP_NAME} \
    -e POSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
    -v ${VOLUME_PATH}:/var/lib/postgresql/data \
    -p 5432:5432 \
    mdillon/postgis:${TAG}
