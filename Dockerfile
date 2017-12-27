FROM php:7.1-fpm
RUN pecl install memcached-2.2.0 \
    && docker-php-ext-enable memcached
