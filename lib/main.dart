import 'dart:math';
import 'dart:ui';

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

// 父widget的约束（constrain）会传给子widget甚至是子widget的子widget
class _ZHomepageBodyState extends State<ZHomepageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      // color: Colors.red,
      alignment: Alignment(-1,-1),//如果没设置
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      // transform: Matrix4.rotationZ(100),

      // child: Text('hello world',),
      child: Icon(Icons.pets, color: Colors.white,),
      // color和decoration二者冲突
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(
          width: 5,
          color: Colors.purple
        ),
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
            color: Colors.orange,
            offset:  Offset(10, 10),
            spreadRadius: 10,
            blurRadius: 10
          )
        ]
      ),
    );
  }
}

class PaddintDemo extends StatelessWidget {
  const PaddintDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: EdgeInsets.symmetric(vertical: 10)
      // padding: EdgeInsets.fromLTRB(20, 30, 40, 50)
      padding: EdgeInsets.only(bottom: 10),
      child: Text('hello flutter',
          style: TextStyle(fontSize: 30, backgroundColor: Colors.red)),
    );
  }
}

class AlignDemo extends StatelessWidget {
  const AlignDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(1, 1),
      widthFactor: 5, //child size 的倍数
      heightFactor: 5, //child size 的倍数
      child: Icon(
        Icons.pets,
        size: 50,
      ),
    );
  }
}
