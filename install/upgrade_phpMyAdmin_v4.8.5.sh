sudo mv /usr/share/phpmyadmin/ /usr/share/phpmyadmin.bak
sudo mkdir /usr/share/phpmyadmin/
cd /usr/share/phpmyadmin/
sudo wget https://files.phpmyadmin.net/phpMyAdmin/4.8.5/phpMyAdmin-4.8.5-all-languages.tar.gz
sudo tar xzf phpMyAdmin-4.8.5-all-languages.tar.gz
sudo mv phpMyAdmin-4.8.5-all-languages/* /usr/share/phpmyadmin
