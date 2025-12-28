Spring Boot + MySQL using Docker & Docker Compose

This project demonstrates how to containerize a Spring Boot application with a MySQL database using Docker and Docker Compose. The application and database run in separate containers, connected via a custom Docker bridge network, with persistent storage using Docker volumes. The project now uses a prebuilt Docker image for the Spring Boot app, making it easy to share and run on any machine without building from source.

What I Learned from This Project

Basics of Docker and containerization

Difference between virtualization and containerization

Docker architecture: Client, Daemon, Images, Containers

Writing a Dockerfile for a Spring Boot application

Building and running Docker images

Using a prebuilt Docker image for deployment

Running multiple containers using Docker Compose

Connecting Spring Boot with MySQL inside Docker

Using Docker networks for inter-container communication

Using Docker volumes for database persistence

Managing container startup using health checks

Sharing and running Dockerized apps on other machines using Docker Hub or image export

Project Architecture
Spring Boot App (container) ---> MySQL Database (container)
               | 
               |---- Connected via Docker Custom Network


Spring Boot connects to MySQL using the service name mysql

MySQL database runs internally on port 3306

Spring Boot application runs internally on port 8080

Tech Stack

Java

Spring Boot

MySQL 8

Docker

Docker Compose

JPA / Hibernate

How to Run the Project (Using Prebuilt Image)

Clone the repository (or download the Docker Compose file)

Update docker-compose.yml if needed:
Make sure the Spring Boot service uses your Docker Hub image:

app:
  image: prathamdoc5816/employee-app:1.0


Run Docker Compose

docker compose up -d


This will:

Pull the Spring Boot image from Docker Hub

Start the MySQL container

Create the custom Docker network and volume

Run both containers together

Verify containers

docker ps

Access the Application

Spring Boot application: http://localhost:8080

MySQL from host: localhost:3307

Spring Boot connects to MySQL using service name mysql inside Docker network.

Database Persistence

Docker volume mysql-data ensures database data is not lost when containers restart.

Optional: You can share a MySQL dump (employee_db.sql) to prepopulate the database on other machines.
-Database Persistence

  Docker volume mysql-data ensures database data is not lost when containers restart.
