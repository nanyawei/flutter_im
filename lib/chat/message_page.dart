// 聊天信息列表页
import 'package:flutter/material.dart';
import 'package:flutter_im/chat/message_item.dart';
import './message_data.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState () => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build (BuildContext context) {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) {
        return Divider(height: 1);
      } ,
      itemCount: messageData.length,
      itemBuilder: (BuildContext context, int index) {
        return MessageItem(messageData[index]);
      }
    );
  }
}