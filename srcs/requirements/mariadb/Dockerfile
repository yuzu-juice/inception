# check if this version is penultimate before submission
FROM alpine:3.22

RUN apk update && apk add mariadb mariadb-client

RUN addgroup mysqlgroup && adduser mysql mysqlgroup

USER mysql

EXPOSE 3306

CMD ["mariadbd"]
