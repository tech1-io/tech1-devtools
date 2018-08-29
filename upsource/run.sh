#!/usr/bin/env bash

APP_NAME=forcelate-upsource

docker volume create upsource_data
docker volume create upsource_conf
docker volume create upsource_logs
docker volume create upsource_backups

docker run -d --rm --name ${APP_NAME} \
	-v upsource_data:/opt/upsource/data \
    -v upsource_conf:/opt/upsource/conf \
    -v upsource_logs:/opt/upsource/logs \
    -v upsource_backups:/opt/upsource/backups \
    -p 8080:8080 \
    jetbrains/upsource:2018.1.584

# Wizard Key (Upsource Setup)
# docker cp forcelate-upsource:/opt/upsource/conf/internal/services/configurationWizard/wizard_token.txt /Users/yuriiluchkiv/Downloads
