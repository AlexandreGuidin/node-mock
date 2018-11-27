#!/usr/bin/env bash

IMAGE_NAME=$(./cmds/gcloud-image-name.sh)
docker run --rm -p 9080:9080 ${IMAGE_NAME}