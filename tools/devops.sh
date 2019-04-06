#!/usr/bin/env bash

case "$1" in
    start)
        mkdir -p logs/demoapp
        mkdir -p logs/nginx
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
        docker-compose stop demoapp1
        sleep 10
        docker-compose up demoapp1
        docker-compose stop demoapp2
        sleep 10
        docker-compose up demoapp1
        ;;
    build)
        ./nginx/docker-build.sh
        ./tools/docker-build.sh
        ;;
    # scale)
        # docker-compose up --scale demoapp=${2} -d
        # docker-compose exec nginx nginx -s reload > /dev/null 2>&1
        # ;;
    *)
        echo "Usage: /tools/devops.sh (start|stop|restart|deploy|build|scale COUNT)"
        ;;
  esac