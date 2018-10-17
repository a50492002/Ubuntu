# 安裝FTP
sudo apt-get install vsftpd


# 創建FTP目錄(web用)
sudo mkdir /mnt/web

# 連結FTP目錄到web目錄
sudo ln -s /mnt/web/ /var/www/html/

# 編輯設定檔
sudo nano /etc/vsftpd.conf
#########################################################################################
#  修改以下參數:                                                                         #
#     # Allow anonymous FTP? (Disabled by default).                                     #                  
#     anonymous_enable=NO                                                               #
#     #                                                                                 #
#     # Uncomment this to allow local users to log in.                                  #
#     local_enable=YES                                                                  #
#     #                                                                                 #
#     # Uncomment this to enable any form of FTP write command.                         #
#     write_enable=YES                                                                  #
#     local_root=/mnt/web                                                               #
#     .....                                                                             #
#########################################################################################

# 重啟FTP
sudo systemctl restart vsftpd
