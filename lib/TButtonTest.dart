import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // 1.RaisedButton:
        ElevatedButton(
          child: Text("RaisedButton"),
          // textColor: Colors.white,
          // color: Colors.purple,
          onPressed: () => print("RaisedButton Click"),
        ),

        // 2.FlatButton
        FlatButton(
          child: Text("FlatButton"),
          color: Colors.orange,
          onPressed: () => print("FlatButton Click"),
        ),

        // 3.OutlineButton
        OutlinedButton(
          child: Text("OutlineButton"),
          onPressed: () => print("OutlineButton"),
        ),

        // 4.FloatingActionButton
//        FloatingActionButton

        // 5.自定义button: 图标-文字-背景-圆角
        TextButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.green;
                }else {
                  return Colors.deepPurple;
                }
              }),
              padding: MaterialStateProperty.all(
                  EdgeInsets.all(50)
              )
          ),
          // color: Colors.amberAccent,
          // shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(8)
          // ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.favorite, color: Colors.red,),
              Text("喜欢作者")
            ],
          ),
          onPressed: () {},
        )
      ],
    );
  }
}

