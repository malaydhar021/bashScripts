#!/bin/bash

printf "\033[1;31m/** Updating Packages ... */ \033[0m\n"
sudo apt-get update

printf "\033[1;31m/** Installing Apache2 as Web Server ... */\033[0m\n"
sudo apt-get install -y apache2

printf "\033[1;31m/** Restarting Apache2 Web Server ... */\033[0m\n"
sudo systemctl restart apache2

printf "\033[1;31m/** Installing MySQL as Database ... */\033[0m\n"
sudo apt-get install -y mysql-server

printf "\033[1;31m/** Configuting MySQL ... */\033[0m\n"
mysql_secure_installation

printf "\033[1;31m/** Installing PHP 7.0 using PPA ... */\033[0m\n"
sudo apt-get install -y python-software-properties
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y php7.1

printf "\033[1;31m/** Installing Additional PHP 7.0 Moduless ... */\033[0m\n"
sudo apt-get install -y php7.1 php7.1-fpm php7.1-cli php7.1-common php7.1-mbstring php7.1-gd php7.1-intl php7.1-xml php7.1-mysql php7.1-mcrypt php7.1-zip

printf "\033[1;31m/** Installing phpMyAdmin ... */\033[0m\n"
sudo apt-get install -y phpmyadmin
sudo echo 'Include /etc/phpmyadmin/apache.conf' >> /etc/apache2/apache2.conf

printf "\033[1;31m/** Enabling Modules for Laravel ... */\033[0m\n"
sudo phpenmod mcrypt mbstring curl gettext
sudo a2enmod rewrite
sudo a2enmod proxy_fcgi setenvif
sudo a2enconf php7.0-fpm
sudo a2enmod php7.0

printf "\033[1;31m/** Restarting PHP ... */\033[0m\n"
sudo systemctl restart php7.0-fpm

printf "\033[1;31m/** Restarting Apache2 Web Server to Apply New Configurations ... */\033[0m\n"
sudo service apache2 reload
sudo systemctl restart apache2

printf "\033[1;31m/** Installing GIT ... */\033[0m\n"
sudo apt install -y git

printf "\033[1;31m/** Installing Composer ... */\033[0m\n"
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer

printf "\033[1;31m/** Cleaning unnecesary files from apt-get ... */\033[0m\n"
sudo apt-get clean

printf "\033[1;31m/** Done */\033[0m\n"
