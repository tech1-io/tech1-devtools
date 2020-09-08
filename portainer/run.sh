#!/usr/bin/env bash

APP_NAME=tech1-portainer

docker volume create tech1-portainer-data

docker run -d --rm --name ${APP_NAME} \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-v tech1-portainer-data:/data \
	-p 9001:9000 \
	portainer/portainer
