FROM circleci/php:8.0-apache-node-browsers

# use root user for install
USER root

# Install custom extensions
RUN apt install -y libsqlite3-dev zlib1g-dev
RUN docker-php-ext-install zip bcmath sockets pdo pdo_mysql
RUN cp /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini

# back to circleci user
USER circleci
