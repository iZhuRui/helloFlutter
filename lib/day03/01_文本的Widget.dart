import 'package:flutter/material.dart';

/**
 * option+cmd+b可查看有哪些实现类
 */

/**
 * 必传参数和@required：必传参数不传就会报错（编译不通过），@required编译可以通过，但是会报警告
 */

class TextRichDemo extends StatelessWidget {
  const TextRichDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
        TextSpan(
          // text: 'hello world',
          // style: TextStyle(
          //   fontSize: 30,
          //   color: Colors.amber
          // )

            children: [
              TextSpan(text: 'hello world', style: TextStyle(fontSize: 30, color: Colors.red)),
              TextSpan(text: 'hello flutter', style: TextStyle(fontSize: 30, color: Colors.green)),
              WidgetSpan(child: Icon(Icons.favorite, color: Colors.red)),
              TextSpan(text: 'hello dart', style: TextStyle(fontSize: 30, color: Colors.blue)),
            ]

        )
    );
  }
}

class TextDemo extends StatelessWidget {
  const TextDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    /**
     * Text这个widget不是最终的可渲染组件；Text中的build方法，返回的是RichText可 渲染的富文本
     */

    return Text(
      'ヤ脸上●￣ε￣●写著o无所谓==℡锕超﹏訫早苡熹欢上你Iしovのyou﹏第①个想起啲总是鉨张杰',
      style: TextStyle(
          fontSize: 20, color: Colors.purple, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      textScaleFactor: 1.5,
    );
  }
}
