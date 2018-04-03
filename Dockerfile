FROM php:7.0-apache

RUN apt-get update && \
    apt-get install php libapache2-mod-php php-mcrypt -y && \
    apt-get clean

COPY myapp /var/www/html/
