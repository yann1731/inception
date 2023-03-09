FROM debian:buster

RUN apt update && apt upgrade

RUN apt -y install mariadb-server

COPY config/50-server.cnf /etc/mysql/my.cnf
COPY config/entrypoint.sh ./entrypoint.sh
COPY config/config ./config

RUN chmod +x ./entrypoint.sh
RUN chmod +r ./config

EXPOSE 3306

ENTRYPOINT ["/bin/sh", "./entrypoint.sh"]

CMD ["mysqld", "--user=mysql"]