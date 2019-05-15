import 'package:flutter/material.dart';
import 'nav/BottomNavWidget.dart';
import 'nav/BottomNavWidget_Custom.dart';
import 'route_animation/page/route_page1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '开始页面',
      theme: ThemeData(
        primaryColor: Colors.pink
      ),//自定义主题
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
          alignment: Alignment.topLeft,
          constraints: BoxConstraints.expand(
            width: double.maxFinite,
            height: double.maxFinite,

          ),
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            color: Colors.orange,
            border: Border.all(
                color: Colors.blueAccent,
                width: 1.0,
                style: BorderStyle.solid
            ),

          ),
          child: Column(
            children: <Widget>[
              Expanded(
                child:RaisedButton(
                  child: Text('底部导航栏',
                    style: TextStyle(
                        color: Colors.black12,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => bottom_navgation_widget(),
                    ));
                  },
                ) ,
              ),
              Expanded(
                  child:RaisedButton(
                    child: Text('不规则底部导航栏',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => bottom_navgation_custom()));
                    },
                  ) ,
                ),
              Expanded(
                  child:RaisedButton(
                    child: Text('路由动画',
                      style: TextStyle(
                          color: Colors.black12,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => route_page1()));
                    },
                  ) ,
                ),
               /* Expanded(
                  child:RaisedButton(
                    child: Text('底部导航栏',
                      style: TextStyle(
                          color: Colors.black12,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: (){
                          (context) => BottomNavWidget();
                    },
                  ) ,
                ),
                Expanded(
                  child:RaisedButton(
                    child: Text('底部导航栏',
                      style: TextStyle(
                          color: Colors.black12,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: (){
                          (context) => BottomNavWidget();
                    },
                  ) ,
                ),
                Expanded(
                  child:RaisedButton(
                    child: Text('底部导航栏',
                      style: TextStyle(
                          color: Colors.black12,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: (){
                          (context) => BottomNavWidget();
                    },
                  ) ,
                ),
                Expanded(
                  child:RaisedButton(
                    child: Text('底部导航栏',
                      style: TextStyle(
                          color: Colors.black12,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    onPressed: (){
                          (context) => BottomNavWidget();
                    },
                  ) ,
                ),*/
            ],
          )
      ),
    );
  }
}

