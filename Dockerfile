FROM primetoninc/jdk:1.8

MAINTAINER hangsub.sim@gmail.com

VOLUME ["/tmp", "/logs"]
COPY build/libs/demo-*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]