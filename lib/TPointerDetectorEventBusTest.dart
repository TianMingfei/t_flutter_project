import 'package:flutter/material.dart';
import 'package:event_bus/event_bus.dart';

class TTestEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(40),
        height: 200,
        color: Colors.blueGrey,
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  final info = UserInfo("why", 18);
                  eventBus.fire(info);
                },
                child: Text("SendEventData")),
            TReceiveEventWidget()
          ],
        )
    );
  }
}


class TReceiveEventWidget extends StatefulWidget {
  @override
  _TReceiveEventWidgetState createState() => _TReceiveEventWidgetState();
}

class _TReceiveEventWidgetState extends State<TReceiveEventWidget> {

  String message = "Hello message";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    eventBus.on<UserInfo>().listen((data) {

      if (mounted) {
        setState(() {
          message = "Buy message" + "${data.nickname}";
        });
      }

    });

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text(message,
        style: TextStyle(
            color: Colors.blue
        ),
      ),
    );
  }
}


final eventBus = EventBus();

class UserInfo {
  String nickname;
  int level;

  UserInfo(this.nickname, this.level);
}


//点击事件
class TGestureDetectorTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: Container(
          color: Colors.green,
        ),
        onDoubleTap: () {
          print("double");
        },
      ),
    );
  }
}


class TPointerTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Listener(
        child: Container(
          color: Colors.purple,
        ),
        onPointerDown: (event) {
          print("pointerDown");
        },
        onPointerCancel: (event) {
          print("pointerCancel");
        },
        onPointerHover: (event) {
          print("pointerHover");
        } ,
        onPointerMove: (event) {
          print("pointerMove");
        },
        onPointerUp: (event) {
          print("pointerUp");
        },
        onPointerSignal: (event) {
          print("pointerSignal");
        },
      ),
    );
  }
}

