# 删除最后一条记录
DELETE FROM table WHERE id = (SELECT id FROM (SELECT id FROM table ORDER BY id desc LIMIT 1) a)

# 删除重复记录，保留最后一条记录
DELETE c1 FROM table c1
INNER JOIN table c2 
WHERE
    c1.id > c2.id AND 
    c1.phone_num = c2.phone_num;

# 关联更新

# 清空表
TRUNCATE table;


# 查询插入
INSERT INTO es_user_drop (
	`drop`,
	`user_id`,
	`create_time`,
	`update_time`
) SELECT
	num,
	user_id,
	unix_timestamp(now()),
	unix_timestamp(now())
FROM
	table