FROM alpine:3.16

RUN apk update && apk upgrade && apk add mariadb-server

COPY config/50-server.cnf /etc/mysql/my.cnf

ENV ROOT_PW ${MYSQL_ROOT_PASSWORD}
ENV MARIADB_USER ${MYSQL_USER}
ENV MARIADB_PASS ${MYSQL_PASSWORD}

CMD []