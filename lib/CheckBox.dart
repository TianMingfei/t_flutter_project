import 'package:flutter/material.dart';
class TRowCheckBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TRowCheckBoxState();
  }
}

class TRowCheckBoxState extends State<TRowCheckBox> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Checkbox(
                value: flag,
                onChanged: (value) {
                  print(value);
                  setState(() {
                    this.flag = value;
                  });
                }),
            Text("你好啊"),
            Text("哈哈")
          ],
        ));
  }
}

class TRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("checkBox"),
          backgroundColor: Colors.green,
        ),
        body: TRowCheckBox(),
      ),
    );
  }
}
