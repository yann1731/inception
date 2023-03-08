FROM debian:buster

RUN apt update && apt upgrade

RUN apt -y install mariadb-server

COPY config/50-server.cnf /etc/mysql/my.cnf
COPY config/entrypoint.sh ./entrypoint.sh

RUN chmod +x ./entrypoint.sh
RUN chown mysql:mysql ./initfile.sql
RUN mkdir -p /run/mysqld
RUN chown mysql:mysql /run/mysqld

EXPOSE 3306

CMD ["./entrypoint.sh"]