# check if this version is penultimate before submission
FROM alpine:3.22

COPY ./conf/nginx.conf /etc/nginx/nginx.conf

RUN apk update && apk add nginx openssl


RUN mkdir /etc/nginx/ssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    	    -out /etc/nginx/ssl/takitaga.crt \
	    -keyout /etc/nginx/ssl/takitaga.key \
	    -subj "/C=JP/ST=Tokyo/L=Shinjuku/O=42 Tokyo/OU=takitaga/CN=takitaga"

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
