FROM debian:buster

RUN apt update && apt upgrade

RUN apt -y install mariadb-server

COPY config/50-server.cnf /etc/mysql/my.cnf
COPY config/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 3306

ENTRYPOINT ["sh", "/entrypoint.sh"]
CMD ["mysqld"]