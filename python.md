## 常用py代码段

### 正则match domain

```
import re
from urlparse import urlparse
topHostPostfix = (
    '.com','.la','.io','.co','.info','.net','.org','.me','.mobi',
    '.us','.biz','.xxx','.ca','.co.jp','.com.cn','.net.cn',
    '.org.cn','.mx','.tv','.ws','.ag','.com.ag','.net.ag',
    '.org.ag','.am','.asia','.at','.be','.com.br','.net.br',
    '.bz','.com.bz','.net.bz','.cc','.com.co','.net.co',
    '.nom.co','.de','.es','.com.es','.nom.es','.org.es',
    '.eu','.fm','.fr','.gs','.in','.co.in','.firm.in','.gen.in',
    '.ind.in','.net.in','.org.in','.it','.jobs','.jp','.ms',
    '.com.mx','.nl','.nu','.co.nz','.net.nz','.org.nz',
    '.se','.tc','.tk','.tw','.com.tw','.idv.tw','.org.tw',
    '.hk','.co.uk','.me.uk','.org.uk','.vg', ".com.hk")

regx = r'[^\.]+('+'|'.join([h.replace('.',r'\.') for h in topHostPostfix])+')$'
pattern = re.compile(regx,re.IGNORECASE)

def getDomain(str):
    parts = urlparse(str)
    host = parts.netloc
    m = pattern.search(host)
    res =  m.group() if m else host
    if not res:
        return ''
    else:
        return res

if __name__ == '__main__':
    getDomain('http://fasdf.com/asdfasd?asdf/!#ahsdjhfk&afjsdhfka')
```

### 

### 

### 简单邮件发送

```
# -*- coding: utf-8 -*-
# python 发邮件简单demo, 只有安装了sendmail才能work
from os import path
import sys
import subprocess
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from email.mime.application import MIMEApplication
import os


def send_mail(sender, receiver, title, body):
    msg = MIMEMultipart()
    msg['From'] = sender
    msg['To'] = receiver
    msg['Subject'] = title
    msg.attach(MIMEText(body,'html','utf-8'))

    #send 调用了系统的/usr/lib/sendmail 发邮件
    proc = subprocess.Popen(['/usr/lib/sendmail','-t'],stdin = subprocess.PIPE)
    proc.stdin.write(str(msg))
    proc.stdin.close()

def main():
    sender = 'xsb_test@test.com'
    date = os.popen('date').read()
    title = 'xsb test mail'
    receiver = 'xishengbo@baidu.com'
    body = '<h1>fuck you</h1>'
    send_mail(sender, receiver, title, body)


if __name__ == '__main__':
    main()
```

### 字符串trim 操作

```
>>> str = ' fuck___you '
>>> str.strip()
'fuck___you'
>>> str.lstrip()
'fuck___you '
>>> str.rstrip()
' fuck___you'
>>>
```



