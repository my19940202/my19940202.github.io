## 日常js问题

### 闭包问题

提供可以访问函数内部变量的方法

可以从函数参数传值和传址角度思考

基础变量（number String Boolean）都是传值的，在函数内部修改后不影响原始值

引用类型（obj,array，func）都是传址，在函数内部修改会影响原始值

### 基础数据类型

> null undefined number string array object Boolean

### 低速网络环境下的js载入异常问题

> A Parser-blocking, cross-origin script is invoked via document.write. This may be blocked by the browser if the device has poor network connectivity
>
> 翻译：在弱的网络连接环境下，在页面上使用document.write\(\)来动态插入外部的脚本会阻塞页面的解析
>
> 结果：延迟页面的显示，甚至加载脚本失败，最终导致页面不能正确显示

Chrome对于由document.write\(\)动态插入的&lt;script&gt;会做检查，当满足下面所有的条件下，Chrome不会执行加载&lt;script&gt;里的脚本。

* 用户处在弱网络连接的环境下，可能是234G
* document.write\(\)在主页面里，对于那些嵌入在iframe里的页面没有影响
* 在document.write\(\)插入的脚本是阻碍解析的（parser-blocking）。如果插入的&lt;script&gt;标签加了 'async' 或'defer'属性，脚本会异步加载，不影响解析 ，所以也是能被执行的。
* 加载的脚本和不是其他域名。
* 脚本没有在浏览器的缓存里
* 页面不是重新加载

### js事件

addEventListener\('click', function\(\){}\); //默认冒泡

event.stopPropagation\(\) //阻止冒泡

addEventListener\('click', function\(\){},true\); // 设置捕获类型

event.preventDefault\(\) //阻止捕获

![](/assets/import.png)

---

## es6相关问题 &gt;\_&lt;

### promise啥玩意

### generater啥玩意

### yield啥玩意

### export default

> ##### 一个文件中export default只有一个，在其他模板中 import的时候 不需要带{}

---

## 浏览器层面

### 浏览器解析基本流程

![](/assets/3055132361-55169ffa877a0_articlex.png)

### repaint

元素样式变化，但没引起布局变化（color opacity啥的）

### reflow变化大，成本更高

改变窗口大小

1. 改变字体

2. 增加和删除样式表

3. 内容的改变，比如用户在输入框输入文字

4. 激活伪类

5. 操作class属性

6. 脚本操作DOM

7. 计算offsetWidth和offsetHeight

8. 设置style属性

> [https://segmentfault.com/a/1190000006104095](https://segmentfault.com/a/1190000006104095)
>
> [https://segmentfault.com/a/1190000002629708](https://segmentfault.com/a/1190000002629708)

![](/assets/v2-b82f2d58aa3356b8b58c69067b828855_b.png)

