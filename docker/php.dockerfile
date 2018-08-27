FROM php:5.6.31-fpm

RUN apt-get update && apt-get install -y wget curl apt-utils libmcrypt-dev \
    mysql-client libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install mcrypt pdo_mysql

WORKDIR /var/www
RUN curl -s https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
RUN wget -O phpunit https://phar.phpunit.de/phpunit-5.phar
RUN chmod +x phpunit
RUN mv phpunit /usr/local/bin/phpunit