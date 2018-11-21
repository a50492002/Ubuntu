sudo apt-get update -y
sudo apt-get upgrade -y

#安裝 SSH server
sudo apt-get install ssh -y
sudo sed -i 's/Port 22/Port 58888/g' /etc/ssh/sshd_config
sudo sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin no/g' /etc/ssh/sshd_config
sudo systemctl restart ssh

#安裝 LAMP
sudo apt-get install software-properties-common -y
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
sudo add-apt-repository 'deb http://sfo1.mirrors.digitalocean.com/mariadb/repo/10.0/ubuntu trusty main'
sudo apt-get update -y
sudo apt-get install mariadb-server -y
sudo apt-get install apache2 -y
sudo apt-get install php php-cgi libapache2-mod-php php-common php-pear php-mbstring -y
sudo a2enconf php7.0-cgi
sudo systemctl reload apache2
sudo apt-get install phpmyadmin php-mbstring php-gettext -y

#安裝FTP
sudo apt-get install vsftpd -y



#安裝 Anaconda
wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh
bash Anaconda3-5.2.0-Linux-x86_64.sh
pip install --upgrade pip
pip install msgpack
pip install tensorflow
pip install keras
pip install h5py==2.8.0rc1
jupyter notebook --generate-config
jupyter notebook password
