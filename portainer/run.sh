#!/usr/bin/env bash

APP_NAME=forcelate-portainer

docker volume create forcelate-portainer-data

docker run -d --rm --name ${APP_NAME} \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-v forcelate-portainer-data:/data \
	-p 9001:9000 \
	portainer/portainer
