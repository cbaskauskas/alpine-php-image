FROM php:8.1-cli-alpine3.15 AS base

RUN apk add --no-cache curl git nodejs npm

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && \
    IPE_GD_WITHOUTAVIF=1 install-php-extensions redis gd imagick memcached pdo_pgsql @composer
