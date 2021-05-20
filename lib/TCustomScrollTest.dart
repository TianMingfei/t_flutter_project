import 'package:flutter/material.dart';

class CustomScrollTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text("我是title"),
          pinned: true,
        ),
        SliverSafeArea(sliver: SliverPadding(
          padding: EdgeInsets.all(20),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1.5
            ),
            delegate: SliverChildBuilderDelegate(
                    (BuildContext ctx, int int) {
                  return Container(color: Colors.red);
                },
                childCount: 100
            ),
          ),
        ))
      ],
    );
  }
}


class CustomScrollOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text("我是title"),
          pinned: true,
        ),
        SliverGrid(
            delegate: SliverChildBuilderDelegate((BuildContext ctx, int int) {
              return Container(color: Colors.red,);
            },
              childCount: 10,
            ), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 50,
          childAspectRatio: 2,
          // mainAxisExtent: 100
        )),
        SliverAppBar(
          title: Text("我是title2"),
          pinned: true,
        ),
        SliverGrid(
            delegate: SliverChildBuilderDelegate((BuildContext ctx, int int) {
              return Container(color: Colors.blue,);
            },
              childCount: 100,
            ), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 50,
          childAspectRatio: 2,
          // mainAxisExtent: 100
        )),
      ],
    );
  }
}


