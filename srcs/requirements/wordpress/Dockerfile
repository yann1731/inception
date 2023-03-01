FROM alpine:3.15

RUN apk update && apk upgrade

RUN apk add php7 \
    php7-fpm \
    php7-opcache \
    php7-mysqli \
    php7-session \
    php7-iconv \
    php7-json \
    php7-gd \
    php7-curl \
    php7-xml \
    php7-common \
    php7-imap \
    php7-cgi \
    php7-pdo \
    php7-pdo_mysql \
    php7-soap \
    php7-xmlrpc \
    php7-posix \
    php7-mcrypt \
    php7-redis \
    php7-gettext \
    php7-ldap \
    php7-ctype \
    php7-dom \
    php7-phar \
    mariadb-client \
    wget \
    curl \
    bash \
    unzip

RUN rm /etc/php7/php-fpm.d/www.conf
COPY conf/www.conf /etc/php7/php-fpm.d/www.conf
COPY conf/php.ini /etc/php7/conf.d/zzz_custom.ini
COPY conf/entrypoint.sh ./entrypoint.sh

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp

RUN chmod +x ./entrypoint.sh

EXPOSE 9000

ENTRYPOINT ["bash", "./entrypoint.sh"]

CMD ["php-fpm7", "-F"]