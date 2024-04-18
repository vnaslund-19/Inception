#!/bin/bash

sed -i "s/:DB_NAME/$MYSQL_DATABASE/g" /etc/mysql/init.sql
sed -i "s/:USER/$MYSQL_USER/g" /etc/mysql/init.sql
sed -i "s/:UPASS/$MYSQL_PASSWORD/g" /etc/mysql/init.sql
sed -i "s/:ADMIN/$WORDPRESS_ADMIN/g" /etc/mysql/init.sql
sed -i "s/:APASS/$WORDPRESS_ADMIN_PASSWORD/g" /etc/mysql/init.sql

exec mysqld --console