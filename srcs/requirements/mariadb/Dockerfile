FROM alpine:3.16

RUN apk update && apk upgrade

RUN apk add mariadb-server pwgen

COPY config/50-server.cnf /etc/mysql/mariadb.d/my.cnf

COPY etc /etc
COPY usr /usr

ENV MARIADB_USER admin
ENV MARIADB_PASS **Random**

CMD []