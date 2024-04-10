FROM dunglas/frankenphp

RUN install-php-extensions \
    pdo_mysql \
    gd \
    intl \
    zip \
    opcache \
    memcached

ENV SERVER_NAME=:80