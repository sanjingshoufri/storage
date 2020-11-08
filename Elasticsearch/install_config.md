# 启动
- bin/，一些常用的工具，某些工具不能以root身份运行，su + root.
    - ./elasticsearch-plugin install -h  查看可以安装的plugins.
    - ./elasticsearch-plugin install file:///home/download/license-2.4.6.zip 安装插件

# 配置
- network.host: 0.0.0.0
	- 线上不能设置所有ip都能访问

# 运行
## 问题
- org.elasticsearch.bootstrap.StartupException: java.lang.RuntimeException: can not run elasticsearch as root
	- 不能用root权限运行
    - 解决方案
	    - 创建一个新的用户，将相目录分配给该用户

# 监控工具