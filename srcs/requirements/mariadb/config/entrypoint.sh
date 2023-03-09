#!/bin/sh

if [ -d "/var/run/mysqld" ]; then
	echo "mysqld already present, skipping creation"

else
	echo "mysqld not found, creating...."
	mkdir -p /var/run/mysqld
	chown -R mysql:mysql /var/run/mysqld

	mysqld --bootstrap < config
fi