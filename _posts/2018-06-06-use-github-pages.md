---
layout: post
title:  "测试搭建"
date:   2016-05-13 13:25:35 +0200
categories: jekyll update
no-post-nav: true
---

This is post no right side bar to nav posts.

You just need to set **no-post-nav: true** for your post

```java
public Object list(@RequestParam(value = "province", required = false) String province,
                     @RequestParam(value = "name", required = false) String name,
                     @PathVariable(value = "pageNum") Integer pageNum,
                     @PathVariable(value = "pageSize") Integer pageSize) {
      PageVO<CustomerAreaManagerDTO> page = customerAreaManagerService.listCustomerAreaManager(province, name, pageNum, pageSize);
      return ResponseEntity.ok(page);
  }

```
assets/images/2018/cs/屏幕快照 2019-09-04 下午8.32.21.png
