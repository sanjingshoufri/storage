# 安装
已经调通的demo记录
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

# 使用
- net start MongoDB
- net stop MongoDB
- 访问
	- http://localhost:27017/	