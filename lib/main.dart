
import 'dart:math';
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
      body: GridViewThree(),
    );
  }
}

class GridViewThree extends StatelessWidget {
  const GridViewThree({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 0.5,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8
      ),
      children: List.generate(100, (index) {
        return Container(
          color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
        );
      }),
    );
  }
}

class GridViewTwo extends StatelessWidget {
  const GridViewTwo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 400,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 3.0
      ),
      children: List.generate(100, (index) {
        return Container(
          color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
        );
      }),
    );
  }
}

class GridOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8
          ),
          itemBuilder: (BuildContext ctx, int index) {
            return Container(
              color: Color.fromARGB(255, Random().nextInt(256), Random().nextInt(256), Random().nextInt(256)),
            );
          }
      ),
    );
  }
}


