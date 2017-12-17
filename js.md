## 常用js代码段

### 生成随机字符串\(长度自定义\)

```
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

### cookie获取

```
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

### 生成1-n的数组

```
var numbersArray = [] , max = 100;
for( var i=1; numbersArray.push(i++) < max;);
```

### 返回数组指定范围的随机一个

```
var arr = [1,2,3,4,5,6,7,8];
var min = 0;var max = arr.length;
var index = Math.floor(Math.random() * (max - min + 1)) + min;
```

### 数组 unique去除多余元素

```
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

### 数组reverse

```
var arr = [1,2,4,5,6,7,8];
var arr_reverse = [];
while (arr.length) {
    arr_reverse.push(arr.pop());    
}
console.log(arr_reverse)
```

### js quick sort

```
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

### 原生手写ajax jsonp等

```
// 有空去补充
```

### js前端实验框架

```
正在开发中 还待完成
```

### js前端日志框架

```
// 有空去补充
```

### gulp 压缩图片的简单配置

```
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



