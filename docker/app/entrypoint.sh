#!/usr/bin/env bash

cd /app

php artisan config:cache
php artisan view:cache
php artisan route:cache
# php artisan migrate --force
composer install --optimize-autoloader --no-dev
npm run build

. /usr/local/bin/docker-php-entrypoint php-fpm