# 导出表结构

/**
 * 删除表结构
 * 查询出删除表结构的语句，点击列名，然后all copy，执行.
 */
SELECT concat('DROP TABLE IF EXISTS ', table_name, ';')
FROM information_schema.tables
WHERE table_schema = 'estime';