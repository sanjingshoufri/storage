# Query DSL
## 概述
- DSL，指定域查询，将DSL查询看作一个抽象语法树，由两类语句组成.
	- 叶查询语句
		- 在一个指定的列上，去寻找指定的值，如match、term、range.
	- 组合查询语句
		- 包裹叶查询或其它组合查询语句，被用来组合多查询
- 允许昂贵查询
	- 需要做线性浏览去实现认证匹配
		- 脚本查询
	- 较高的消耗查询
		- 模糊查询
		- 正则查询
		- 前缀查询
		- 通配符查询
		- 范围查询
- 连接查询
	- 嵌套查询
	- 父子查询


## 查询和过滤上下文
- 相关得分
- 查询上下文
- 过滤上下文

## 组合查询


## 全文查询
- 全文查询使你能去查询分析的文本列，比如email体.
- 该组的查询有:
	- Match query
		- 返回包含提供的文本、数值、日期或布尔值文档.

## 专用查询
- 脚本查询
- 基于一个给定的文档去过滤文档，这个脚本通常用在一个过滤的上下文

## Term-level
- 模糊
	- 返回
- 正则
- 前缀
- 通配

## Geo Query
### 概述
- es支持两类geo数据，支持lat/lon对的geo_point列，支持得分、行数、环、多边形模块等.
- 该组的查询有:
	- geo_bounding_box
	- geo_distance

## Shape Query
- 