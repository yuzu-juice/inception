FROM alpine:3.22

RUN apk update && apk add mariadb mariadb-client

RUN mkdir -p /run/mysqld /var/lib/mysql && \
    chown -R mysql:mysql /run/mysqld /var/lib/mysql

RUN mariadb-install-db --user=mysql --datadir=/var/lib/mysql --basedir=/usr

COPY conf/my.cnf /etc/my.cnf

COPY tools/entrypoint.sh /
RUN chmod +x /entrypoint.sh

EXPOSE 3306

ENTRYPOINT ["/entrypoint.sh"]
