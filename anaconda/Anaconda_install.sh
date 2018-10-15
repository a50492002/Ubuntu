# 下載 Anaconda3 5.2.0
wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh

# 安裝 Anaconda3 5.2.0
bash Anaconda3-5.2.0-Linux-x86_64.sh

# 修改環境變數
sudo nano  ~/.bashrc
##################################################################
#    在最後面新增這兩行：                                          #
#        #add by Anaconda3 5.2.0 installer                       #
#        export  PATH="/home/<username>/anaconda3/bin:$PATH"     #
##################################################################

# 重新編譯環境變數
source ~/.bashrc

# 查看python版本
python --version
