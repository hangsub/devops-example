# Devops demo app

### Clone project
```bash
git clone https://github.com/hangsub/devops-example.git
```

### 초기 설정
**Build Images**
```bash
./tools/devops.sh build
```
- 위 명령으로 `demoapp`, `nginx-demoapp` 두개의 이미지가 빌드됩니다.
- 아래의 목록을 확인할 수 있습니다.
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
- 아래 링크를 접속하여 어플리케이션 서버가 잘 동작하는지 확인할 수 있습니다.
  - http://localhost
  - http://localhost/health

### Stop service
```bash
./tools/devops.sh stop
```

### Restart service
```bash
./tools/devops.sh restart
```

### Deploy demoapp
```bash
./tools/devops.sh deoloy
```
> 이미지가 동일할 경우는 배포되지 않습니다.

### 로그 확인
- stdout,stderr 가 docker-compose에 의해 저장되어 있므로 아래 명령으로 조회 가능합니다.
```bash
docker-compose logs -f --tail=100
```

## Reference
- [spring boot sample](https://github.com/spring-projects/spring-boot/tree/v2.0.2.RELEASE/spring-boot-samples/spring-boot-sample-web-ui)
### Base images
- ubuntu + jdk8
  - https://hub.docker.com/r/primetoninc/jdk
- nginx
  - https://hub.docker.com/_/nginx