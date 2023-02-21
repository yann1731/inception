FROM alpine:3.16

RUN apk update && apk add nginx openssl

COPY config/nginx.conf /etc/nginx/nginx.conf

COPY config/entrypoint.sh /entrypoint.sh

EXPOSE 443

ENTRYPOINT ["/entrypoint.sh"]
