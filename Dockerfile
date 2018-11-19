FROM circleci/php:7.2-apache-node-browsers

# Install custom extensions
RUN apt install -y libsqlite3-dev zlib1g-dev
RUN docker-php-ext-install zip bcmath
