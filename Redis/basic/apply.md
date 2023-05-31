# 缓存
## 处理场景
- 缓存穿透
	- 缓存和数据库中都没有数据，用户不停地发起请求
	- 比如发起id为-1或者id很大，这个用户可能是攻击者
		- 攻击会导致数据库压力多大
- 缓存击穿
	- 缓存中没有数据，但是数据库中有数据
	- 这时候并发请求特别多，引起数据库压力过大
- 缓存雪崩
	- 缓存中有大批的数据过期，而且查询量巨大
	- 直接访问数据库，数据库压力过大甚至down机

## 业务场景
- 热点Key
	- 产生的原因
		- 用户消费的数据远大于生产的数据
			- 比如热点新闻
	- 请求分片集中，超过单Server的性能极限
		- 流量集中
			- 达到物理网卡的上限
		- 请求过多
			- 缓存分片服务被打垮
		- DB击穿
			- 引起业务雪崩

# 数据一致性
## Redis与MySQL数据一致性问题

### MySQL同步Redis
- MySQL与Redis双写的问题
- 实时同步
    - 写入Redis成功，再写MySQL

- 定时同步
    - 一段时间的数据，统计到MySQL里。比如，秒杀活动最后的数据写入到MySQL中

# 网络应用
- 统计页面访问量    