# px em rem dpi ppi dppx

#### 梳理尺寸单位的理解

---

* px 像素点 显示屏\(不考虑os对高分辨率屏幕的优化，如 Retina屏的显示处理\)

* em 基于父元素的尺寸，em继承父元素的大小

  ```
  body {
      font－size:62.5%;
      /*font－size:10px;上下两句的效果是一样*/
      /*body里面的元素 原来是 12px 写成1.2em即可*/
  }
  ```

* rem css3属性（IE8 IE8- 不支持） 基于根元素（html元素）

  ```
  html {
              font-size: 20px;/*调节根元素大小可以达到放大缩小的效果*/
          }
  ```

* dpi Dots Per Inch（每英寸所打印的点数）
  ![](http://cdn.infoqstatic.com/statics_s2_20150707-0138u2/resource/articles/development-of-the-mobile-web-deep-concept/zh/resources/zoom_pic.gif "4")
* ppi 显示屏的像素密度 计算公式
  ![](http://cdn.infoqstatic.com/statics_s2_20150707-0138u2/resource/articles/development-of-the-mobile-web-deep-concept/zh/resources/original.png "1")
  ![](http://hiphotos.baidu.com/exp/pic/item/cbc17b380cd79123de98a335ac345982b2b78033.jpg "2")
  ![](http://hiphotos.baidu.com/exp/pic/item/c28fddfdfc0392457af8d64e8694a4c27c1e25e6.jpg "3")
* dppx 貌似是css3 用来判断Retina屏的 \`\`\`html 

```
<!DOCTYPE html>
<html lang="zh-cmn-Hans">
<head>
<meta charset="utf-8" />
<style>
@media screen and (min-resolution: 2dppx) {
    .normal{display:none;}
}
@media screen and (min-resolution: 1dppx) and (max-resolution: 1.9dppx) {
    .retina{display:none;}
}
</style>
</head>
<body>
<p class="retina">视网膜屏</p>
<p class="normal">普通屏</p>
</body>
</html>
```

> 参考文章[http://www.infoq.com/cn/articles/development-of-the-mobile-web-deep-concept/](http://www.infoq.com/cn/articles/development-of-the-mobile-web-deep-concept/)



