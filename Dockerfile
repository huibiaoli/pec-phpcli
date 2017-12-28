FROM php:5.6-fpm
RUN apt-get update && apt-get install -y libmemcached-dev libssl-dev zlib1g-dev && rm -rf /var/lib/apt/lists/* \
    && pecl install memcached-2.2.0 \
    && docker-php-ext-enable memcached \
    && pecl insatll mongo-1.4.5 \
    && docker-php-ext-enable mongo \
