FROM imacatlol/docker-php-54:centos-6.10

LABEL maintainer="Tom Lorentsen <tom@thomaslorentsen.co.uk>"

RUN yum install -y gcc glibc glibc-common gd gd-devel freetype-devel libjpeg-turbo-devel libmcrypt-devel libpng-devel libaio && \
    yum install -y https://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/php54-devel-5.4.45-1.ius.centos6.x86_64.rpm && \
  yum clean all -y
