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
        # TODO
        ;;
    build)
        ./nginx/docker-build.sh
        ./tools/docker-build.sh
        ;;
    *)
        echo "Usage: /tools/devops.sh (start|stop|restart|deploy|build)"
        ;;
  esac