#!/bin/sh

echo "Installing dependencies, please wait ..."

user=`whoami`
dir=`dirname $0`

echo "gnome-terminal ..."
apt-get install gnome-terminal
echo "😄  done"

echo "vim ..."
apt-get install vim
echo "😄  done"

echo "curl ..."
apt-get install curl
echo "😄  done"

echo "ruby ..."
apt-get install ruby
echo "😄  done"

echo "php5 ..."
apt-get install php5 php5-intl php5-json php5-mcrypt php5-xdebug php5-mysql
echo "😄  done"

echo "nodejs ..."
add-apt-repository ppa:chris-lea/node.js
apt-get update
apt-get install nodejs
echo "😄  done"

echo "mysql ..."
apt-get install mysql-server
echo "😄  done"

echo "apache2 ..."
apt-get install apache2 libapache2-mod-php5
sed -i.bak s/APACHE_RUN_USER=www-data/APACHE_RUN_USER=$user/ /etc/apache2/envvars && rm /etc/apache2/envvars.bak
sed -i.bak s/APACHE_RUN_GROUP=www-data/APACHE_RUN_GROUP=$user/ /etc/apache2/envvars && rm /etc/apache2/envvars.bak
service apache2 restart
echo "😄  done"

echo "phpmyadmin ..."
apt-get install phpmyadmin
echo "😄  done"

echo "composer ..."
curl -sS https://getcomposer.org/installer | php -- --install-dir=/opt --filename=composer
cp $dir/scripts/composer /usr/bin/composer && chmod +x /usr/bin/composer
echo "😄  done"

echo "phantomjs ..."
npm install -g phantomjs
echo "😄  done"

echo "grunt ..."
npm install -g grunt-cli
echo "😄  done"

echo "add sf2 hosts ..."
cp $dir/scripts/addsfhost /usr/bin/addsfhost
chmod +x /usr/bin/addsfhost
echo "😄  done"

echo "guard ..."
apt-get install exuberant-ctags
gem install guard-ctags-composer
echo "😄  done"
