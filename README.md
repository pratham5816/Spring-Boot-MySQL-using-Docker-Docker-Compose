Spring Boot + MySQL using Docker & Docker Compose

This project demonstrates how to containerize a Spring Boot application with a MySQL database using Docker and Docker Compose.
The application and database run in separate containers, connected via a Docker bridge network, with persistent storage using Docker volumes.

What I Learned from This Project

  Basics of Docker and containerization

  Difference between virtualization and containerization

  Docker architecture (Client, Daemon, Images, Containers)

  Writing a Dockerfile for a Spring Boot application

  Building and running Docker images

  Running multiple containers using Docker Compose

  Connecting Spring Boot with MySQL inside Docker

  Using Docker networks for inter-container communication

  Using Docker volumes for database persistence

  Managing container startup using health checks


-Project Architecture

Spring Boot App  --->  MySQL Database
       |                    |
       |---- Docker Network |


  Spring Boot connects to MySQL using the service name mysql

  Database runs on port 3306 internally

  Application runs on port 8080


-Tech Stack

  Java

  Spring Boot

  MySQL 8

  Docker

  Docker Compose

  JPA / Hibernate



-How to Run the Project
  Build the Spring Boot JAR
  mvn clean package

-Start Containers
docker-compose up --build
This will:

  Build the Spring Boot image

  Start the MySQL container

  Create Docker network and volume

  Run both containers together

  Access the Application

  Spring Boot application:
    http://localhost:8080
  
  MySQL from host:
  localhost:3307

-Database Persistence

  Docker volume mysql-data ensures database data is not lost when containers restart.
