import 'package:flutter/material.dart';

class ListViewThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      itemExtent: 100,
      children: List.generate(50, (index) =>
          Row(
            children: [
              Text("哈哈哈嘿嘿嘿"),
              Icon(Icons.people),

              TextButton(
                  onPressed: () {
                    showDialog(context: context, builder: (BuildContext ctx) {
                      return AlertDialog(
                        content: Text("data"),
                      );
                    });
                  },
                  child: Text("我是按钮")
              ),
              Icon(Icons.delete),
            ],
          ),
      ),
    );
  }
}


class ListTestTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: 50,
          itemExtent: 50,
          itemBuilder: (BuildContext ctx, int index) {
            return Text("data");
          }
      ),
    );
  }
}


class ListTestOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.separated(itemBuilder: (BuildContext ctx, int index) {
          return Row(
            children: [
              Text("哈哈哈嘿嘿嘿"),
              TextButton(
                  onPressed: () {
                    showDialog(context: ctx, builder: (BuildContext ctx) {
                      return AlertDialog(
                        content: Text("data"),
                      );
                    });
                  },
                  child: Text("我是按钮")
              )
            ],
          );
        } , separatorBuilder: (BuildContext ctx, int index) {
          return Divider(
            color: Colors.black,
            height: 30,
            indent: 100,
            endIndent: 100,
            thickness: 20,
          );
        }, itemCount: 20)
    );
  }
}
