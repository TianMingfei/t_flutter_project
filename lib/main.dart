
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  // runApp(MyApp());
  runApp(
      MyApp()
  );
}

// main() => runApp(TRowCheckBox());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, splashColor: Colors.transparent
      ),
      initialRoute: "/home",
      routes: {
        "/home": (ctx) => TNavigationTestOne(),
        "/detail": (ctx) => HYDetailPage("111222333")
      },
    );
  }
}

class TNavigationTestOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是第一页标题",
          style: TextStyle(
            color: Colors.black
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: TextButton(
            onPressed: () {
              Future future = Navigator.of(context).pushNamed("/detail");

              future.then((res) {
                print(res);
              });

            },
            child: Text("跳转")
        ),
        color: Colors.green,
      ),
    );
  }
}


class HYDetailPage extends StatelessWidget {
  static const String routeName = "/detail";

  final String _message;

  HYDetailPage(this._message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("详情页"),
//        leading: IconButton(
//          icon: Icon(Icons.arrow_back),
//          onPressed: () => _backToHome(context),
//        ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_message, style: TextStyle(fontSize: 20),),
              RaisedButton(
                child: Text("回到首页"),
                onPressed: () => _backToHome(context),
              )
            ],
          ),
        ),
      );
  }

  void _backToHome(BuildContext context) {
    Navigator.of(context).pop("a detail messagelalala");
  }
}
