import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

main() {
  // 1.runApp函数，全局函数，该函数包含在material库中
  /**
   *  void runApp(Widget app) {
      }

      需要传入widget，但是widget是抽象类，不能直接传入，可传入子类（多态：父类引用指向子类对象）
   */
  runApp(
      MaterialApp(
          home: Scaffold(//scaffold:脚手架，帮助快速搭建页面
            appBar: AppBar(
              title: Text('第一个flutter程序'),
            ),
            body: Center(
              child: Text(
                'hello world',
                // textDirection: TextDirection.ltr,//material里widget自带风格，本行可以不要
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.cyan,
                ),
              ),
            ),
          )
      )
  );
}