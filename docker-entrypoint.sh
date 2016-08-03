#!/bin/bash
set -e

if  [ ! -z "$PHP_FPM_USER" ]; then
	sed -i "s/www-data/$PHP_FPM_USER/" /etc/php5/fpm/pool.d/www.conf
fi

exec "$@"
