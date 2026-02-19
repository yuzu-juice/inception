FROM alpine:3.22

RUN apk update && apk add curl mariadb-client \
    php \
    php-phar \
    php-curl \
    php-fpm \
    php-mysqli \
    php-json \
    php-dom \
    php-exif \
    php-fileinfo \
    php-igbinary \
    php-imagick \
    php-intl \
    php-mbstring \
    php-openssl \
    php-xml \
    php-zip

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

RUN mkdir -p /var/www/html && chown -R nobody:nobody /var/www/html

WORKDIR /var/www/html

COPY conf/www.conf /etc/php83/php-fpm.d/
COPY tools/entrypoint.sh /
RUN chmod +x /entrypoint.sh

RUN php -d memory_limit=256M /usr/local/bin/wp core download

ENTRYPOINT ["/entrypoint.sh"]
