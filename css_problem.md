# 知识点-css

**PPI：单位英寸像素数（Pixel Per Inch）：现实世界的一英寸内像素数，决定了屏幕的显示质量**

**DPR: 设备像素比率（Device Pixel Ratio）：物理像素与逻辑像素（px）的对应关系**

### rem em的定义

em 以父元素 上面的font-size 为基准

rem 以 HTML 上面的font-size 为基准

```text
rem <html lang="en" style="font-size: 20px;">
```

### input type=text 问题

```text
<!--自动focus-->
<input autofocus="autofocus" tye="text" />
<!--取消 focus时的border-->
input:focus {
    outline: none;
}
```

### Formatting context

> Formatting context 是 W3C CSS2.1 规范中的一个概念。它是页面中的一块渲染区域，并且有一套渲染规则，它决定了其子元素将如何定位，以及和其他元素的关系和相互作用。最常见的 Formatting context 有 Block fomatting context \(简称BFC\)和 Inline formatting context \(简称IFC\)。

### 文档流相关知识 FLOW

> 文档流是文档中可显示对象在排列时所占用的位置，定位和浮动会脱离文档流

### a:link visited  active hover

| a{} | for a have no href |
| :--- | :--- |
| a:link | have href |
| a:active | when click |

### 选中区域

```text
/*选中区域颜色*/
::selection {
    background-color: #fea;
}
::-moz-selection {
    background-color: #fea;
}

/*设置禁止选中*/
-moz-user-select:none;
-webkit-user-select:none;
user-select:none;
```

### border:solid 默认是3px\(等价于 border:3px solid \#000;\)

### inline-block 空格造成的2px间隙

```text
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>text shadow</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
    <script type="text/javascript" src="http://lab.cubiq.org/iscroll5/build/iscroll.js"></script>
    <style>
    .inner {
        width: 300px;
        height: auto;
        border: 1px solid red;
        padding: 0;
        margin: 0;
    }
    .m1 {
        display: inline-block;
        width: 100px;
        height: 100px;
        background: rgba(20,20,9,0.8);   
    }
    .m2 {
        display: inline-block;
        width: 180px;
        height: 100px;
        background: rgba(20,200,9,0.8);   
    }
    .m3 {
        display: block;
        width: 100%;
        height: 40px;
        background: rgba(20,200,9,0.8);   
    }
    .m11 {
        display: inline-block;
        width: 100px;
        height: 100px;
        background: rgba(20,20,9,0.8);
        vertical-align: baseline

    }
    .wrapper {
        background:green;
    }

   </style>
</head>
<body>
    <div class="inner">
        <p>inline-block产生的水平间距</p>
        <div class="m1"></div>
        <div class="m2"></div>
        <div class="m3"></div>

        <p>解决办法1: HTML代码去除空格</p>
        <div class="m1"></div><div class="m2"></div><div class="m3"></div>

        <p>inline-block产生的上下间距(去除空格无法解决),原因是inline产生的下沉</p>
        <p>例子1</p>
        <div class="m11"></div><div class="m3"></div>
        <p>例子2</p>
        <div class="wrapper">
            <img src="http://p2.ifengimg.com/a/2016_40/3e91361b9cc53c9.jpg">
        </div>
        <p>解决办法：img 设置成 vertical-align: 非baseline 值</p>

        <p>解决示例1</p>
        <div style="vertical-align: bottom;"  class="m11"></div>
        <div style="vertical-align: bottom;"  class="m3"></div>

        <p>解决示例2</p>
        <div class="wrapper">
            <img style="vertical-align: bottom;" src="http://p2.ifengimg.com/a/2016_40/3e91361b9cc53c9.jpg">
        </div>
    </div>
</body>
</html>
```

示例 [http://ecma.bdimg.com/public03/imageplus/test/xishengbo/inline-block-test.html](http://ecma.bdimg.com/public03/imageplus/test/xishengbo/inline-block-test.html)

## 手机端的自适应布局处理方法

```text
1. 适用view-port scale (只需要按照一个尺寸的设计图进行开发，在不同分辨率下做缩放，可能会因为缩放导致模糊问题)
设计图是基础尺寸是375 根据不同屏幕分辨率进行缩放
var baseWidth = 375;
var scale = screen.width / baseWidth;
var viewport = '<meta name="viewport" content="width=' + baseWidth + ", initial-scale=" + scale + ", maximum-scale=" + scale + ", minimum-scale=" + scale + ', user-scalable=no, minimal-ui" >';
document.write(viewport);

直接写死尺寸
<meta name="viewport" content="width=1242,target-densitydpi=device-dpi,maximum-scale=1,user-scalable=no">
2. 适用em rem 相对尺寸 进行开发
3. css3 media 不同分辨率 用不同布局方案
```

## 运用flex进行上下左右居中处理

[http://bj.bcebos.com/cae-pub-read/public03/imageplus/test/css/flex\_middle.html](http://bj.bcebos.com/cae-pub-read/public03/imageplus/test/css/flex_middle.html)

```text
<!DOCTYPE html>
<html>
<head>
    <title>403 Forbidden</title>
    <meta name="viewport" content="width=450,target-densitydpi=device-dpi,maximum-scale=1,user-scalable=no">
    <style>
        .wrapper {
            position: absolute;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
        }
        .wrapper_inner {
            width: 100%;
            height: 100%;
            background: #ddd;
            text-align: center;  
            display: flex;
        }
        .y_middle {
            align-items: center;
        }
        .x_middle {
            justify-content: center;
        }
        .inner {
            width: 100px;
            height: 100px;
            background: red;
            margin: 5px;
        }
        * {
            padding: 0;
            margin: 0;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="wrapper_inner y_middle x_middle">
            <div class="inner ">inner</div>
            <div class="inner ">inner</div>
            <div class="inner ">inner</div>
        </div>
    </div>
</body>
</html>
```

## 文字截断问题处理

[http://bj.bcebos.com/cae-pub-read/public03/imageplus/test/css/flex\_middle.html](css_problem.md)

```text
.one_line {
    text-overflow: ellipsis;
    white-space: nowrap;
    overflow: hidden;
}
.three_line,.two_line {
    -webkit-line-clamp: 2;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    text-overflow: ellipsis;
    overflow: hidden;
}
.three_line {
    -webkit-line-clamp: 3;
}
```

## flex基础入门

[https://jsfiddle.net/xishengbo/rxfuuhar/](https://jsfiddle.net/xishengbo/rxfuuhar/)

