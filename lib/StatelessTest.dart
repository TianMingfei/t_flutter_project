import 'package:flutter/material.dart';

class THomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "商品列表"
        ),
      ),
      body: THomeContent(),
    );
  }
}

class THomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        THomeListItem("title1", "content1", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
        SizedBox(height: 30,),
        THomeListItem("title1", "content1", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
        SizedBox(height: 30,),
        THomeListItem("title1", "content1", "https://tva1.sinaimg.cn/large/006y8mN6gy1g72j6nk1d4j30u00k0n0j.jpg"),
        SizedBox(height: 30,),
      ],
    );
  }
}

class THomeListItem extends StatelessWidget {

  final String title;
  final String content;
  final String imgUrl;

  THomeListItem(this.title, this.content, this.imgUrl);

  @override
  Widget build(BuildContext context) {

    final titleStyle =  TextStyle(fontSize: 18, color: Colors.blue);
    final contentStyle =  TextStyle(fontSize: 14, color: Colors.red);

    return Container(
      padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(width: 3, color: Colors.green), left: BorderSide.none, right: BorderSide.none, bottom: BorderSide(width: 3, color: Colors.red)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: titleStyle,),
          Text(content, style: contentStyle,),
          Image.network(imgUrl),
          SizedBox(height: 8,)
        ],
      ),
    );
  }
}
