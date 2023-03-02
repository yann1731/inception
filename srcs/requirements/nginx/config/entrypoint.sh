#!/bin/sh


if [-e configdone]; then

sleep 6
mkdir -p /etc/nginx/ssl/
echo changing directory ownership...
chown -R www-data:www-data /var/www/
echo changing directory ownership done...

openssl req -x509 -nodes -sha256 -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/key.pem -out /etc/nginx/ssl/cert.pem -subj "/CN=yst-laur.42.fr/C=CA/ST=QC/L=Quebec/O=42Network/OU=42Quebec"

fi

echo launching nginx...
nginx -g "daemon off;"