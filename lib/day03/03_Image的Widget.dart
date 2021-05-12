import 'package:flutter/material.dart';

class ImageDemo02 extends StatelessWidget {
  const ImageDemo02({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      // 1.在flutter项目中创建一个文件夹，存储图片
      // 2.在pubspec.yaml进行配置
      // 3.使用图片
      image: AssetImage('assets/Images/蜡笔小新.jpeg'),
    );
  }
}

class ImageDemo01 extends StatelessWidget {
  const ImageDemo01({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      color: Colors.red,
      colorBlendMode: BlendMode.colorDodge,
      image: NetworkImage('https://i1.fuimg.com/10086/6a69ecf23ee82e45.jpg'),
      width: 300,
      height: 300,
      fit: BoxFit.contain,
      repeat: ImageRepeat.repeatX,
      // fit: BoxFit.fitWidth,//宽度一定，高度自适应
      // alignment: Alignment.centerLeft,
      alignment: Alignment(0, 1),
    );
  }
}