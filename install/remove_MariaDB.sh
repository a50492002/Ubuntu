sudo rm -r /etc/mysql/mysql.conf.d/
sudo killall mysqld
sudo rm -rf /var/lib/mysql
sudo apt-get purge mysql* mariadb* -y
sudo rm -rf /etc/mysql
sudo rm -rf /var/lib/mysql
sudo rm -rf /var/lib/mysql-files
sudo rm -rf /var/lib/mysql-keyring
sudo apt-get purge mysql-server mariadb-server* mysql-common -y
sudo apt-get autoremove
sudo apt-get update
