#!/usr/bin/env bash

case "$1" in
    start)
        docker-compose up -d
        ;;
    stop)
        docker-compose stop
        ;;
    restart)
        docker-compose restart
        ;;
    deploy)
        docker-compose up --no-deps -d demoapp1
        sleep 10
        docker-compose up --no-deps -d demoapp2
        ;;
    build)
        ./nginx/docker-build.sh
        ./tools/docker-build.sh
        ;;
    *)
        echo "Usage: /tools/devops.sh (start|stop|restart|deploy|build)"
        ;;
  esac