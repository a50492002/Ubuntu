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

start_smartd=yes
smartd_opts="--interval=1800"
```

### 備份 smartd 設定檔
```
sudo cp /etc/smartd.conf /etc/smartd.conf.bak
```

```
sudo nano /etc/smartd.conf

DEVICESCAN -d removable -n standby -m root -M exec /usr/share/smartmontools/smartd-runner

# 監控 SMART 狀態
/dev/sda -H -l error -l selftest -t -I 194
```


