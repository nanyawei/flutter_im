// 定义数据VO类，将类命名为ContactVO，包含字母排列值、名称、头像、url字段

import 'package:flutter/material.dart';

class ContactVO {
  // 字母排列值
  String seationKey;
  // 名称
  String name;
  // 头像
  String avatarUrl;
  // 构造函数
  ContactVO({
    @required this.seationKey,
    this.name,
    this.avatarUrl
  });
}

// 组装数据
List<ContactVO> contactData = [
  ContactVO(seationKey: 'D', name: '大雄', avatarUrl: 'images/daxiong.jpeg'),
  ContactVO(seationKey: 'G', name: '怪盗基德', avatarUrl: 'images/guaidaojide.jpeg'),
  ContactVO(seationKey: 'H', name: '花花', avatarUrl: 'images/police-huahua.jpeg'),
  ContactVO(seationKey: 'M', name: '毛毛', avatarUrl: 'images/police-maomao.jpeg'),
  ContactVO(seationKey: 'P', name: '皮卡丘', avatarUrl: 'images/pikaqiu.jpeg'),
  ContactVO(seationKey: 'P', name: '泡泡', avatarUrl: 'images/police-paopao.jpeg'),
  ContactVO(seationKey: 'X', name: '熊二', avatarUrl: 'images/bear-second.jpeg'),
  ContactVO(seationKey: 'Y', name: '一休哥', avatarUrl: 'images/yixiu.jpeg'),
];
