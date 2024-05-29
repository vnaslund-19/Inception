#!/bin/sh

service mysql start; # Prepares for SQL cmd's
mysql -e "CREATE DATABASE \`${SQL_DATABASE}\`;"
mysql -e "CREATE USER \`${SQL_USER}\`@'localhost' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON \`${SQL_DATABASE}\`.* TO \`${SQL_USER}\`@'%' IDENTIFIED BY '${SQL_PASSWORD}';"
mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${SQL_ROOT_PASSWORD}';"
mysql -e "FLUSH PRIVILEGES;"
mysqladmin -u root -p$SQL_ROOT_PASSWORD shutdown
exec mysqld_safe

# Mariadb server is set up  
# with a specific database, user, and passwords 
# as defined by the environment variables