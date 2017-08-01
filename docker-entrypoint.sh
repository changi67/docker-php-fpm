#!/bin/bash
set -e

if  [ ! -z "$PHP_FPM_USER" ]; then
	sed -i "s/www-data/$PHP_FPM_USER/" /etc/php/7.0/fpm/pool.d/www.conf
fi

exec "$@"
