FROM php:8.1-fpm-alpine3.15

LABEL org.opencontainers.image.source https://github.com/cbaskauskas/alpine-php-image

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN chmod +x /usr/local/bin/install-php-extensions && \
    IPE_GD_WITHOUTAVIF=1 install-php-extensions redis gd imagick memcached pdo_pgsql @composer
