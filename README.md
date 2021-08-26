# Description

## Spring Boot Dockerfile

- Using the maven-dependency-plugin to separate JAR into multiple layers, one for your classes, and another one for your dependencies.
- Make sure that the JVM is aware of the memory constraints being in place within the container. 
- Using docker-maven-plugin to build image
