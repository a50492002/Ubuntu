sudo mysql -u root
MariaDB [(none)]> CAREAR USER '<username>'@'%' IDENTIFIED BY '<password>';
MariaDB [(none)]> GRANT ALLPRIVILEGES ON *.* TO '<usermame>'@'%' WITH  GRANT OPTION;
MariaDB [(none)]> exit
sudo systemctl restart mariadb