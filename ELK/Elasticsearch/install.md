# 安装
## Centos
- 需要先安装Java
- wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.8.0-x86_64.rpm
	- rpm -ivh elasticsearch-7.8.0-x86_64.rpm
	- systemctl daemon-reload
	- systemctl start elasticsearch

# 配置
- /etc/elasticsearch/elasticsearch.yml
	- network.host: 0.0.0.0


# 启动
- bin/，一些常用的工具，某些工具不能以root身份运行，su + root
    - ./elasticsearch-plugin install -h  查看可以安装的plugins.
    - ./elasticsearch-plugin install file:///home/download/license-2.4.6.zip 安装插件

# 运行
## 问题
- org.elasticsearch.bootstrap.StartupException: java.lang.RuntimeException: can not run elasticsearch as root
	- 不能用root权限运行
    - 解决方案
	    - 创建一个新的用户，将相目录分配给该用户