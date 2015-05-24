#!/bin/bash

TAG=4.0.0
IMAGE=cordova-android
IMAGE_TAG=${IMAGE}:${TAG}

docker build -t danielbeck/${IMAGE_TAG} .
docker push danielbeck/${IMAGE_TAG}