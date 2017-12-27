FROM php:5.6-fpm
RUN pecl install memcached-2.2.0 \
    && docker-php-ext-enable memcached
