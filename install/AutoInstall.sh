sudo apt-get update -y
sudo apt-get upgrade -y

#安裝 SSH server
sudo apt-get install -y ssh
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.backup
sudo sed -i 's/Port 22/Port 58888/g' /etc/ssh/sshd_config
sudo sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin no/g' /etc/ssh/sshd_config
sudo systemctl restart ssh
# sudo ufw allow 58888

#安裝 LAMP
sudo apt-get install -y software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
sudo add-apt-repository 'deb http://sfo1.mirrors.digitalocean.com/mariadb/repo/10.0/ubuntu trusty main'
sudo apt-get update -y
sudo apt-get install -y mariadb-server
sudo apt-get install -y apache2
sudo apt-get install -y php php-cgi libapache2-mod-php php-common php-pear php-mbstring
sudo a2enconf php7.0-cgi
sudo systemctl reload apache2
sudo apt-get install -y phpmyadmin php-mbstring php-gettext
# sudo ufw allow http

#安裝FTP
sudo apt-get install -y vsftpd
sudo cp /etc/vsftpd.conf /etc/vsftpd.conf.backup
sudo sed -i 's/#write_enable=YES/write_enable=YES/g' /etc/vsftpd.conf
sudo sed -i '$a local_root=/var/www/html/' /etc/vsftpd.conf
sudo sed -i '$a force_dot_files=YES' /etc/vsftpd.conf
sudo sed -i '$a pasv_min_port=50000' /etc/vsftpd.conf
sudo sed -i '$a pasv_max_port=55000' /etc/vsftpd.conf
sudo chmod 777 /var/www/html
sudo systemctl restart vsftpd
# sudo ufw allow ftp
# sudo ufw allow 50000:55000/tcp

#防火牆UFW
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 58888
sudo ufw allow http
sudo ufw allow https
sudo ufw allow ftp
sudo ufw allow ftps
sudo ufw allow 50000:55000/tcp
sudo ufw enable

#安裝 Anaconda
#wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh
#bash Anaconda3-5.2.0-Linux-x86_64.sh
#pip install --upgrade pip
#pip install msgpack
#pip install tensorflow
#pip install keras
#pip install h5py==2.8.0rc1
#jupyter notebook --generate-config
#jupyter notebook password
