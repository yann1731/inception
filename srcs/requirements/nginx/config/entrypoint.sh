#!/bin/sh

mkdir /etc/nginx/ssl/
openssl req -x509 -nodes -sha256 -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/key.pem -out /etc/nginx/ssl/cert.pem -subj "/CN=yst-laur.42.fr/C=CA/ST=QC/L=Quebec/O=42Network/OU=42Quebec"

echo launching nginx...

nginx -g "daemon off;"