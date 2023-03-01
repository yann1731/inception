FROM alpine:3.16

RUN apk update && apk upgrade

RUN apk add --no-cache mariadb mariadb-client mariadb-server-utils && \
    rm -f /var/cache/apk/*

COPY config/50-server.cnf /etc/mysql/my.cnf

COPY config/entrypoint.sh ./entrypoint.sh

RUN chmod +x ./entrypoint.sh

EXPOSE 3306

CMD ["./entrypoint.sh"]