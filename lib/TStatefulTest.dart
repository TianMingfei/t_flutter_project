import 'package:flutter/material.dart';

class THomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("计数器"),

      ),
      body: THomeCount(),
    );
  }
}

class THomeCount extends StatefulWidget {
  @override
  _THomeCountState createState() => _THomeCountState();
}

class _THomeCountState extends State<THomeCount> {

  var num = 0;

  void onPressed () {
    setState(() {
      num = num + 1;
    });
    print(num);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              TextButton(onPressed: onPressed, child: Text("button点击增加")),
              TextButton(onPressed: () {
                setState(() {
                  num = num - 1;
                });
              }, child: Text("button点击减少"))
            ],
          ),
          Text(num.toString())
        ],
      ),
    );
  }
}


