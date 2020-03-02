import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState () => _LoadingPageState();
}

// 加载页面停顿要放在initState函数中处理，原应是必须等待页面渲染完成，否则加载画面的内容就看不到了
class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState () {
    super.initState();
    // 在加载页面停留3秒
    Future.delayed(Duration(seconds: 3), () {
      print('Flutter即时通讯App界面实现');
      Navigator.of(context).pushReplacementNamed('app');
    });
  }

  @override
  Widget build (BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          // 加载页面居中背景图，使用cover模式
          Image.asset('images/loading.jpg', fit: BoxFit.cover)
        ]
      ),
    );
  }
}