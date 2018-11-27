#!/usr/bin/env bash

IMAGE_NAME=$(./cmds/gcloud-image-name.sh)
docker build -t ${IMAGE_NAME} .