# 备份
## 概述
- 为节约存储空间
	- 云数据库MySQL的物理备份和逻辑备份文件
	- 都会先经过qpress压缩
	- 后经过xbstream打包(xbstream为Percona的一种打包/解包工具)进行压缩与打包

## 常见备份方案
- .xb结尾的备份文件，用XtraBackup解压出来.
	- xbstream -x -C ./ < 20200827160417.xb
- qpress将其中的.qp结尾的文件解压出来.
	- xtrabackup --decompress --target-dir=./