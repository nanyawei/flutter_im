import 'package:flutter/material.dart';
import 'package:flutter_im/common/touch_callback.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  // 定义焦点
  FocusNode _focusNode = FocusNode();

  // 请求获取焦点
  _requestFocus() {
    FocusScope.of(context).requestFocus(_focusNode);
    return _focusNode;
  }

  // 返回一个文本组件
  _getText(String text) {
    return TouchCallBack(
        child: Text(text,
            style: TextStyle(fontSize: 14, color: Color(0xff1aada9))),
        onPressed: () {},
        isfeed: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            // 顶部留白
            margin: EdgeInsets.only(top: 25),
            // 垂直布局
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // 顶部导航栏
                Stack(children: <Widget>[
                  TouchCallBack(
                    isfeed: false,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 45.0,
                      margin: EdgeInsets.only(left: 12.0, right: 10.0),
                      child: Icon(Icons.chevron_left, color: Colors.black),
                    ),
                  ),
                  // 搜索框容器
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 45.0,
                    margin: EdgeInsets.only(left: 50.0, right: 10.0),
                    // 搜索框底部边框
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 1.0, color: Colors.green))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          // 搜索框
                          child: TextField(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                            onChanged: (String text) {},
                            focusNode: _requestFocus(),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '搜索'
                            ),
                          ),
                        ),
                        // 添加麦克风图标
                        Container(
                          margin: EdgeInsets.only(right: 10.0),
                          child: Icon(
                            Icons.mic,
                            color: Color(0xffaaaaaa),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
                Container(
                  margin: EdgeInsets.only(top: 50.0),
                  child: Text('常用搜索', style: TextStyle(fontSize: 16.0, color: Color(0xffb5b5b5))),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _getText('朋友'),
                      _getText('聊天'),
                      _getText('群组')
                    ]
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _getText('Flutter'),
                      _getText('Dart'),
                      _getText('C++')
                    ]
                  ),
                )
              ],
            )));
  }
}
