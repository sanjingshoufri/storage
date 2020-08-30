# 备份
## 概述
- 为节约存储空间，云数据库 MySQL 的物理备份和逻辑备份文件，都会先经过 qpress 压缩，后经过 xbstream 打包（xbstream 为 Percona 的一种打包/解包工具）进行压缩与打包

## 常见备份方案
- .xb结尾的备份文件，用XtraBackup解压出来.
	- xbstream -x -C ./ < 20200827160417.xb
- qpress将其中的.qp结尾的文件解压出来.
	- xtrabackup --decompress --target-dir=./