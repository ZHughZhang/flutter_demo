import 'package:flutter/material.dart';
import 'page/each_view.dart';

class bottom_navgation_custom extends StatefulWidget {
  @override
  _bottom_navgation_customState createState() =>
      _bottom_navgation_customState();
}

class _bottom_navgation_customState extends State<bottom_navgation_custom> {

  List<Widget> _eachview;
  int _index = 0;

  @override
  void initState() {
    _eachview = List();
    _eachview
    ..add(EachView('Home'))
    ..add(EachView("Send"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _eachview[_index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => EachView('New Page')) );
        },
        tooltip: 'Camera',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,//将浮动的按钮与底部的导航栏融合
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                setState(() {
                    _index = 0;
                });
              },
              color: Colors.purple,
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
              color: Colors.purple,
            )
          ],
        ),
      ),//底部导航栏
    );
  }
}
