# nodejs知识点

## express https server

> [https://timonweb.com/posts/running-expressjs-server-over-https/](https://timonweb.com/posts/running-expressjs-server-over-https/)
>
> [https://github.com/my19940202/https\_server](https://github.com/my19940202/https_server)

### 

### express next 中间件相关，通过middle ware响应请求流程

[http://www.expressjs.com.cn/guide/using-middleware.html](http://www.expressjs.com.cn/guide/using-middleware.html)

1.错误处理

```
var express = require('express');
var app = express();

// 测试中间件1 针对所有路由
app.use(function (req, res, next) {
  console.log('测试中间件1');
  next();
});

app.use(function (req, res, next) {
  console.log('测试中间件2');
  next();
});

// 指定路由 /next 设置中间件
app.use('/next', function (req, res, next) {
  console.log('router next 专属路由1111');
  next();
});
app.use('/next', function (req, res, next) {
  console.log('router next 专属路由2222');
  next();
});


app.get('/', function (req, res) {
  res.send('Hello World!');
});

app.get('/next', function(req, res, next) {
    res.send('this is next: sucess');
});

// 直接在路由上面挂载中间件
function mdByFunc(req, res, next) {
  console.log("函数申明的中间件");
  next();
}

app.get('/xsb',
  mdByFunc,
  function (req, res, next) {
    console.log('xsb中间件测试!');
    next();
  },
  function (req, res) {
    res.send('Hello World!');
  }
);
```

### yog使用

```
# 基于express的一套mvc框架
home 目录下运行 watch文件变化
yog2 release --dest debug --watch

yog目录下 开启server
yog2 run
```



