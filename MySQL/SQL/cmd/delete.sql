# 删除最后一条记录
DELETE FROM table WHERE id = (SELECT id FROM (SELECT id FROM table ORDER BY id desc LIMIT 1) a)

# 删除重复记录，保留最后一条记录
DELETE c1 FROM table c1
INNER JOIN table c2 
WHERE
    c1.id > c2.id AND 
    c1.phone_num = c2.phone_num;

# 多表关联删除
DELETE t1 FROM t1,t2 ...

# 清空表
TRUNCATE table;