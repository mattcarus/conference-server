#!/bin/bash

sudo apt-get install apache2 php5 git unzip

cd /opt
sudo git clone https://github.com/wsams/talk2me.git
cd talk2me
sudo curl -sS https://getcomposer.org/installer | sudo php
sudo php composer.phar install
sudo nohup php bin/chat-server.php &
sudo cp www/cdn/js/example.config.js www/cdn/js/config.js
sudo cp -r www/* /var/www/html

cd /opt
sudo wget https://github.com/viljoviitanen/setup-simple-openvpn/archive/master.zip
sudo unzip master
cd setup-simple-openvpn-master
sudo sh setup.sh
