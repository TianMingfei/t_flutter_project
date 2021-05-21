
import 'package:flutter/material.dart';

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
              Future future = Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                return HYDetailPage("my message");
              }));


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
    return WillPopScope(
      // 当返回为true时,可以自动返回(flutter帮助我们执行返回操作)
      // 当返回为false时, 自行写返回代码
      onWillPop: () {
        _backToHome(context);
        return Future.value(false);
      },
      child: Scaffold(
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
      ),
    );
  }

  void _backToHome(BuildContext context) {
    Navigator.of(context).pop("a detail messagelalala");
  }
}
