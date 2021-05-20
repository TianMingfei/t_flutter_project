



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
      home: HYHomePage(),
    );
  }
}

class HYHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView测试"),
      ),
      body: Container()
    );
  }
}

