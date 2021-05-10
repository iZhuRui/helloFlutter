import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

main() => runApp(MyApp());

/**
 * Widget:
 * 有状态的widget：StatefulWidget 在运行过程中有一些状态（data）需要改变
 * 无状态的widget：StatelessWidget 内容是确定没有状态（data）的改变
 */
class MyApp extends StatelessWidget {
  /**
   * 如果继承自Widget(子类必须实现父类的抽象方法)
   * 必须实现Element createElement();会多写很多代码
   */

  /**
   * bulid需要返回一个Widget，告知需要渲染成什么样式
   */
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: ZRHomePage(),
    );
  }
}

class ZRHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(//scaffold:脚手架，帮助快速搭建页面
      appBar: AppBar(
        title: Text('第一个flutter程序'),
      ),
      body: ZRContentBody(),
    );
  }
}

class ZRContentBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text(
        'hello world',
        // textDirection: TextDirection.ltr,//material里widget自带风格，本行可以不要
        style: TextStyle(
          fontSize: 30,
          color: Colors.cyan,
        ),
      ),
    );
  }
}

/**
 * 上述方法
 * 1.形成的是一个Widget树
 * 2.组件化开发的思想
 */