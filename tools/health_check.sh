#!/usr/bin/env bash

FAIL_COUNT=0

while true; do
    RESPONSE=`curl -s -I http://localhost/health | grep HTTP/1.1 | awk -F"[ ]" '{print $2}'`
    if [ "${RESPONSE}" != "200" ]
    then
        FAIL_COUNT=$((FAIL_COUNT+1))
        echo "fail to health check [count: ${FAIL_COUNT}]"
    fi
    sleep 1
done