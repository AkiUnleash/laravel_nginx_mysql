FROM php:8.0-fpm

ARG ENV

ENV TZ Asia/Tokyo

# install Library
RUN apt-get update && \
	apt-get install -y git unzip libzip-dev libicu-dev libonig-dev && \
	docker-php-ext-install intl pdo_mysql zip bcmath
		
# config file COPY
COPY ./docker/app/${ENV}/php.ini /usr/local/etc/php/php.ini

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs

# install Composer
COPY --from=composer:2.0 /usr/bin/composer /usr/bin/composer

COPY ./src /app

WORKDIR /app

RUN chmod -R 777 storage \
  && php artisan optimize:clear \
  && php artisan optimize \
  && php artisan cache:clear \
  && php artisan config:clear \
  && php artisan route:clear \
  && php artisan view:clear \
  && npm install \
  && npm run build