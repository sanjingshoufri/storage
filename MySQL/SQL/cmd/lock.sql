# 表锁的读锁，其它事务可读不可写
LOCK TABLES tn_user READ;
# 表锁的读锁，其它事务不可读写
LOCK TABLES tn_user WRITE;
# 释放表锁    
UNLOCK TABLES;


# 行锁
