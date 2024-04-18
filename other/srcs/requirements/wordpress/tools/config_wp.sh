#!/bin/bash

if [ ! -f wp-config.php ]; then
    wp core download --path=/var/www/html --allow-root
    wp config create --dbname="$MYSQL_DATABASE" --dbhost="$MYSQL_HOSTNAME" \
                    --dbuser="$MYSQL_USER" --dbpass="$MYSQL_PASSWORD" --allow-root
    wp core install --url="$DOMAIN_NAME" --title="Inception" \
                    --admin_user="$WORDPRESS_ADMIN" --admin_password="$WORDPRESS_ADMIN_PASSWORD" \
                    --admin_email="$WORDPRESS_ADMIN_EMAIL" --allow-root

else
    echo "WordPress is already installed."
fi

echo "Starting PHP-FPM..."

exec php-fpm8.2 -F
