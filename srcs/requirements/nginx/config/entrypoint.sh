#!/bin/sh
openssl req -x509 -nodes -sha256 -days 365 -newkey rsa:2048 -keyout /etc/nginx/certs/key.pem -out /etc/nginx/certs/cert.pem -subj "/CN=yst-laur.42.fr/C=CA/ST=QC/L=Quebec/O=42Network/OU=42Quebec"
nginx -g "daemon off;"