# Dockerfile for Spring Boot Application
FROM openjdk:27-ea-trixie
# Using OpenJDK 27 early access as the base image for the Docker container.
ADD target/employee-app.jar  employee-app.jar
#adding the jar file from local target folder to docker image.
ENTRYPOINT ["java", "-jar", "/employee-app.jar"]
# entrypoint for running the Spring Boot application using the specified JAR file which we have copied from local project to docker image.
# cmd used to run springboot application . docker run -p 8080:8080 springboot/rest-demo:v1
# first 8080 is for host machine and second 8080 is for docker container port.


