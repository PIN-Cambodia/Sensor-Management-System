FROM php:7.2.10-fpm
RUN apt-get update && apt-get install -y mysql-client unzip git --no-install-recommends \
    && docker-php-ext-install pdo_mysql
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php && php composer-setup.php --install-dir=/usr/local/bin --filename=composer
