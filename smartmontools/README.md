# smartmontools
硬碟S.M.A.R.T.相關工具

## smartctl

### 安裝工具
```
sudo apt-get update
sudo apt-get install smartmontools
```

### 查看硬碟資訊
```
sudo smartctl -i /dev/sda
```

如果出現
`SMART support is: Available - device has SMART capability.`
代表該硬碟支援 S.M.A.R.T.

### 啟用 S.M.A.R.T. 監控
```
sudo smartctl -s on /dev/sda
```

### 停用 S.M.A.R.T. 監控
```
sudo smartctl -s off /dev/sda
```




