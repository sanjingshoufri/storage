# 搭建数据库备份还原服务器
## 仪器
- 台式机、U盘

## 软件
- UltraISO，制作启动盘.

## 镜像
- DVD，完整版
- Mini，精简版
- GNOME，不能当做安装版，临时用用

## 安装
### bug
- 遇到的问题，https://blog.csdn.net/Jimmy_xmb/article/details/86518617
- 磁盘空间不足
	- 删除了磁盘数据

## 配置
### 配置网络
- 安装后的centos，没有连接上网络.

## 使用
- 网络连通之后，便可以直接用xshell进行连接了.

# MySQL安装
- 查看MySQL安装
	- rpm -qa | grep -i mysql
- 卸载MySQL
	- 
	

# 备份还原成数据
## 软件
- 安装percona-xtrabackup
	- 注意它的版本需要与MySQL的版本一致
	- rpm -ivh percona-xtrabackup-24-2.4.20-1.el7.x86_64.rpm

# 文件添加
- 将解压出来的文件，直接全部复制拷贝到mysql的数据目录下，直接覆盖拷贝.