import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import './app.dart';
import './search.dart';
import './loading.dart';

void main () => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: '聊天室',
  // 自定义主图
  theme: mDefaultTheme,
  // 添加路由
  routes: <String, WidgetBuilder>{
    'app': (BuildContext context) => App(),
    '/friends': (_) => WebviewScaffold(
      // webview插件
      url: 'https://flutter.io/',
      appBar: AppBar(
        title: Text('Flutter 官网')
      ),
      withZoom: true,
      withLocalStorage: true,
    ),
    '/search': (BuildContext context) => Search(), // 搜索页面路由
  },
  // 指定首页，默认为加载页面
  home: LoadingPage(),
));

// 自定义主题
final ThemeData mDefaultTheme = ThemeData(
  primaryColor: Colors.green,
  scaffoldBackgroundColor: Color(0XFFebebeb),
  cardColor: Colors.green
);