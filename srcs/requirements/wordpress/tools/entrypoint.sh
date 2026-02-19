#!/bin/ash

until mysqladmin ping -h mariadb -u ${MARIADB_USER} -p${MARIADB_PASSWORD} --silent 2>/dev/null; do
    echo "waiting for mariaDB..."
    sleep 3
done
echo "mariaDB is ready"

wp config create --dbhost=mariadb --dbname=$MARIADB_DATABASE --dbuser=$MARIADB_USER --dbpass=$MARIADB_PASSWORD
wp core install \
   --url=takitaga.42.fr \
   --title="Inception" \
   --admin_user=wpcli \
   --admin_password=wpcli \
   --admin_email=takitaga@student.42tokyo.jp

exec php-fpm83 -F
