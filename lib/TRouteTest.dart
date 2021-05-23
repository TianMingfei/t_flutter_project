
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (BuildContext ctx) {
          return UnknownPage();
        });
      },
      onGenerateRoute: (settings) {
        if (settings.name == "/about") {
          return MaterialPageRoute(builder: (BuildContext ctx) {
            return HYAboutPage("home to about message");
          });
        }
        return null;
      },
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue, splashColor: Colors.transparent
      ),
      initialRoute: "/",
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
              // Future future = Navigator.of(context).pushNamed("/detail", arguments: "msg from home");
              //
              // future.then((res) {
              //   print(res);
              // });

              //test非注册路由

              // Navigator.of(context).pushNamed(HYAboutPage.routeName, arguments: "a home message");

              //制作统一错误页面
              Navigator.of(context).pushNamed("/abc");

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

    final msg = ModalRoute.of(context).settings.arguments;
    print(msg);

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

//测试未注册的路由
class HYAboutPage extends StatelessWidget {
  static const String routeName = "/about";
  final String message;

  HYAboutPage(this.message);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("关于页面"),
      ),
      body: Center(
        child: Text(message, style: TextStyle(fontSize: 30, color: Colors.red),),
      ),
    );
  }
}

//统一位置错误页面
class UnknownPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("错误页面"),
      ),
      body: Container(
        child: Center(
          child: Text("页面跳转错误"),
        ),
      ),
    );
  }
}
