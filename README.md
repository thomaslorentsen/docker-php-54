[![Build Status](https://travis-ci.org/thomaslorentsen/docker-php-54.svg?branch=master)](https://travis-ci.org/thomaslorentsen/docker-php-54)
# Docker PHP 5.4
PHP 54 in Docker
# Building
```bash
docker build -t php54 .
```
# Running
Running
```bash
docker run -p 127.0.0.1:8080:80 --name php54 --rm php54
```