# F-k_MD5
利用数据库撞库暴力破解MD5

---

### 首先导入数据库

导入后将数据库中仅一条示例数据

如需生成请使用提供的Python脚本

---

### 生成数据

在File目录下子目录InsertData子目录中拥有一个Python程序，通过修改其中SQL连接语句可连接MySql

#### 指定字典

在程序脚本中默认引用到的其目录下（Dt目录）的”10W字典.txt“，可根据使用需要自行更改

#### 运行

首先你的本地环境中需要拥有一个python环境（3.0+）

并且使用以下语句安装PyMySQL库

```shell
pip3 install pymysql
```

然后该目录下

```shell
python3 ro.py
```

即可运行

其中有查重功能，如需启用将其取消注释后并更改下方缩进即可(注意，查重将消耗巨量的时间，如果数据库空间充裕建议不要开启)

```python
import hashlib

import pymysql
db = pymysql.connect(host='your_host', user='your_name', password='your_passworld', db='Fmd',port=3306)
# 需自行修改上方信息
sur = db.cursor()
with (open('.\Dt\10w字典.txt', 'r',encoding='utf-8',errors="ignore") as f):
#可以自行指定字典

    for il in f:
        il=il.rstrip()
        tmp = il

        encoded_text = il.encode()
        md5_hash_object = hashlib.md5()
        md5_hash_object.update(encoded_text)
        encrypted_text = md5_hash_object.hexdigest()
        sel = ("select * from tb_fd where Md='%s'"%(encrypted_text))
        sur.execute(sel)
        off = sur.fetchone()
        if off:
            print("repeat："+il+"|MD5:"+encrypted_text)
            continue
        else:
        	sql = ("insert into tb_fd(Md,Tex) values('%s','%s')"%(encrypted_text,il))
        	try:
            	sur.execute(sql)
            	db.commit()
        	except pymysql.err.DataError as e:
            	print("[-]ERR!")

    db.close()

```

---

### Web端

直接将index目录替换掉你网站目录或期望运行的目录即可

注意，其中GetMD.php中的SQL连接语句需修改为你自己的数据库连接信息

```php
$db = new mysqli("your host","your user","your passworld","fmd","3306");
```



## Flag

未来会添加一键部署功能，尽情期待……
