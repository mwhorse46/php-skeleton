FROM php:8.2-fpm

COPY --from=composer:2 /usr/bin/composer /usr/local/bin/composer

RUN apt-get update

RUN pecl install xdebug
RUN docker-php-ext-enable xdebug
