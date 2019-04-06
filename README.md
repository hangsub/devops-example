# Devops demo app
## Clone project
```bash
git clone https://github.com/hangsub/devops-example.git
```

1. build images: `demoapp`, `nginx-demoapp`
2. `./tools/devops.sh start`

## Build image
### demoapp
```bash
./tools/docker-build.sh
```
### nginx-demoapp
```bash
./nginx/docker-build.sh
```

start
```bash
docker-compose up --scale demoapp=3
```

## base image
### ubuntu + jdk8
- https://hub.docker.com/r/primetoninc/jdk
### nginx
- https://hub.docker.com/_/nginx
  