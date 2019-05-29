# 编码注意事项

> 之前买了本代码大全2 但是没有仔细阅读，现在放在工位上，空闲时间翻翻，做一些简单记录，来规范自己的编码

* 减少hardcode
* 控制结构较复杂的情况下，用table来简化if/else, switch之类的条件逻辑
* 能够适用逻辑运算符的情况 尽量适用逻辑运算
  * 比如 \| & ^ &gt;&gt; &lt;&lt;,比如\*0.5 4&gt;&gt;1
  * 善于利用二进制处理一些问题， 1 2 4 组合解决某些逻辑问题（例如Linux里面的权限管理 chmod 777 bin/run execute权限）

## 代码的艺术

### 函数

* 三要素：功能描述
* 三要素：返回值描述
* 三要素：参数描述
* 函数的规模，尽量在一屏内，上下切换容易丢失信息

函数的类型

* 逻辑判断类，is\_\_network\_\_ok\(\)
* 操作类 set delete 等等
* 获取数据类： get类

## 代码块

* 需要一些段落（合理使用空行和段落 表现出代码的层次感）
* 合理运用注释，可以尝试去 先写注释 在写代码

## 命名

望文生义，联想

概念是建立模型的出发点

好命名的标准\(体现出作用，不产生误导，减少注释\)

[http://unbug.github.io/codelf/\#开关](http://unbug.github.io/codelf/#开关)
