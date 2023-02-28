FROM alpine:3.16

RUN apk update && apk upgrade

RUN apk add mariadb \
	mariadb-client

COPY config/50-server.cnf /etc/mysql/my.cnf

CMD ["mysqld"]