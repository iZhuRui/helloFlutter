import 'dart:math';

import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ZRHomepage(),
    );
  }
}

class ZRHomepage extends StatelessWidget {
  const ZRHomepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('电影列表'),
      ),
      body: ZRHomepageContent('这是一条信息'),
    );
  }
}

// Widget是不加_:暴露给别人使用
class ZRHomepageContent extends StatefulWidget {
  final String message;

  ZRHomepageContent(this.message);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ZRContentState();
  }
}

/**
 * 为什么flutter在设计的时候StatefulWidget的build方法放在State中
 *  1.build出来的Widget是需要依赖State中的变量（状态/数据）
 *  2.在flutter的运行过程中：
 *    Widget是不断的销毁和创建的
 *    当我们自己的状态发生改变时，并不希望重新创建一个新的State
 */
// State是加_:状态这个类只是给Widget使用
class _ZRContentState extends State<ZRHomepageContent> {
  var _counter = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _getButtons(),
          Text(
            '当前计数:$_counter',
            style: TextStyle(fontSize: 25),
          ),
          Text('传递过来的信息:${widget.message}')
        ],
      ),
    );
  }

  Widget _getButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
            child: Text(
              '+',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            color: Colors.orange,
            onPressed: () {
              /**
               * _counter++;这个语句放在里面和外面区别不大，但是要保证执行setState方法之前已经执行过_counter++;
               * _counter++;
                  setState(() {
                  _counter++;
                  });
               */
              setState(() {
                _counter++;
              });
              print('add');
            }),
        RaisedButton(
            child: Text(
              '-',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            color: Colors.purple,
            onPressed: () {
              setState(() {
                _counter--;
              });
              print('subtract');
            }),
      ],
    );
  }
}
