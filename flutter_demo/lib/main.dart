import 'package:flutter/material.dart';
import 'package:flutter_demo/nav/bottomNav/BottomNavWidget.dart';
import 'package:flutter_demo/nav/bottomNav/BottomNavWidget_Custom.dart';
import 'route_animation/page/route_page1.dart';
import 'effect/frosted_glass.dart';
import 'nav/topNav/TopNavWidget.dart';
import 'search/search_bar.dart';
import 'wraplayout/wrap_layout.dart';
import 'expansiontile/expansion_tile.dart';
import 'expansiontile/expansion_panel_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '开始页面',
      theme: ThemeData(primaryColor: Colors.pink), //自定义主题
      home: _Mainpage(),
    );
  }
}

class _Mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main主页'),
      ),
      body: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints.expand(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        ),
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.orange,
          border: Border.all(
              color: Colors.blueAccent, width: 1.0, style: BorderStyle.solid),
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          semanticChildCount: 4,
          children: <Widget>[
            RaisedButton(
              child: Text(
                '底部导航栏',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => bottom_navgation_widget(),
                ));
              },
            ),
            RaisedButton(
              child: Text(
                '不规则底部导航栏',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => bottom_navgation_custom()));
              },
            ),
            RaisedButton(
              child: Text(
                '路由动画',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => route_page1()));
              },
            ),
            RaisedButton(
              child: Text(
                '毛玻璃效果',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => frosted_glass()));
              },
            ),
            RaisedButton(
              child: Text(
                '头部导航栏',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => top_nav_widget()));
              },
            ),
            RaisedButton(
              child: Text(
                '搜索栏',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => search_bar_widget()));
              },
            ),
            RaisedButton(
              child: Text(
                '流式布局',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => wrap_layout()));
              },
            ),
            RaisedButton(
              child: Text(
                'expansion tile',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => expandion_tile()));
              },
            ),
            RaisedButton(
              child: Text(
                'expansion panel list',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => expansion_panel_list()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
