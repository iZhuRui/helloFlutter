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
      body: ZRHomepageContent(),
    );
  }
}

class ZRHomepageContent extends StatelessWidget {
  const ZRHomepageContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ZRHomeProductItem('鬼灭之刃 剧场版 无限列车篇', 'HD1080P.日语中字',
            'https://i1.fuimg.com/10086/ceda45f27cf8147a.jpg'),
        SizedBox(
          height: 6,
        ),
        ZRHomeProductItem('鬼灭之刃 柱众会议・蝶屋敷篇', 'HD1080P.日语中字',
            'https://i1.fuimg.com/10086/6a69ecf23ee82e45.jpg'),
        SizedBox(
          height: 6,
        ),
        ZRHomeProductItem('鬼灭之刃 那田蜘蛛山篇', 'HD1080P.日语中字',
            'https://i1.fuimg.com/10086/63bcb86ab9278d7c.jpg')
      ],
    );
  }
}

/**
 * 如果放在全局，在APP运行过程中，会一直存在
 * final columnTitleStyle = TextStyle(fontSize: 25, color: Colors.black);
    final columnDescStyle = TextStyle(fontSize: 15, color: Colors.black45);
 */

class ZRHomeProductItem extends StatelessWidget {
  final String title;
  final String desc;
  final String imgURL;
  final columnTitleStyle = TextStyle(fontSize: 25, color: Colors.black);
  final columnDescStyle = TextStyle(fontSize: 15, color: Colors.black45);

  ZRHomeProductItem(this.title, this.desc, this.imgURL);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12), //设置内边距
      decoration: BoxDecoration(
          border: Border.all(
              width: 5, //设置边框的宽度
              color: Colors.pinkAccent //设置边框的颜色
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, //start:靠左，end:靠右
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: columnTitleStyle,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            desc,
            style: columnDescStyle,
          ),
          SizedBox(
            height: 8,
          ),
          Image.network(imgURL)
        ],
      ),
    );
  }
}
