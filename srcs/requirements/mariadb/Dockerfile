FROM alpine:3.16

RUN apk update && apk upgrade

RUN apk add mariadb-server

COPY config/my.cnf /etc/mysql/my.cnf

COPY etc /etc
COPY usr /usr

ENV MARIADB_USER admin
ENV MARIADB_PASS **Random**

CMD []