# MongoDB
## Win
- 下载
	- https://www.mongodb.com/try/download/community
	- 选择win的zip包
- 配置环境变量，mongodb的bin目录加到path下
- 創建一個mongod.cfg
	systemLog:
       destination: file
       path: e:\mongodbData\log\mongod.log      
    storage:
       dbPath: e:\mongodbData\db

- cmd管理员权限进入bin目录，执行
	- mongod.exe  --config "e:\mongodb\mongod.cfg" --install
	- 安装成功
- 使用
	- net start MongoDB
	- net stop MongoDB
	- 访问
		- http://localhost:27017/	

## Centos
- 下载rpm包
	- 通过yum安装
- 下载TGZ	
	- sudo chown `whoami` /var/lib/mongo  # 改变文件的所属人和组
- 运行
	- mongod --dbpath /var/lib/mongo --logpath /var/log/mongodb/mongod.log --fork


# Mongo Shell安装
## Win
- https://www.mongodb.com/try/download/shell
- 将mongosh-1.6.0-win32-x64目录下的后四个文件和bin目录下的两个文件，copy到mongodb安装路径下的bin目录中即可	
- 使用
	- 在mongodb安装路径下的bin目录中，双击mongosh.exe即可打开Mongo Shell

## Centos
- 下载TGZ
   - 下载之前，一定要选择和CPU对应的包	
	- 解压，bin目录给予可执行权限 
- 配置
- 运行
	- mongosh