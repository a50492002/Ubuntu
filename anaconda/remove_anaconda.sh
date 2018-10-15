# 安裝反安裝套件
conda install anaconda-clean

# 執行反安裝
anaconda-clean

# 清除殘留檔案
rm -rf ~/anaconda2
# or anaconda3

# 修改環境變數
sudo nano ~/.bashrc
###################################################################
#    刪除這行：                                                    #
#        export PATH="/home/<username>/anaconda3/bin:$PATH"       #
###################################################################
