FROM php

RUN curl -LsS http://symfony.com/installer > symfony.phar
RUN mv symfony.phar /usr/local/bin/symfony
RUN chmod a+x /usr/local/bin/symfony

COPY php.ini /usr/local/etc/php/
#
RUN mkdir -p /var/www/html
WORKDIR /var/www/html
