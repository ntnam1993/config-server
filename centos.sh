#!/bin/bash
#centos 7 https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-on-centos-7

# Update
sudo yum update

#uninstall old httpd and old php
sudo yum remove httpd* -y
sudo yum remove php* -y

#install httpd24 for php >= 7.0
sudo yum install httpd24 -y

#install php7.1
sudo yum install php71 -y
sudo yum install php71-cli -y
sudo yum install php71-bcmath -y
sudo yum install php71-common -y
sudo yum install php71-devel -y
sudo yum install php71-gd -y
sudo yum install php71-intl -y
sudo yum install php71-json -y
sudo yum install php71-mbstring -y
sudo yum install php71-mcrypt -y
sudo yum install php71-mysqlnd -y
sudo yum install php71-php-pecl-mysql -y
sudo yum install php71-odbc -y
sudo yum install php71-opcache -y
sudo yum install php71-pdo -y
sudo yum install php71-pecl-apcu -y
sudo yum install php71-pecl-igbinary -y
sudo yum install php71-pecl-imagick -y
sudo yum install php71-pecl-memcache -y
sudo yum install php71-pecl-memcached -y
sudo yum install php71-pecl-oauth -y
sudo yum install php71-pecl-ssh2 -y
sudo yum install php71-pecl-uuid -y
sudo yum install php71-pgsql -y
sudo yum install php71-process -y
sudo yum install php71-soap -y
sudo yum install php71-xml -y
sudo yum install php71-xmlrpc -y

sudo service httpd restart

# install mysql

sudo yum install -y mysql56-server php71-mysqlnd

sudo chkconfig httpd on

mysql_secure_installation

#install git

sudo yum install git 

#install composer
cd
sudo curl -sS https://getcomposer.org/installer | sudo php
sudo mv composer.phar /usr/local/bin/composer
sudo ln -s /usr/local/bin/composer /usr/bin/composer

sudo yum update
