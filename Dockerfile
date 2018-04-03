FROM php:7.0-apache

RUN apt-get update && \
    apt install apache2 -y && \
    add-apt-repository ppa:ondrej/php && \
    apt-get update && \
    apt install php7.0-mysql php7.0-curl php7.0-json php7.0-cgi  php7.0 libapache2-mod-php7.0 && \
    apt-get clean

COPY myapp /var/www/html/
