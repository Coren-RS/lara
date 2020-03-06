FROM php:7.2-fpm

RUN apt-get update --fix-missing; apt-get install -y curl; apt-get install -y build-essential libssl-dev zlib1g-dev libpng-dev libjpeg-dev libfreetype6-dev libldap2-dev 

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd \
    && docker-php-ext-install ldap \
    && docker-php-ext-install zip \
    && docker-php-ext-install json


