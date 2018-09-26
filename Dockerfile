FROM centos:6.10

LABEL maintainer="Tom Lorentsen <tom@thomaslorentsen.co.uk>"
LABEL org.label-schema.description="Centos 6 running Apache and PHP 54"
LABEL org.label-schema.name="docker-php-54"
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.vcs-url="https://github.com/thomaslorentsen/docker-php-54"
LABEL org.label-schema.vendor="Thomas Lorentsen"

RUN yum install -y \
    https://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/php54-common-5.4.45-1.ius.centos6.x86_64.rpm \
    https://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/php54-cli-5.4.45-1.ius.centos6.x86_64.rpm \
    https://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/php54-5.4.45-1.ius.centos6.x86_64.rpm \
    && yum clean all -y

RUN yum install -y epel-release \
    && yum install --enablerepo=epel -y libmcrypt geoip \
    && yum clean all -y

RUN yum install -y \
    https://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/php54-mcrypt-5.4.45-1.ius.centos6.x86_64.rpm \
    https://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/php54-bcmath-5.4.45-1.ius.centos6.x86_64.rpm \
    https://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/php54-xml-5.4.45-1.ius.centos6.x86_64.rpm \
    https://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/php54-gd-5.4.45-1.ius.centos6.x86_64.rpm \
    https://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/php54-mbstring-5.4.45-1.ius.centos6.x86_64.rpm \
    https://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/php54-pdo-5.4.45-1.ius.centos6.x86_64.rpm \
    https://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/php54-tidy-5.4.45-1.ius.centos6.x86_64.rpm \
    https://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/php54-pecl-geoip-1.0.8-3.ius.centos6.x86_64.rpm \
    https://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/php54-pecl-apc-3.1.13-2.ius.centos6.x86_64.rpm \
    https://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/php54-pecl-memcache-3.0.8-1.ius.centos6.x86_64.rpm \
    https://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/php54-pecl-xdebug-2.3.3-1.ius.centos6.x86_64.rpm \
    https://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/php54-pecl-redis-2.2.7-1.ius.centos6.x86_64.rpm \
    && yum clean all -y

RUN yum install httpd \
    && yum clean all -y

COPY apache2-foreground /usr/local/bin/
WORKDIR /var/www/html

COPY www/index.php .

EXPOSE 80
CMD ["apache2-foreground"]
