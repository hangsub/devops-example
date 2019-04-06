# Devops demo app

## Guide

### Clone project
```bash
git clone https://github.com/hangsub/devops-example.git
```

### Settings
- build images: `demoapp`, `nginx-demoapp`

**Build Images**
```bash
./tools/devops.sh build
```
- you can see the images
```bash
$ docker images
demoapp             0.0.1               f8ead8823a3c        7 seconds ago       676MB
demoapp             latest              f8ead8823a3c        7 seconds ago       676MB
nginx-demoapp       0.0.1               9b4bcacad391        23 seconds ago      109MB
nginx-demoapp       latest              9b4bcacad391        23 seconds ago      109MB
```

### Start service
```bash
./tools/devops.sh start
```
- you can connect to the following links
  - http://localhost
  - http://localhost/health

### Stop service
```bash
./tools/devops.sh stop
```

### Scale service(demoapp)
```bash
./tools/devops.sh scale [COUNT]
```
- ex) `./tools/devops.sh scale 2`

### Deploy Service
```bash
// TODO
```

### Show logs
- stdout,stderr in all containers
```bash
docker-compose logs -f --tail=100
```

## Reference
### Base images
- ubuntu + jdk8
  - https://hub.docker.com/r/primetoninc/jdk
- nginx
  - https://hub.docker.com/_/nginx
  