



import 'package:dio/dio.dart';
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
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: TextButton(child: Text("获取数据"),onPressed: () {
        dioNetwork();
      },),
    );
  }
}

void dioNetwork() async {
  // 1.创建Dio请求对象
  final dio = Dio();

  // 2.发送网络请求
  final response = await dio.get("http://123.207.32.32:8000/api/v1/recommend");

  // 3.打印请求结果
  if (response.statusCode == HttpStatus.ok) {
    print(response.data);
  } else {
    print("请求失败：${response.statusCode}");
  }
}

