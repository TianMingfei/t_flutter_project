



import 'package:flutter/material.dart';
import "dart:io";

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
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatelessWidget {

  // Future<String> getNetworkData() {
  //   return Future<String>(() {
  //     sleep(Duration(seconds: 3));
  //     // 不再返回结果，而是出现异常
  //     return "network data";
  //     // throw Exception("网络请求出现错误");
  //   });
  // }

  Future getNetworkData() async {
    var result = await Future.delayed(Duration(seconds: 1), () {
      return "pppooo";
    });
    return result + "888999";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView测试"),
      ),
      body: Container(
        child: TextButton(child: Text("FutureButton"), onPressed: () {
          getNetworkData().then((value)  {
            print(value);
            return value + "111";
          }).then((value) => value + "222")
          .then((value) {
            print(value);
          });
        },),
      )
    );
  }
}

