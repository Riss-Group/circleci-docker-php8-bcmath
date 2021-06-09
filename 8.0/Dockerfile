FROM circleci/php:8.0-apache-node-browsers

# use root user for install
USER root

# Install custom extensions
RUN apt install -y libsqlite3-dev zlib1g-dev
RUN docker-php-ext-install zip bcmath sockets pdo pdo_mysql
RUN sed -i "s/^error_reporting = E_ALL.*/error_reporting = E_ALL \& ~E_DEPRECATED \& ~E_STRICT/" /usr/local/etc/php/php.ini-development

# back to circleci user
USER circleci
