FROM php:8.0-fpm

ENV PATH="/var/www/.composer/vendor/bin:${PATH}"

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin

RUN apt-get update && apt install -y \
    git \
    ffmpeg \
    jq \
    iputils-ping


RUN chmod +x /usr/local/bin/install-php-extensions && sync \
    && install-php-extensions \
    gd \
    bcmath \
    opcache \
    xsl \
    imap \
    zip \
    ssh2 \
    yaml \
    pcntl \
    intl \
    sockets \
    xdebug \
    redis \
    pdo_mysql \
    @composer

RUN install-php-extensions pdo_pgsql
