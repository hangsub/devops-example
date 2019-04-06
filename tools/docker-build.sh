#!/usr/bin/env bash

MODULE_NAME=demoapp
PACKAGE_VERSION=$(cat build.gradle | grep ^version | awk -F"[']" '{print $2}')

echo "Version: $PACKAGE_VERSION"

gradle clean -x test -Pprofile=dev build jar || exit 1
#gradle clean build jar || exit 1
docker build -t $MODULE_NAME:$PACKAGE_VERSION .
docker tag $MODULE_NAME:$PACKAGE_VERSION $MODULE_NAME:latest

unset MODULE_NAME
unset PACKAGE_VERSION
