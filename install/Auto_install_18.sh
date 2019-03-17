sudo apt-get update -y
sudo apt-get upgrade -y

#安裝 SSH server
sudo apt-get install -y ssh
sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.backup
sudo sed -i 's/#Port 22/Port 58888/g' /etc/ssh/sshd_config
sudo sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin no/g' /etc/ssh/sshd_config
sudo systemctl restart ssh
# sudo ufw allow 8797

#安裝 LAMP
sudo apt-get install -y apache2
sudo apt-get install -y mariadb-server mariadb-client
sudo apt-get install -y php php-cgi libapache2-mod-php php-common php-pear php-mbstring php-mysql
sudo a2enconf php7.2-cgi
sudo systemctl reload apache2
sudo apt-get install -y phpmyadmin php-mbstring php-gettext
# sudo ufw allow http

#安裝FTP
sudo apt-get install -y vsftpd
sudo cp /etc/vsftpd.conf /etc/vsftpd.conf.backup
sudo sed -i 's/#write_enable=YES/write_enable=YES/g' /etc/vsftpd.conf
sudo sed -i '$a local_root=/var/ftp/' /etc/vsftpd.conf
sudo sed -i '$a user_config_dir=/etc/vsftpd/userconfig' /etc/vsftpd.conf
sudo sed -i '$a force_dot_files=YES' /etc/vsftpd.conf
sudo sed -i '$a pasv_min_port=50000' /etc/vsftpd.conf
sudo sed -i '$a pasv_max_port=55000' /etc/vsftpd.conf
sudo mkdir /var/ftp
sudo chmod 777 /var/ftp
sudo mkdir /etc/vsftpd
sudo mkdir /etc/vsftpd/userconfig
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
