#!/bin/sh

if [ -d "/var/run/mysqld" ]; then
	echo "mysqld already present, skipping creation"

<<<<<<< HEAD
=======
mysql_install_db --user=mysql --basedir=/usr/ --datadir=/var/lib/mysql

exec mysqld --init-file=initfile.sql

if [-f db_exists] then
	echo "Database already configured..."
>>>>>>> 6690b96d01fcf74a565c123fdb43b0cde65a642a
else
	echo "mysqld not found, creating...."
	mkdir -p /var/run/mysqld
	chown -R mysql:mysql /var/run/mysqld

	mysqld --bootstrap < config
fi