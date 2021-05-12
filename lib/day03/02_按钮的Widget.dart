import 'package:flutter/material.dart';

/**
 * button也不是一个RenderObjectWidget
 */
class ButtonDemo extends StatelessWidget {
  const ButtonDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //1.凸起RaisedButton
        RaisedButton(
          child: Text(
            'RaisedButton',
            // style: TextStyle(color: Colors.red),
          ),
          onPressed: () {},
          color: Colors.orange,
          textColor: Colors.blue,
        ),
        //2.FlatButton
        FlatButton(
          onPressed: () {},
          child: Text('FlatButton'),
          color: Colors.green,
        ),
        //3.OutlineButton
        OutlineButton(
          onPressed: () {},
          child: Text('OutlineButton'),
          color: Colors.purple,
        ),
        //4.FloatingActionButton

        //5.自定义button
        FlatButton(
            color: Colors.amberAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            onPressed: () => print('自定义button'),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                Text('自定义Button'),
              ],
            ))
      ],
    );
  }
}