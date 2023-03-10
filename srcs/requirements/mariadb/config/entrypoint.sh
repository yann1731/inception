#!/bin/sh

set -e

if [ -d "/var/run/mysqld/" ];
then
	echo "mysqld already present, skipping creation"
else
	echo "mysqld not found, creating...."

	mkdir -p /var/run/mysqld
	chown -R mysql:mysql /var/run/mysqld
	mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql --skip-auth-anonymous-user --skip-test-db
	echo "USE mysql;" >> config
	echo "FLUSH PRIVILEGES;" >> config
	echo "GRANT ALL ON *.* TO 'root'@'localhost' identified by '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION;" >> config
	echo "SET PASSWORD FOR 'root'@'localhost'=PASSWORD('${MYSQL_ROOT_PASSWORD}');" >> config
	echo "CREATE DATABASE IF NOT EXISTS '$WORDPRESS_DB_NAME' CHARACTER SET utf8 COLLATE utf8_general_ci;" >> config
	echo "GRANT ALL ON '$WORDPRESS_DB_NAME'.* to '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';" >> config
	echo "Done transferring to config..."
	mysqld --bootstrap < config
fi

exec $@