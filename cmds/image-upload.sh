#!/usr/bin/env bash

IMAGE_NAME=$(./cmds/gcloud-image-name.sh)

echo "Uploading image: ${IMAGE_NAME}"
docker push ${IMAGE_NAME}