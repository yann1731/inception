#!bin/sh

mkdir /var/log/mysql
chmod +w /var/log/mysql

mkdir /run/mysqld
mkdir +x /run/mysqld

mysqld