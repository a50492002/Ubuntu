sudo apt-get install -y vsftpd
sudo cp /etc/vsftpd.conf /etc/vsftpd.conf.backup
sudo sed -i 's/#write_enadle=YES/write_enadle=YES/g' /etc/ssh/sshd_config
sudo sed -i '$a local_root=/var/www/html/' /etc/vsftpd.conf
sudo sed -i '$a local_root=/var/www/html/' /etc/vsftpd.conf
sudo chmod 777 /var/www/html
sudo systemctl restart vsftpd
