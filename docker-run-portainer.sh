#!/usr/bin/env bash

APP_NAME=portainer

docker volume create portainer_data

docker run -d -p 9001:9000 \
	--rm --name ${APP_NAME} \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-v portainer_data:/data portainer/portainer
