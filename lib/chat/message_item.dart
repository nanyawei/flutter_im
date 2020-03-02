// 聊天信息列表项

import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_im/chat/message_data.dart';

class MessageItem extends StatelessWidget {
  final MessageData message;
  MessageItem(this.message);

  @override
  Widget build (BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        leading: Image.asset(message.avatar, width: 50.0, height: 50.0, fit: BoxFit.cover),
        title: Text(message.title),
        subtitle: Text(message.subTitle, overflow: TextOverflow.ellipsis,),
        trailing: Text(formatDate(message.time, [HH, ':', nn, ':', ss]).toString()),
      )
    );
  }
}