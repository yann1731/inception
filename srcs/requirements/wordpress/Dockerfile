FROM alpine:3.16

RUN apk update && apk upgrade

COPY extra/repositories etc/apk/

RUN apk add php7 \
    php7-fpm \
    php7-opcache \
    mariadb-client \
    wget \
    unzip

COPY conf/config.sh /config.sh

RUN wget https://wordpress.org/latest.tar.gz -O /tmp/wordpress.tar.gz && \
    tar -xzf /tmp/wordpress.tar.gz \
    rm /tmp/wordpress.tar.gz

COPY conf/php.ini /etc/php7/conf.d/zzz_custom.ini

EXPOSE 9000

CMD ["config.sh"]