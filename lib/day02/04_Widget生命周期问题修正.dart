import 'dart:math';

import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ZRHomepage(), //materialApp：home可以是StatefulWidget
    );
  }
}

/**
 * ZRHomepage从StatelessWidget转成StatefulWidget，选中ZRHomepage，option+enter
 */
class ZRHomepage extends StatelessWidget {
  const ZRHomepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ZRHomeDemo();
  }
}

class ZRHomeDemo extends StatefulWidget {
  const ZRHomeDemo({Key key}) : super(key: key);

  @override
  _ZRHomeDemoState createState() => _ZRHomeDemoState();
}

class _ZRHomeDemoState extends State<ZRHomeDemo> {
  List<Widget> widgets = [ZRHomepageContent()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: Column(
        //往list里插入widget，ZRHomepageContent()并未发成变化（销毁、创建）
        // children: widgets,

        //父组件在重新build的时候，就会调用didUpdateWidget方法
        children: [ZRHomepageContent()],
      ),
      floatingActionButton: RaisedButton(
        child: Icon(Icons.add),
        onPressed: () {
          //调用setState，build方法会重新调用，内部widget都会重新创建
          setState(() {
            widgets.insert(0, Text('hello world'));
          });
        },
      ),
    );
  }
}

/**
 * 将build出来的widget抽取到一个单独的widget中：option+command+w
 */
class ZRHomepageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BodyWidget();
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}

/**
 * 生命周期的函数对于开发者意义是什么
 *  1.初始化一些数据、变量、状态
 *  2.发送网络请求
 *  3.进行一些事件的监听
 *  4.管理内存（一些定时器/controller手动进行销毁）
 *
 * flutter中只需要监听Widget的生命周期
 *
 * StatelessWidget在监听的时候，只需要关注构造函数和build函数即可，内部比较简单
 */

// StatelessWidget的生命周期
// class ZRHomepageContent extends StatelessWidget {
//   final String message;
//
//   ZRHomepageContent(this.message) {
//     print('构造函数被调用');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     print('build函数被调用');
//     return Text(message);
//   }
// }

/**
 * StatefulWidget中,Widget和State这两个对象是一一对应的，但是Widget对象经常销毁创建
 * 当Widget销毁时，State.widget会指向新的Widget
 */

// 开发中用的最多的就是StatefulWidget的生命周期
// StatefulWidget的生命周期
class ZRHomepageContent extends StatefulWidget {
  // const ZRHomepageContent({Key key}) : super(key: key);

  ZRHomepageContent() {
    print('1.调用ZRHomepageContent的constructor方法');
  }

  @override
  _ZRHomepageContentState createState() {
    print('2.调用ZRHomepageContent的createState方法');
    return _ZRHomepageContentState();
  }
}

class _ZRHomepageContentState extends State<ZRHomepageContent> {
  var _counter = 0;

  _ZRHomepageContentState() {
    print('3.调用_ZRHomepageContentState的constructor方法');
  }

  @override
  void initState() {
    // 调用：这里必须调用super
    // 初始化父类的一些状态；@mustCallSuper
    super.initState();
    print('4.调用_ZRHomepageContentState的initState方法');
  }

  @override
  void didUpdateWidget(covariant ZRHomepageContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('调用_ZRHomepageContentState的didChangeDependencies方法');
  }

  @override
  Widget build(BuildContext context) {
    print('5.调用_ZRHomepageContentState的build方法');

    return Column(
      children: [
        RaisedButton(
            child: Icon(Icons.add),
            onPressed: () {
              setState(() {
                _counter++;
              });
            }),
        Text('数字：$_counter')
      ],
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print('6.调用_ZRHomepageContentState的dispose方法');
  }
}
