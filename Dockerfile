FROM php:7.0-apache

RUN apt-get update && \
    apt install apache2 -y && \
    apt-get install php7.0 -y && \
    apt-get clean

COPY myapp /var/www/html/
