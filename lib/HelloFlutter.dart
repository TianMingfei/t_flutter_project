import 'package:flutter/material.dart';
class THome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("嘿嘿嘿"),
          ),
          body: Center(
            child: Text(
              "Hello world!!!",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 40,
                  backgroundColor: Colors.white
              ),
            ),
          ),
        )
    );
  }
}