# 热点Key
## 热点Key产生的原因
- 用户消费的数据远大于生产的数据
	- 比如热点新闻
- 请求分片集中，超过单Server的性能极限

## 热点Key危害
- 流量集中
	- 达到物理网卡的上限
- 请求过多
	- 缓存分片服务被打垮
- DB击穿
	- 引起业务雪崩