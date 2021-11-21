# 锁
## 概念
- 锁必须在事务中使用
	- 

## 锁分类
- 范围划分
    - 行锁
	    - 等待行锁超时
		    - 产生
			    - 增删改同时操作一行时，MySQL会将该行锁定，只有得到锁权限的操作才能修改该条记录
	    - 分类
	        - 共享锁(读锁)
		        - 允许事务有读一行的锁
	        - 互斥锁(写锁)
		        - 允许事务更新或删除一行的锁
		        - Demo
			        - BEGIN;
						- SELECT name,sleep(10) FROM tn_user WHERE id = 1 FOR UPDATE
						- UPDATE tn_user SET name = 'sss' WHERE id = 1
					- COMMIT;
    - 表锁 
	    - 避免其他的客户端会话在指定时间内访问同一张表
	    - 分类
		    - 自增锁
				- 如果表中存在自增字段，MySQL会自动维护一个自增锁
		- 操作
			- LOCK TABLES table_name [READ | WRITE]

### 排它锁
- 当对某行记录添加排它锁
	- 在添加锁的请求执行期间
		- 别的请求无法update/delete该记录
		- 但可以查询
- 执行结束后，该行则自由操作

### 意向锁
- 多粒度锁
	- 允许行锁和表锁共存

### 间隙锁
- 索引记录之间或之外间隙上的锁
- 一个间隙可以跨域单索引值，也可以跨越多索引值

### 临键锁

### 记录锁
- 索引记录上的锁