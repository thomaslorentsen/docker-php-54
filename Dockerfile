FROM centos:6.8

RUN yum install -y \
    https://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/php54-common-5.4.45-1.ius.centos6.x86_64.rpm \
    https://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/php54-cli-5.4.45-1.ius.centos6.x86_64.rpm \
    https://dl.iuscommunity.org/pub/ius/archive/CentOS/6/x86_64/php54-5.4.45-1.ius.centos6.x86_64.rpm

RUN yum install httpd

COPY apache2-foreground /usr/local/bin/
WORKDIR /var/www/html

COPY www/index.php .

EXPOSE 80
CMD ["apache2-foreground"]
