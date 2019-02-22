#!/usr/bin/env bash

APP_NAME=forcelate-postgresql
TAG=10
POSTGRES_PASSWORD=postgres

docker run -d --rm --name ${APP_NAME} \
    -e POSTGRES_PASSWORD=${POSTGRES_PASSWORD} \
    -p 5432:5432 \
    postgres:${TAG}
