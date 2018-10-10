sudo apt-get install software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db 
sudo add-apt-repository 'deb http://sfo1.mirrors.digitalocean.com/mariadb/repo/10.0/ubuntu trusty main'
sudo apt-get update -y
sudo apt-get install mariadb-server -y
# set password
sudo apt-get install apache2 -y
sudo apt-get install php php-cgi libapache2-mod-php php-common php-pear php-mbstring -y
sudo a2enconf php7.0-cgi
sudo systemctl reload apache2
sudo apt-get install phpmyadmin php-mbstring php-gettext -y
# apache2
# No
