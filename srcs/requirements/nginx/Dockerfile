# check if this version is penultimate before submission
FROM alpine:3.22

COPY ./nginx.conf /etc/nginx/

RUN apk update && apk add nginx

EXPOSE 80

CMD ["nginx"]
