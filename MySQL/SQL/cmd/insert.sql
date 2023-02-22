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