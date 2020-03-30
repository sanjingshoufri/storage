/**
 * 删除最后一条记录
 */
DELETE FROM table WHERE id = (SELECT id FROM (SELECT id FROM table ORDER BY id desc LIMIT 1) a)

