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
     scale)
         docker-compose up --scale demoapp=${2} -d
         docker-compose exec nginx nginx -s reload > /dev/null 2>&1
         ;;
    *)
        echo "Usage: /tools/devops.sh (start|stop|restart|deploy|build|scale COUNT)"
        ;;
  esac