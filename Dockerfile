FROM mediawiki:latest

# updated package information 
RUN apt-get update

# install utils
RUN apt-get install -y curl unzip
RUN apt install -y vim

# composer install
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# delete cache
RUN apt-get clean

# delete unnecessary list
RUN rm -rf /var/lib/apt/lists/*
