# 文本分析
## 概述
- 文本分析是一个转换非结构文本的过程，如邮件体、产品介绍等，转化成结构格式.
- 文本分析使es去执行全文搜索，它出现在两个时间:
	- 索引时
		- 当一个文档被索引时，任何文本列值被分析.
	- 搜索时
		- 搜索字符串被解析
- 分词(标记化)
	- 分析使全文搜索尽可能通过分词
	- 将文本分解成小块，称为tokens
- 正规
- 分析器剖析
	- 字符过滤器
		- 过滤器接收初始文本作为字符流，而且能够传递它
	- 标记器
		- 接收字符流，分成单独的标记，然后输出标记流
	- token过滤器
	    - 接收标记流
- 索引分析

## 配置
- 当索引或搜索text列时，es执行文本分析

## Stemming
### 概述
- 确保变体的匹配
	- 比如walking和walked，被阻断成walk.
		- 一个词的出现将会匹配另外一个词.
- Stemming是依赖语言，需要移除单词中的前缀和后缀.