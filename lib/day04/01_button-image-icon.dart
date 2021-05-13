import 'package:flutter/material.dart';

var imageURL = 'https://i1.fuimg.com/10086/6a69ecf23ee82e45.jpg';

class IconExtensionDemo extends StatelessWidget {
  const IconExtensionDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Icon是字体图标，和图片图标的区别：
    // 1.字体图标是矢量图（放大的时候不会失真）
    // 2.字体图标可以设置颜色
    // 3.图标很多时，占据空间更小
    // return Icon(
    //   Icons.pets,// static const IconData pets = IconData(0xe90e, fontFamily: 'MaterialIcons')
    //   size: 100,
    //   color: Colors.red,
    // );

    // return Icon(IconData(0xe90e, fontFamily: 'MaterialIcons'));

    // 1.0xe90e -> unicode编码
    // 2.设置对应的字体
    return Text('\ue90e', style: TextStyle(fontSize: 100, color: Colors.red, fontFamily: 'MaterialIcons'),);
  }
}


class ImageExtensionDemo extends StatelessWidget {
  const ImageExtensionDemo({
    Key key,
    @required this.imageURL,
  }) : super(key: key);

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return FadeInImage(
      // 1.占位图的问题：FadeInImage
      // 2.图片缓存：默认最多缓存1000张，最大100M
      //    Image.memory(bytes)需要传入字节，很麻烦，直接使用NetworkImage()会从缓存中去取出图片
        fadeOutDuration: Duration(milliseconds: 500),
        fadeInDuration: Duration(milliseconds: 500),
        placeholder: AssetImage('assets/Images/蜡笔小新.jpeg'),
        image: NetworkImage(imageURL));
  }
}

class ButtonExtensionDemo extends StatelessWidget {
  const ButtonExtensionDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1.默认情况下Button上下有一定的间距
        // 2.Button变小
        //    从FlatButton的build方法中，可看到final ButtonThemeData buttonTheme = ButtonTheme.of(context);ButtonTheme是从上下文取出
        // 3.去除button内边距
        ButtonTheme(
          minWidth: 30,
          height: 30,
          child: FlatButton(
              padding: EdgeInsets.all(0),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              color: Colors.red,
              onPressed: () {},
              child: Text('flat button1')),
        ),
        FlatButton(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            color: Colors.red,
            onPressed: () {},
            child: Text('flat button2')),
      ],
    );
  }
}