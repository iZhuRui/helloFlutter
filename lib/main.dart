import 'dart:math';

import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: ZHomepage(),
    );
  }
}

class ZHomepage extends StatelessWidget {
  const ZHomepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: ZHomepageBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class ZHomepageBody extends StatefulWidget {
  const ZHomepageBody({Key key}) : super(key: key);

  @override
  _ZHomepageBodyState createState() => _ZHomepageBodyState();
}

class _ZHomepageBodyState extends State<ZHomepageBody> {
  @override
  Widget build(BuildContext context) {
    /**
     * option+cmd+b可查看有哪些实现类
     */

    /**
     * 必传参数和@required：必传参数不传就会报错（编译不通过），@required编译可以通过，但是会报警告
     */


    return Container();
  }
}


