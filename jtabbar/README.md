# jtabbar

## Example
一个超简单的自定义tabbar控件。
```dart
import 'package:flutter/material.dart';
import 'package:jtabbar/JMainTabbarItem.dart';
import 'package:jtabbar/JMainTabbar.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = '默认';
  int current = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  title: const Text('Plugin example app'),
                ),
                body: Container(
                  color: Colors.grey,
                  alignment: Alignment.center,
                  child: Text(
                    message,
                    style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.black
                    ),
                  ),
                ),
                bottomNavigationBar: JMainTabbar(
                  currentIndex: current,
                  items: [
                    JmainTabbarItemBean(
                      nomalColor: Colors.grey,
                      selectColor: Colors.red,
                      title: '首页',
                      titleFont: 10.0,
                      nomalImg: 'images/homeNomal.png',
                      selectImg: 'images/homeSelect.png',
                      type: JMainTabbarItemType.nomal,
                    ),
                    JmainTabbarItemBean(
                      nomalColor: Colors.grey,
                      selectColor: Colors.red,
                      title: '表情',
                      titleFont: 10.0,
                      nomalImg: 'images/faceNomal.png',
                      selectImg: 'images/faceSelect.png',
                      type: JMainTabbarItemType.image,
                    ),
                    JmainTabbarItemBean(
                      nomalColor: Colors.grey,
                      selectColor: Colors.red,
                      title: '消息',
                      titleFont: 10.0,
                      nomalImg: 'images/addNomal.png',
                      selectImg: 'images/addSelect.png',
                      type: JMainTabbarItemType.boost,
                    ),
                    JmainTabbarItemBean(
                      nomalColor: Colors.grey,
                      selectColor: Colors.red,
                      title: '位置',
                      titleFont: 10.0,
                      nomalImg: 'images/locationNomal.png',
                      selectImg: 'images/locationSelect.png',
                      type: JMainTabbarItemType.image,
                    ),
                    JmainTabbarItemBean(
                      nomalColor: Colors.grey,
                      selectColor: Colors.red,
                      title: '表格',
                      titleFont: 10.0,
                      nomalImg: 'images/tableNomal.png',
                      selectImg: 'images/tableSelect.png',
                      type: JMainTabbarItemType.nomal,
                    ),
                  ],
                  onTap: (index) {
                    setState(() {
                      current = index;
                      message = '点击了第$index个item!';
                    });
                  },
                )
            )
        )
    );
  }
}
```
## Getting Started

This project is a starting point for a Flutter
[plug-in package](https://flutter.io/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
