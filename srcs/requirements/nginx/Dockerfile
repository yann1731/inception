FROM Alpine:3.17

RUN apk update && apk upgrade

RUN apk add nginx openssh

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]