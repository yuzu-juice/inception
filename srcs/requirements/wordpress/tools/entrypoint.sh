#!/bin/ash

until mariadb-admin ping -h mariadb -u ${MARIADB_USER} -p${MARIADB_PASSWORD} --silent 2>/dev/null; do
    echo "waiting for mariaDB..."
    sleep 3
done
echo "mariaDB is ready"

if [ ! -f wp-config.php ]; then
    wp config create --dbhost=mariadb --dbname=$MARIADB_DATABASE --dbuser=$MARIADB_USER --dbpass=$MARIADB_PASSWORD
fi

if ! wp core is-installed 2>/dev/null; then
    wp core install \
       --url=takitaga.42.fr \
       --title="Inception" \
       --admin_user=$WP_ADMIN_USER \
       --admin_password=$WP_ADMIN_PASSWORD \
       --admin_email=$WP_ADMIN_EMAIL

    wp user create \
       $WP_USER \
       $WP_USER_EMAIL \
       --role=editor \
       --user_pass=$WP_USER_PASSWORD
fi

exec php-fpm83 -F
