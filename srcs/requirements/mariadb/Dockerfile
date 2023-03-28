FROM debian:buster

RUN apt-get update && apt-get -y upgrade

RUN apt-get -y install mariadb-server

COPY config/50-server.cnf /50-server.cnf
COPY config/entrypoint.sh /entrypoint.sh
RUN rm /etc/mysql/mariadb.conf.d/50-server.cnf && mv /50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chmod +x /entrypoint.sh

EXPOSE 3306

ENTRYPOINT ["sh", "/entrypoint.sh"]

CMD ["mysqld"]