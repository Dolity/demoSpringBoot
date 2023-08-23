#
# Build stage
#
FROM maven:3.8.3-openjdk-17 AS build
WORKDIR /app
COPY . /app/


#
# Package stage
#
FROM openjdk:17-alpine
WORKDIR /app
ADD C:/WebDev/Movies_API/BackEnd_SpringBoot/movies/targe/movies-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
