#!/bin/sh
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/certs/key.pem -out /etc/nginx/certs/cert.pem -subj "/C=US/ST=California/L=San Francisco/O=Example Inc./OU=IT Department/CN=localhost"
nginx -g "daemon off;"