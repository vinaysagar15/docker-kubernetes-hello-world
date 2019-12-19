FROM openjdk:8-jdk-ubuntu:16.04
MAINTAINER vinaysagar
ENV PORT 8080
EXPOSE 8080
COPY target/*.jar /opt/app.jar
WORKDIR /opt
CMD ["java", "-jar", "app.jar"]
