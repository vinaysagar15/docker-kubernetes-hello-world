FROM ubuntu:18.04

MAINTAINER vinaysagar

RUN apt-get update && apt-get install -y default-jre && apt-get install -y default-jdk && apt-get update
ENV PORT 8080
EXPOSE 8080
COPY target/*.jar /opt/app.jar
WORKDIR /opt
CMD ["java", "-jar", "app.jar"]
#CMD [/bin/bash]
