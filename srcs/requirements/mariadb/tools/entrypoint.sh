#!/bin/sh

mariadbd --user=mysql &
sleep 2

mariadb -u root <<EOF
CREATE DATABASE IF NOT EXISTS $MARIADB_DATABASE;
CREATE USER IF NOT EXISTS '$MARIADB_USER'@'%' IDENTIFIED BY '$MARIADB_PASSWORD';
GRANT ALL PRIVILEGES ON $MARIADB_DATABASE.* TO '$MARIADB_USER'@'%';
FLUSH PRIVILEGES;
EOF

mariadb-admin -u root shutdown

exec mariadbd --user=mysql
