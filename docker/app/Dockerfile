FROM php:8.1-fpm

ARG ENV

ENV TZ Asia/Tokyo

# install Library
RUN apt-get update && \
	apt-get install -y git unzip libzip-dev libicu-dev libonig-dev && \
	docker-php-ext-install intl pdo_mysql zip bcmath

RUN apt-get install -y cron
		
# config file COPY
COPY ./docker/app/${ENV}/php.ini /usr/local/etc/php/php.ini

COPY ./src /app

ADD ./docker/app/entrypoint.sh /
RUN chmod +x /entrypoint.sh

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs

# install Composer
COPY --from=composer:2.0 /usr/bin/composer /usr/bin/composer

WORKDIR /app

# RUN composer install -q -n --no-ansi --no-dev --no-scripts --no-progress --prefer-dist
RUN composer install --no-dev --no-interaction
RUN chmod -R 777 storage
RUN npm install
RUN npm run build

CMD ["bash", "-c", "/entrypoint.sh"]