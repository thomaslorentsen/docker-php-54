[![Build Status](https://travis-ci.org/thomaslorentsen/docker-php-54.svg?branch=master)](https://travis-ci.org/thomaslorentsen/docker-php-54)
[![Docker Build](https://img.shields.io/docker/automated/imacatlol/docker-php-54.svg)](https://hub.docker.com/r/imacatlol/docker-php-54/)
[![Docker pulls](https://img.shields.io/docker/pulls/imacatlol/docker-php-54.svg)](https://hub.docker.com/r/imacatlol/docker-php-54/)
# Docker PHP 5.4
PHP 5.4 running in Centos 6
# Docker Hub
## Installing
Pull the image from Docker hub with:
```bash
docker pull imacatlol/docker-php-54
```
## Running
The docker container can be run with
```bash
docker run -p 127.0.0.1:8080:80 --name php54 --rm imacatlol/docker-php-54
```
# Source
After cloning the container can be built by running:
## Building
```bash
docker build -t php54 .
```
## Running
The docker container can then be run with
```bash
docker run -p 127.0.0.1:8080:80 --name php54 --rm php54
```
