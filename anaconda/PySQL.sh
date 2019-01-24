pip install pymysql

sudo ufw allow 3306

sudo sed -i 's/bind-address/# bind-address/g' /etc/mysql/my.cnf

sudo systemctl restart mysql
