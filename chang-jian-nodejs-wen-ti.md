# nodejs一些常见问题

> process.env.NODE\_ENV

```
// test.sh
#!/bin/bash
export NODE_ENV=development
node test.js

// test.js
// 一般我们通过检查process.env.NODE_ENV 来分别对开发环境和生产环境下做不同的处理
console.log('process.env.NODE_ENV', process.env.NODE_ENV);
```



