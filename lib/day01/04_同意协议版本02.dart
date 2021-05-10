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
    return Scaffold(
      //scaffold:脚手架，帮助快速搭建页面
      appBar: AppBar(
        title: Text('第一个flutter程序'),
      ),
      body: ZRContentBody(),
    );
  }
}

/**
 * StatefulWidget:1.继承自StatefulWidget的类（作用：1.State<StatefulWidget> createState()创建state状态 2.可以接收父Widget传过来的数据） 2.State类（保存状态）
 */

//flag:状态
/**
 * 在flutter开发中，所有的widget都不能定义状态，因为widget是@immutable修饰的，都是不可变的
 *
 * Stateful不能定义状态 -> 创建一个单独的类，这个类负责维护状态
 */
class ZRContentBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ZRContentBodyState();
  }
}

/**
 * State<T extends StatefulWidget>,state泛型
 *
 * 上面StatefulWidget不负责创建Widget，靠下面的ZRContentBodyState创建Widget，因为ZRContentBodyState才能在内部创建变量，定义状态
 */
class ZRContentBodyState extends State<ZRContentBody> {
  var flag = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Switch(
            value: flag,
            onChanged: (value) {
              setState(() {
                flag = value;
              });
            },
            activeColor: Colors.red,
          ),
          Checkbox(
            value: flag,
            onChanged: (value) {
              setState(() {
                flag = value;
              });
            },
          ),
          Text(
            '同意协议',
            style: TextStyle(fontSize: 20),
          )
        ],
      ),
    );
  }
}

/**
 * 重走build方法，所有widget会重新渲染，性能消耗不会很高；widget相当于配置文件，真实的构建不是widget
 */
