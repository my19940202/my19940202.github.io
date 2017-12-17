### 工作中遇到的问题，导致后端基于cookie等特征进行内容推荐的服务挂掉

#### 问题具体场景

* cookie设置:前端种\(document.cookie = 'xx=123'\)，也可以后端种\(http response header 返回里面的set-cookie字段就可以设置cookie\)
* baiduid是baidu域名下cookie中的baiduid
* 页面向一个xxx.baidu.com请求内容，然后进行渲染。
* 后端的服务根据请求req的baiduid推送相关的内容
* 在非baidu域名的站点下，请求内容时没有办法直接获取baiduid\(cookie不能跨域\)，返回了无效的baiduid
* 无效baiduid超出一定范围后，就把后端搞挂了。

#### 刚开始的解决方案

没有获取有效的baidu，那就先办法获取有效的baiduid。 - 那就在baidu域下面搞个空页面，这个空页面将baiduid以某种形式输出\(直接在body里面打印、或者在URL里面加上\#baiduid\)

刚开始只是想当然做了一个空页面，能在body里面和URL里面把URL输出了一下，没有具体在页面中尝试，后来发现这样的情况 也属于跨域，我用iframe调用这个页面的时候，也是无法获取iframe相关的资源的。

#### 其他FE建议的解决方案

window.name\([http://blog.csdn.net/bao19901210/article/details/21458001](http://blog.csdn.net/bao19901210/article/details/21458001)\) 和 postmessge\(没有仔细查过资料\)

#### 最后的解决方案

后来意识到http请求是向 xxx.baidu.com发出的，request header里面是会自动带上baidu.com下面的所有cookie,可以在 xxx.baidu.com的后端代码做一些处理。 获取http request header cookie里面的baiduid,替换参数里面的baiduid. xxx.baidu.com其实也是只是个转发的服务器 具体代码如下

```
var getBAIDUIdFromCookie = function (req) {
    // get cookie in http request
    var Cookies = {};
    req.headers.cookie && req.headers.cookie.split(';').forEach(function( Cookie ) {
        var parts = Cookie.split('=');
        Cookies[parts[0].trim()] = (parts[ 1 ] || '' ).trim().split(':')[0];
    });
    return Cookies['BAIDUID'];
}

var ral_option = {};
var params = urllib.parse(req.url, true);
ral_option.data = decodeURIComponent(params.query.q);
// set baiduid
var BAIDUID = getBAIDUIdFromCookie(req);
if (BAIDUID) {
    var tmpData = JSON.parse(ral_option.data);
    tmpData['baiduid'] = BAIDUID;
    ral_option.data = JSON.stringify(tmpData);
}
else {
    log.debug('have no BAIDU');
}
```



