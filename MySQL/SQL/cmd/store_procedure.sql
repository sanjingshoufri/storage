# 存储过程删除重复记录
delimiter $$
drop procedure if exists `proc_copy_stu_info` $$
CREATE PROCEDURE `proc_copy_stu_info`()
BEGIN
    ##定义变量
    DECLARE done INT DEFAULT FALSE;
    DECLARE v_id VARCHAR(200);
    DECLARE v_last_login_ip VARCHAR(200);
    DECLARE v_last_login_date VARCHAR(200);
    DECLARE v_phone_num VARCHAR(200);

    # 创建游标，并存储数据
    DECLARE cur CURSOR FOR SELECT id, last_login_ip, last_login_date, phone_num FROM es_user_login GROUP BY phone_num HAVING COUNT(id) > 1;

    # 游标中的内容执行完后将done设置为true
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = true;

    # 打开游标
    OPEN cur;
       # 执行循环
       read_loop : LOOP

       IF done THEN
           LEAVE read_loop;
       END IF;

       # 取游标中的值
       FETCH cur INTO v_id, v_last_login_ip, v_last_login_date, v_phone_num;

       IF v_last_login_ip IS NULL AND v_last_login_date = 0 THEN
           INSERT INTO es_del_user_login(user_id, phone_num) VALUE(v_id, v_phone_num);
       END IF;

       END LOOP read_loop;
    CLOSE cur;
END
$$
delimiter;
call `proc_copy_stu_info`();
commit;