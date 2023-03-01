FROM alpine:3.16

RUN apk update && apk upgrade

COPY extra/repositories etc/apk/

RUN apk add php7 \
    php7-fpm \
    php7-opcache \
    mariadb-client \
    wget \
    unzip

COPY conf/php.ini /etc/php7/conf.d/zzz_custom.ini
COPY conf/entrypoint.sh ./entrypoint.sh

RUN chmod +x ./entrypoint.sh

EXPOSE 9000

CMD ["./entrypoint.sh"]