FROM alpine:3.16

RUN apk update && apk upgrade && apk add mariadb pwgen

COPY config/50-server.cnf /etc/mysql/my.cnf

ENV MARIADB_USER admin
ENV MARIADB_PASS **Random**

CMD []