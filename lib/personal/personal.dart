import 'package:flutter/material.dart';
import '../common/im_item.dart';

class Personal extends StatefulWidget {
  @override
  _PersonalState createState () => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  Widget build (BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Colors.white,
          child: ListTile(
            leading: Image.asset('images/yixiu.jpeg'),
            title: Text('一休'),
            subtitle: Text('思考的脑壳子'),
            trailing: Image.asset('images/code.png', width: 28.0, height: 28.0, fit: BoxFit.cover)
          )
        ),
        Container(
          color: Colors.white,
          margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: ImItem(title: '好友动态', icon: Icons.mail),
        ),
        Container(
          color: Colors.white,
          margin: EdgeInsets.only(bottom: 20.0),
          child: Column(
            children: <Widget>[
              ImItem(title: '邮件管理', icon: Icons.mail),
              ImItem(title: '我的相册', imagePath: 'images/icon_me_photo.png',),
              ImItem(title: '我的文件', imagePath: 'images/icon_me_file.png',),
              ImItem(title: '联系客服', imagePath: 'images/icon_me_service.png',),
            ]
          )
        ),
        Container(
          color: Colors.white,
          child: ImItem(title: '清理缓存', imagePath: 'images/icon_me_clear.png'),
        ),
      ]
    );
  }
}