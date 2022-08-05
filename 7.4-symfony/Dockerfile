FROM php:7.4-fpm

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
    pdo_mysql \
    redis \
    @composer

RUN install-php-extensions soap
RUN install-php-extensions exif

RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini

RUN curl -1sLf \
    'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | bash \
    && apt-get install symfony-cli


RUN apt install wkhtmltopdf -y \
    && ln -s /usr/bin/wkhtmltopdf /usr/local/bin/wkhtmltopdf

