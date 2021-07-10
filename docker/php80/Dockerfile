FROM php:8.0-cli

RUN apt-get update

RUN apt-get install unzip

RUN pecl install xdebug
RUN docker-php-ext-enable xdebug

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
