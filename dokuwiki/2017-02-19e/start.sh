#!/bin/sh

set -e

cd /var/tmp/nginx/fastcgi && chown nobody:root ..
cd /var/www && chown -R nobody .

su -s /bin/sh nobody -c 'php7 /var/www/bin/indexer.php -c'
exec /usr/bin/supervisord -c /etc/supervisord.conf
