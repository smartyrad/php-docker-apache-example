FROM php:7.0-apache

RUN apt-get update && \
	apt-get install mysql-server && \
    apt-get install php libapache2-mod-php php-mcrypt && \
    apt-get clean

COPY myapp /var/www/html/
