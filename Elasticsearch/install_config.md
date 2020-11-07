# 启动
- bin/，一些常用的工具，某些工具不能以root身份运行，su + root.
    - ./elasticsearch-plugin install -h  查看可以安装的plugins.
    - ./elasticsearch-plugin install file:///home/download/license-2.4.6.zip 安装插件

# 配置
- 

# 卸载
- rpm安装的包
	- 

# 运行
## 问题
- org.elasticsearch.bootstrap.StartupException: java.lang.RuntimeException: can not run elasticsearch as root
	- 不能用root权限运行
    - 解决方案
	    - 

# 监控工具