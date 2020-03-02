import 'package:flutter/material.dart';
import './chat/message_page.dart';
import './contacts/contacts.dart';
import './personal/personal.dart';
class App extends StatefulWidget {
  @override
  _AppState createState () => _AppState();
}

class _AppState extends State<App> {
  // 当前选中页面索引
  var _currentIndex = 0;

  // 聊天页面
  MessagePage message;
  // 好友页面
  Contacts contacts;
  // 我的页面
  Personal me;

  // 根据当前索引返回不同页面
  currentPage () {
    switch (_currentIndex) {
      case 0:
        if (message == null) {
          message = MessagePage();
        }
        return message;
      case 1:
        if (contacts == null) {
          contacts = Contacts();
        }
        return contacts;
      case 2:
        if (me == null) {
          me = Personal();
        }
        return me;
      default:
    }
  }

  // 渲染菜单项
  PopupMenuItem _popupMenuItem ( String title, { String imagePath, IconData icon } ) {
    return PopupMenuItem(
      child: Row(
        children: <Widget>[
          // 判断是使用图片路径还是图标
          (imagePath != null ?
            Image.asset(imagePath, width: 32.0, height: 32.0) :
            SizedBox(
              width: 32.0,
              height: 32.0,
              child: Icon(icon, color: Colors.white)
            )),
          Container(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(title, style: TextStyle(color:Colors.white))
          )
        ]
      ),
    );
  }

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('通讯'),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              // 调转至搜索页面
              Navigator.pushNamed(context, '/search');
            },
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 20.0),
            child: GestureDetector(
              onTap: () {
                // 弹出菜单
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(500.0, 76.0, 10.0, 0.0),
                  items: <PopupMenuItem>[
                    _popupMenuItem('发起会话', imagePath: 'images/icon_menu_group.png'),
                    _popupMenuItem('添加好友', imagePath: 'images/icon_addfriend.png'),
                    _popupMenuItem('联系客服', icon: Icons.person),
                  ]
                );
              },
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // 通过fixedColor设置选中iten的颜色
        type: BottomNavigationBarType.fixed,
        // 当前页面索引
        currentIndex: _currentIndex,
        // 按下后设置当前页面索引
        onTap: ((index) {
          setState(() {
            _currentIndex = index;
          });
        }),
        // 底部导航按钮项
        items: [
          // 导航按钮项传入文本及图标
          BottomNavigationBarItem(
            title: Text(
              '聊天',
              style: TextStyle(
                color: _currentIndex == 0 ? Color(0xFF46c01b) : Color(0xff999999)
              ),
            ),
            // 判断当前索引以进行图片切换显示
            icon: Image.asset(_currentIndex == 0 ? 'images/message_pressed.png' : 'images/message_normal.png', width: 32.0, height: 28.0)
          ),
          BottomNavigationBarItem(
            title: Text(
              '好友',
              style: TextStyle(
                color: _currentIndex == 1 ? Color(0xFF46c01b) : Color(0xff999999)
              ),
            ),
            // 判断当前索引以进行图片切换显示
            icon: Image.asset(_currentIndex == 1 ? 'images/contact_list_pressed.png' : 'images/contact_list_normal.png', width: 32.0, height: 28.0)
          ),
          BottomNavigationBarItem(
            title: Text(
              '我的',
              style: TextStyle(
                color: _currentIndex == 2 ? Color(0xFF46c01b) : Color(0xff999999)
              ),
            ),
            // 判断当前索引以进行图片切换显示
            icon: Image.asset(_currentIndex == 2 ? 'images/profile_pressed.png' : 'images/profile_normal.png', width: 32.0, height: 28.0)
          ),
        ],
      ),
      // 中间显示当前页面
      body: currentPage(),
    );
  }
}