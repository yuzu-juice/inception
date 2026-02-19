#!/bin/sh

if [ ! -d "/var/lib/mysql/mysql" ]; then
    mariadbd --user=mysql --bootstrap <<EOF
CREATE DATABASE IF NOT EXISTS $MARIADB_DATABASE;
CREATE USER IF NOT EXISTS '$MARIADB_USER'@'%' IDENTIFIED BY '$MARIADB_PASSWORD';
GRANT ALL PRIVILEGES ON $MARIADB_DATABASE.* TO '$MARIADB_USER'@'%';
FLUSH PRIVILEGES;
EOF
fi

exec mariadbd --user=mysql --bind-address=0.0.0.0
