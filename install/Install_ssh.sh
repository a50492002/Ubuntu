sudo apt-get install ssh -y
sudo sed -i 's/Port 22/Port 58888/g' /etc/ssh/sshd_config
sudo sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin no/g' /etc/ssh/sshd_config
sudo systemctl restart ssh
