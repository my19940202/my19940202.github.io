# 知识点-php

## php代码

```text
// 打印log常用
var_dump($name);
echo "fuck you";
```

## yii框架相关的知识整理

mvc 入门教程： [http://www.yiichina.com/doc/guide/1.0/basics.controller](http://www.yiichina.com/doc/guide/1.0/basics.controller)

controller

model

view

## Smarty模板上的简单操作
> smarty语句所有用{}wrap,下面语句的wrap暂时去掉（之前触发过gitpage的build报错，smarty 本身也可以自定义wrap的格式）
```text
// 字符串连接
$desc = $ad->desc|cat:$ad->descSec
$style_785_class = $style_785_class|cat:"ec-785-idea2062"

// 数组遍历
foreach $advertisments as $ad
/foreach

// 数组查看长度
$linkCount=$qxLinks|@count
// 去除多余的空格
strip

// 类型转化
// %.1f 一位小数  %d 整数
$stars = (5-$sublink->content|string_format:"%.1f")*24
```
