#!bin/sh


wget https://wordpress.org/latest.tar.gz -O wordpress.tar.gz
tar -xzf wordpress.tar.gz
rm wordpress.tar.gz

cp -r wordpress/ /var/www/html
rm -rf wordpress/



# exec "$@"