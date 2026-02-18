# check if this version is penultimate before submission
FROM alpine:3.22

RUN apk update && apk add mariadb mariadb-client

EXPOSE 3306

CMD ["mysqld"]
