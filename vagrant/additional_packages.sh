#!/usr/bin/env bash

sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt -y upgrade

sudo apt install -y php7.4 php7.4-fpm php7.4-common php7.4-mysql php7.4-xml php7.4-xmlrpc php7.4-curl php7.4-gd php7.4-imagick php7.4-cli php7.4-dev php7.4-imap php7.4-mbstring php7.4-opcache php7.4-soap php7.4-zip php7.4-intl unzip
sudo apt install -y nginx
sudo apt install -y mysql-server mysql-client
sudo apt install -y npm



