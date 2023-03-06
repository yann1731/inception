#!bin/sh

if [-f db_exists] then
	echo "Database already configured..."
else
	mysql_install_db --user=mysql
fi