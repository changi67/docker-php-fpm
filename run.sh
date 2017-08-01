#!/bin/bash
exec php-fpm7.0 --allow-to-run-as-root --nodaemonize --fpm-config /etc/php/7.0/fpm/php-fpm.conf
