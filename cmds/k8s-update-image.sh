#!/usr/bin/env bash

IMAGE_NAME=$(./cmds/gcloud-image-name.sh)
NAME=$(node -p -e "require('./package.json').name")
NAMESPACE='namespace'
DEPLOYMENT_NAME=NAME

kubectl set image deployment ${DEPLOYMENT_NAME} ${NAME}=${IMAGE_NAME} --namespace=${NAMESPACE}