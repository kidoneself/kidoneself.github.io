---
layout: post
title:  "python与mysql交互"
date:   2019-09-17 15:20:00 +0200
categories: python mysql
no-post-nav: true
---
python学习 操作mysql mysql.connector模块

出于对折腾的热爱，入手了一个树莓派，但是这树莓派在我手上存粹只是一个服务器，别无他用，在网上看到各大玩家的各种作品，心里甚是羡慕，便有了想要学习python的想法。一点一滴慢慢学起来咯。

#### 准备：
目前学习了点python的基础，就开始学习python与数据库mysql的交互了，本文用到了mysql官方提供的驱动模块安装方法：
  > pip install mysql-connector

  数据库我是用的docker，免去了各种配置的烦恼。节约我的电脑空间内存，可以看上一篇文章。

### 查询操作

```python

#引入mysql驱动
import mysql.connector

#数据库连接信息
con = mysql.connector.connect(
    host="localhost", port="3306",
    user="root", password="123456",
    database="demo"
)

cursor = con.cursor()
# sql = "select * from demo"

#  %s 预编译sql语句，防止sql注入
sql_1 = "select * from demo where id = %s"

# 参数一定是一个列表或者数组
cursor.execute(sql_1, (2,))

print(cursor.fetchall())
#关闭数据库连接
con.close()

```
需要注意的是sursor的第二个参数，即sql的参数，一定是一个列表或者数组传入，否则会报错，参数错误。


### 插入语句，事务管理

```python
import mysql.connector

try:
    config = {
        "host": "localhost",
        "port": 3306,
        "user": "root",
        "password": "123456",
        "database": "demo"
    }

    con = mysql.connector.connect(**config)
    #开启事务
    con.start_transaction()
    cursor = con.cursor()
    sql = "insert into demo (id,`name`) values (%s,%s)"
    cursor.execute(sql, (None, "lina"))
    #提交事务
    con.commit()
except Exception as e:
    #失败回滚
    con.rollback()
    print(e)
finally:
  #释放连接
    if con in dir():
        con.close()
```


### 创建连接池，节约资源
  ```python
  import mysql.connector.pooling

  config = {
      "host": "localhost",
      "port": "3306",
      "user": "root",
      "password": "123456",
      "database": "demo"
  }
  try:
      #创建连接池
      pool = mysql.connector.pooling.MySQLConnectionPool(
          **config,
          #连接池大小，根据实际情况决定
          pool_size=10
      )
      #获取连接
      con = pool.get_connection()
      #开启事务
      con.start_transaction()
      cursor = con.cursor()
      sql = "update demo set name = 'heh' where  id = 1"
      cursor.execute(sql)
      con.commit()
  except Exception as e:
  #dir()是Python提供的一个API函数，dir()函数会自动寻找一个对象的所有属性(包括从父类中继承的属性)。
      if 'con' in dir():
          con.rallback()
      print(e)
  ```
