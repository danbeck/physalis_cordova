#!/bin/bash

TAG=4.0.0
IMAGE=cordova
IMAGE_TAG=${IMAGE}:${TAG}

echo "building ${IMAGE_TAG}"
docker build -t danielbeck/${IMAGE_TAG} .
docker push danielbeck/${IMAGE_TAG}
