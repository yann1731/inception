FROM debian:buster

RUN apt update && apt upgrade

RUN apt -y install mariadb-server

COPY config/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 3306

ENTRYPOINT ["/entrypoint.sh"]

# CMD ["mysqld"]