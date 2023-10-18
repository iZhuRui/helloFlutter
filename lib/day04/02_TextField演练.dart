import 'package:flutter/material.dart';

class TextFieldDemo extends StatelessWidget {
  final usernameTextEditController = TextEditingController();
  final passwordTextEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Theme(
      // 透明度 r g b
      // Color(0xff ff ff ff)

      // Color.fromARGB(a, r, g, b)

      // Colors.red[100],可使用[]是因为内部做了重载
      data: ThemeData(
          primaryColor: Colors.purple
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: usernameTextEditController,
              decoration: InputDecoration(
                  labelText: 'username',
                  icon: Icon(Icons.people),
                  hintText: '请输入用户名',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.red[100]),
              onChanged: (value) {
                print('onChanged $value');
              },
              onSubmitted: (value) {
                print('onSubmitted $value');
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: passwordTextEditController,
              decoration: InputDecoration(
                  labelText: 'password',
                  icon: Icon(Icons.lock),
                  hintText: '请输入密码',
                  // border: OutlineInputBorder(),
                  border: InputBorder.none,//去除边框
                  filled: true,
                  fillColor: Colors.green[100]),
              onChanged: (value) {},
              onSubmitted: (value) {},
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              // width: 200,
              width: double.infinity,
              height: 40,
              child: FlatButton(
                onPressed: () {
                  final username = usernameTextEditController.text;
                  final password = passwordTextEditController.text;

                  print('username:$username password:$password');
                },
                child: Text(
                  '登 录 1',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}