import 'package:flutter/material.dart';
import 'package:flutter_im/contacts/contact_vo.dart';

class ContactItem extends StatelessWidget {
  final String imageName;
  final String titleName;
  final ContactVO item;

  ContactItem({this.imageName, this.item, this.titleName});

  @override
  Widget build (BuildContext context) {
    return ListTile(
      leading: Image.asset(
        imageName != null ? imageName : item.avatarUrl,
        width: imageName != null ? 32.0 : 52.0,
        height: imageName != null ? 32.0 : 52.0,
        fit: BoxFit.cover,
      ),
      title: Text(titleName != null ? titleName : item.name),
    );
  }
}