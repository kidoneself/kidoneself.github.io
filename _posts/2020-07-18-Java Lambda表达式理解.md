---
layout: post
title:  "Java Lambda表达式理解"
date:   2020-07-18 21:20:00 +0200
categories: blog
no-post-nav: true
---
 阅读Effective Java中Lambda表达式记录

 概要：

* 函数式编程
* Lambda表达式的作用
* Lambda的使用

## 一、函数式编程
  #### 1. Lambda简介
  Java8中可以使用lambda表达式来创建带有的单个抽象方法的接口的实例。lambda类似于匿名类的函数，但是比它简洁的多。它允许把函数作为另一个方法的参数。使得代码变得更加简洁紧凑。

  #### 2.Lambda的语法
  使用条件：必须是函数式接口才可以使用lambda表达式

  函数式接口的特征：

  * 接口中标注了@FunctionInterface注解
  * 接口中只有一个抽象方法，则该接口会被编译器自动识别成函数表达式接口
  * 接口中有一个抽象方法，同时包含了Object类的其他抽象方法，则该接口也会被识别为函数式接口

## 二、Lambda表达式的作用

## 三、Lambda的使用

#### 1.lambda表达式编写方式

  > (parameter) -> lambda expressions      
  parameter:参数   
  -> : 无  
  lambda expressions：代码块、执行的语句

  例：
  ```Java
  //将集合中元素按照字符串长度排序。匿名内部类写法
  private static List<String> words = new ArrayList<>();

  public static void compareWith() {
     Collections.sort(words, new Comparator<String>() {
         @Override
         public int compare(String o1, String o2) {
             return Integer.compare(o1.length(), o2.length());
         }
     });
 }
 ```
 ```Java
 //同上，Lambda表达式写法
 Collections.sort(words, ((o1, o2) -> Integer.compare(o1.length(), o2.length())));
 ```
