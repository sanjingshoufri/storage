# 表结构添加一个字段
ALTER TABLE es_user ADD today_rec_order_num tinyint(1) NOT NULL DEFAULT '0' COMMENT '今日接单数';

# 表结构删除一个字段
ALTER TABLE `table` DROP column column1;

# 创建表
CREATE TABLE `es_user_binding_douyin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT '' COMMENT '用户ID',
  `dy_id` varchar(100) DEFAULT NULL COMMENT '抖音号',
  `nickname` varchar(255) DEFAULT '' COMMENT '昵称',
  `profile` varchar(255) DEFAULT '' COMMENT '昵称截图',
  `status` tinyint(1) DEFAULT '0',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '软删除',
  `create_time` int(11) DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='用户基本信息表';