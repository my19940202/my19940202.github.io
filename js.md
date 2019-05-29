# snippet-js

线上sandbox地址（这玩意做demo预览，很好用）：[https://codesandbox.io/u/my19940202/sandboxes](https://codesandbox.io/u/my19940202/sandboxes)

## separate operator ...操作符日常用法

从一个有大量key的obj中获取部分key，相对快捷\(浅拷贝，js 原生操作基本都是浅拷贝）

```text
let a = {a:123, b:123, c:1, d:90, e: 123, x: 123, y: 90}
let {x, y, ...info} = a
console.log(info)
// {a:123, b:123, c: 1, d:90, e: 123}
```

## typescript 参数是函数的情况下类型定义怎么写

```text
// filter函数的参数不定, 所以写成...args: any[]
// 函数 ...args: any[]) => any
export function setFilter(filterName: string,
    filterFunc: (...args: any[]) => any) {
    if (filter.hasFilter(filterName)) {
        filter.delFilter(filterName);
    }
    filter.setFilter(filterName, filterFunc);
}
```

## Obj中根据情况添加字段 快捷方式（不用在写if 了）

```text
var rich = true; 
var man = {
    name:  'hello world',
    gender: 'male',
    ...{
        rich ? {car: 'bmw'}: null
    }
};
```

## 动态插入js

```text
var hm = document.createElement('script');
var time_stamp = (new Date()).getTime();
hm.src = '//hm.baidu.com/hm.js?' + time_stamp;
var s = document.getElementsByTagName('script')[0];
s.parentNode.insertBefore(hm, s);
```

## 生成随机字符串\(长度自定义\)

```text
var randomWord = function (randomFlag, min, max){
    var str = "",
    range = min,
    pos = 0,
    arr = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('');
    // 随机产生
    if(randomFlag) {
        range = Math.round(Math.random() * (max - min)) + min;
    }
    for(var i = 0; i < range; i++){
        pos = Math.round(Math.random() * (arr.length - 1));
        str += arr[pos];
    }
    return str;
}
// 32位随机字符串
uid = randomWord(false, 32);
// 1到10位随机字符串
uid = randomWord(true, 1, 10);
```

## cookie获取

```text
function getCookie(name) {
    var arr, reg = new RegExp("(^| )"+name+"=([^;]*)(;|$)");
    if (arr = document.cookie.match(reg)) {
        var value = unescape(arr[2]);
        return value;
    }
    else {
        return '';
    }
}
```

## 生成1-n的数组

```text
var numbersArray = [] , max = 100;
for( var i=1; numbersArray.push(i++) < max;);
```

## 返回数组指定范围的随机一个

```text
var arr = [1,2,3,4,5,6,7,8];
var min = 0;var max = arr.length;
var index = Math.floor(Math.random() * (max - min + 1)) + min;
```

## 数组 unique去除多余元素

```text
Array.prototype.unique = function () {
    var uniqueObj = {};
    var newArr = [];
    for (var i = 0; i < this.length; i++) {
        if (uniqueObj[this[i]]) {
        } else {
            newArr.push(this[i]);
            uniqueObj[this[i]] = true;
        }
    }
    return newArr;
}
```

## 数组reverse

```text
var arr = [1,2,4,5,6,7,8];
var arr_reverse = [];
while (arr.length) {
    arr_reverse.push(arr.pop());    
}
console.log(arr_reverse)
```

## js quick sort

```text
function quicksort(a, left, right){
    var i, j, temp;
    i = left;
    j = right;
    temp = a[left];
    if(left > right) return;
       while(i!= j){
          while(a[j] >= temp && j > i) j--;
          if(j > i) a[i++]= a[j];
          while(a[i] <= temp && j > i) i++;
          if(j > i) a[j--]= a[i];
       }
       a[i]=temp;
       quicksort(a, left, i-1);
     quicksort(a, i+1, right);
}
```

## 原生手写ajax jsonp等

```text
// 有空去补充
```

## js前端实验框架

```text
正在开发中 还待完成
```

## js前端日志框架

```text
// 有空去补充
```

## gulp 压缩图片的简单配置

```text
const gulp = require('gulp');
const imagemin = require('gulp-imagemin');
const pngquant = require('imagemin-pngquant');

var srcImage = 'static/*/*';
var dstImage = 'dist';
gulp.task('default', function() {
    var jpgmin = imagemin({
            accurate: true,//高精度模式
            quality: "medium",//图像质量:low, medium, high and veryhigh;
            method: "smallfry",//网格优化:mpe, ssim, ms-ssim and smallfry;
            min: 50,//最低质量
            loops: 0,//循环尝试次数, 默认为6;
            progressive: false,//基线优化
            subsample: "default"//子采样:default, disable;
        }),
        pngmin = pngquant({
            optimizationLevel: 3
        });
    gulp.src(srcImage)
        .pipe(imagemin({
            use: [jpgmin, pngmin]
        }))
        .pipe(gulp.dest(dstImage));
});
```

## 原生js 实现复制功能 [http://jsrun.net/JYhKp](http://jsrun.net/JYhKp)

```text
// 对应的输入框 主要通过execCommand实现功能
let inputText = document.getElementById('shareInput');
let currentFocus = document.activeElement;
inputText.focus();
inputText.setSelectionRange(0, inputText.value.length);
document.execCommand('copy', true);
currentFocus.focus();
```

## setTimeout传参方式

```text
// 传统的方式
setTimeout(function (x, y) {
    console.log(x, y);
}, 1000)

// 新方式
function a(x, y) {
    console.log(x, y) // 2 3
}

setTimeout(a, 1000, 2, 3)
```

## es6数组的各种迭代操作异同点

[http://jsrun.net/f6hKp/edit](http://jsrun.net/f6hKp/edit)

## caller 和 callee的区别

[http://jsrun.net/yLhKp/edit](http://jsrun.net/yLhKp/edit)

