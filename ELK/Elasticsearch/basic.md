# 基础
## 概述
- es是搜索引擎和分析

## 概念
- 节点
	- 单个Elastic实例称为一个节点(node)，一组节点构成一个集群(cluster)
- 索引
	- Elastic会索引所有字段，经过处理后写入一个反向索引(Inverted Index)，查找数据的时候，直接查找该索引	
	- 索引里的单条记录称为文档，document用JSON表示

	