FROM php:7.2-fpm

RUN apt-get update --fix-missing; apt-get install -y curl; apt-get install -y build-essential libssl-dev zlib1g-dev libpng-dev libjpeg-dev libfreetype6-dev libldap2-dev unzip 

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd \
    && docker-php-ext-install ldap \
    && docker-php-ext-install zip \
    && docker-php-ext-install json

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');";
RUN php composer-setup.php; php -r "unlink('composer-setup.php');"; mv /var/www/html/composer.phar /usr/bin/composer

RUN /usr/bin/composer global require "laravel/installer";

ENV PATH="/root/.composer/vendor/bin:$PATH"

RUN mkdir /var/www/lara; rm -r /var/www/html
WORKDIR /var/www/lara
