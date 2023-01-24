FROM alpine:3.17

EXPOSE 443

RUN apk update && apk upgrade

RUN apk add nginx openssl

COPY ./config/nginx.conf /etc/nginx/http.d/nginx.conf

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj "/CN=CA/S=QC/LN=Quebec city/O=42 network/OU=yst-laur.42.fr/" -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

CMD ["nginx", "-g", "daemon off;"]