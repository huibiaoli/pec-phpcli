FROM php:5.6-fpm
RUN apt-get update && apt-get install -y libmemcached-dev zlib1g-dev \
    && pecl install memcached-2.2.0 \
    && pecl insatll mongo-1.4.5 \
    && docker-php-ext-enable memcached
