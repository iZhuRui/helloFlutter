import 'package:flutter/material.dart';

class ZRContentBody extends StatelessWidget {

  /**
   * StatelessWidget继承自Widget，Widget是@immutable修饰的，表示内容不可变
   */

  //错误代码
  // var flag = true;

  //需要改成
  final flag = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Row(//row是占据一行
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
              value: flag,
              onChanged: (value) {
                flag = value;//final不可赋值
                print(value);
              }
          ),
          Text('同意协议', style: TextStyle(fontSize: 30),),
        ],
      ),
    );
  }
}