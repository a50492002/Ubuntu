# smartmontools
硬碟 S.M.A.R.T. 相關工具

### 安裝工具
```
sudo apt-get update
sudo apt-get install smartmontools
```

## smartctl
#### 查看及檢測硬碟的 S.M.A.R.T. 功能

### 查看硬碟資訊
```
sudo smartctl -i /dev/sda
```

如果出現
`SMART support is: Available - device has SMART capability.`
代表該硬碟支援 S.M.A.R.T.

### 啟用 S.M.A.R.T. 檢測
```
sudo smartctl -s on /dev/sda
```

### 停用 S.M.A.R.T. 檢測
```
sudo smartctl -s off /dev/sda
```

## smartd
#### S.M.A.R.T. 監控功能腳本

### 啟用 smartd 檢測腳本
```
sudo nano /etc/default/smartmontools
```
#### 新增下面兩行 啟用 smartd
```
start_smartd=yes
smartd_opts="--interval=1800"
```

### 備份 smartd 設定檔
```
sudo cp /etc/smartd.conf /etc/smartd.conf.bak
```

### 設定 smartd
```
sudo nano /etc/smartd.conf
```

#### 新增下面一行 啟用 smartd
```
DEVICESCAN -d removable -n standby -m root -M exec /usr/share/smartmontools/smartd-runner
```
####參數說明:
* -d 設備類型
  * ata - 設備類型為ATA
  * scsi - 設備類型為SCSI
  * 3ware,N - 設備由一個或多個連接到3ware RAID控制器的ATA磁盤組成
  * removable - 設備或其媒體可移動。這表明應該繼續
* -n 監控設備時機
  * never - 持續檢查或監控設備，且不管其電源模式如何
  * sleep - 睡眠模式時停止監控設備
  * standby - 睡眠或待機模式停止監控設備
  * idle - 睡眠，待機或空閒模式時停止監控設備
* -m 指定要發送測試報告的電子郵件地址
* -M 指定電子郵件報告的所需傳遞類型
  * once - 對於檢測到的每種磁盤問題，僅發送一封警告電子郵件。
  * daily - 在檢測到每種類型的磁盤問題之後，在一天間隔，兩天間隔，四天間隔之後發送其他警告提醒電子郵件
  * test - 智能啟動後立即發送一封測試電子郵件
  * exec PATH - 運行可執行的PATH而不是默認的mail命令


# 監控 SMART 狀態
/dev/sda -H -l error -l selftest -t -I 194



