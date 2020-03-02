import 'package:flutter/material.dart';
import 'package:flutter_im/contacts/contact_vo.dart';

class ContactSiderList extends StatefulWidget {
  // 好友列表项数据
  final List<ContactVO> items;
  // 好友列表头构造器
  final IndexedWidgetBuilder headerBuilder;
  // 好友列表项构造器
  final IndexedWidgetBuilder itemBuilder;
  // 字母构造器
  final IndexedWidgetBuilder sectionBuilder;

  ContactSiderList({
    Key key,
    @required this.items,
    this.headerBuilder,
    @required this.itemBuilder,
    @required this.sectionBuilder
  }): super(key: key);

  @override
  _ContactSiderListState createState () => _ContactSiderListState();
}

class _ContactSiderListState extends State<ContactSiderList> {
  // 列表滚动控制器
  final ScrollController _scrollController = ScrollController();

  bool _onNotification (ScrollNotification notification) {
    return true;
  }

  // 判断并显示头部视图或空容器
  _isShowHeaderView(_index) {
    if (_index == 0 && widget.headerBuilder != null) {
      return Offstage(
        offstage: false,
        child: widget.headerBuilder(context, _index),
      );
    }
    return Container();
  }
  // 根据定位判断是否显示好友列表
  _shouldShowHeader(int position) {
    if (position <= 0) {
      return false;
    }
    if (position != 0 && widget.items[position].seationKey != widget.items[position - 1].seationKey) {
      return false;
    }
    return true;
  }


  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // 列表加载更多
          NotificationListener(
            onNotification: _onNotification,
            child: ListView.builder(
              controller: _scrollController,
              physics: AlwaysScrollableScrollPhysics(),
              itemCount: widget.items.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: <Widget>[
                      // 显示列表头
                      _isShowHeaderView(index),
                      // 用offstage组件控制是否显示英文字母
                      Offstage(
                        offstage: _shouldShowHeader(index),
                        child: widget.sectionBuilder(context, index)
                      ),
                      Column(
                        children: <Widget>[
                          widget.itemBuilder(context, index)
                        ],
                      )
                    ]
                  ),
                );
              },
            ),
          )
        ]
      ),
    );
  }
}