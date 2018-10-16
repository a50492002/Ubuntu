sudo apt-get install vsftpd

sudo nano /etc/vsftpd.conf
#########################################################################################
#  修改以下參數:                                                                         #
#     # Allow anonymous FTP? (Disabled by default).                                     #                  
#     anonymous_enable=NO                                                               #
#     #                                                                                 #
#     # Uncomment this to allow local users to log in.                                  #
#     local_enable=YES                                                                  #cd 
#     #                                                                                 #
#     # Uncomment this to enable any form of FTP write command.                         #
#     write_enable=YES                                                                  #
#       .....                                                                           #
#     # You may restrict local users to their home directories.  See the FAQ for        #
#     # the possible risks in this before using chroot_local_user or                    #
#     # chroot_list_enable below.                                                       #
#     chroot_local_user=YES                                                             #
#     user_sub_token=$USER                                                              #
#     local_root=/home/$USER/ftp                                                        #
#########################################################################################

sudo systemctl restart vsftpd

sudo mkdir /mnt/web

sudo ln -s /mnt/web/ /var/www/html/
