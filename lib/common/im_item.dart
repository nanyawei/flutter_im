import 'package:flutter/material.dart';
import 'package:flutter_im/common/touch_callback.dart';

class ImItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String imagePath;
  final double height;
  ImItem({Key key, @required this.title, this.icon, this.imagePath, this.height = 32.0}):super(key: key);

  @override
  Widget build (BuildContext context) {
    return TouchCallBack(
      onPressed: () {
        // 判断点击项
        switch (title) {
          case '好友动态':
            Navigator.pushNamed(context, '/friends');
            break;
          // case '联系客服':
          //   Navigator.pushNamed(context, '/customer');
          //   break;
          default: 
            break;
        }
      },
      child: Container(
        child: ListTile(
          leading: imagePath != null ? Image.asset(imagePath, height: height, fit: BoxFit.cover,) : Icon(icon, size: height),
          title: Text(title),
        )
      )
    );
  }
}