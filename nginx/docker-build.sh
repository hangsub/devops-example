#!/usr/bin/env bash

MODULE_NAME=nginx-demoapp
PACKAGE_VERSION=0.0.1

echo "Version: $PACKAGE_VERSION"

docker build -t $MODULE_NAME:$PACKAGE_VERSION ./nginx
docker tag $MODULE_NAME:$PACKAGE_VERSION $MODULE_NAME:latest

unset MODULE_NAME
unset PACKAGE_VERSION
