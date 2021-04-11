FROM jenkins/jenkins:lts

LABEL maintainer="Verbytskyi Serhii"
LABEL description="My first Dockerfile for Jenkins"

#Install all packages
USER root
RUN apt-get update && apt-get install -y build-essential && \
    rm -rf /var/cache/* /var/lib/apt/lists/*
USER jenkins

#Listen on port 8080
EXPOSE 8080/tcp

#Create a mount point
VOLUME /var/jenkins_home