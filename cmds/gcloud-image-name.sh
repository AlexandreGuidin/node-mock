#!/usr/bin/env bash

VERSION=$(node -p -e "require('./package.json').version")
NAME=$(node -p -e "require('./package.json').name")
IMAGE_NAME=${NAME}:${VERSION}
PROJECT_NAME=$(gcloud config get-value project)
GCLOUD_IMAGE=gcr.io/${PROJECT_NAME}/${NAME}:${VERSION}

echo ${GCLOUD_IMAGE}