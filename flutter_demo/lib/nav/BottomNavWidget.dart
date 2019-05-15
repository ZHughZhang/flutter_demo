import 'package:flutter/material.dart';
import 'page/home.dart';
import 'page/email.dart';
import 'page/pages.dart';
import 'page/airplay.dart';

class bottom_navgation_widget extends StatefulWidget {
  @override
  _bottom_navgation_widgetState createState() => _bottom_navgation_widgetState();
}

class _bottom_navgation_widgetState extends State<bottom_navgation_widget> {
	final _bottomNavColos = Colors.blue;

	int _currentIndex = 0;
	List<Widget> _list = List();

  @override
  Widget build(BuildContext context) {
     return Scaffold (
	     body: _list[_currentIndex],
	    bottomNavigationBar: BottomNavigationBar(
			    items:[
				    BottomNavigationBarItem(
					    icon: Icon(
						    Icons.home,
						    color: _bottomNavColos,
					    ),
					    title: Text(
						    '首页',
						    style: TextStyle(
							    fontSize: 20.0,
							    fontWeight: FontWeight.bold,
							    color:Colors.red,
						    ),
					    ),
				    ),
				    BottomNavigationBarItem(
					    icon: Icon(
						    Icons.email,
						    color: _bottomNavColos,
					    ),
					    title: Text(
						    '邮箱',
						    style: TextStyle(
							    fontSize: 20.0,
							    fontWeight: FontWeight.bold,
							    color:Colors.red,
						    ),
					    ),
				    ),
				    BottomNavigationBarItem(
					    icon: Icon(
						    Icons.pages,
						    color: _bottomNavColos,
					    ),
					    title: Text(
						    '页面',
						    style: TextStyle(
							    fontSize: 20.0,
							    fontWeight: FontWeight.bold,
							    color:Colors.red,
						    ),
					    ),
				    ),
				    BottomNavigationBarItem(
					    icon: Icon(
						    Icons.airplay,
						    color: _bottomNavColos,
					    ),
					    title: Text(
						    '空投',
						    style: TextStyle(
							    fontSize: 20.0,
							    fontWeight: FontWeight.bold,
							    color:Colors.red,
						    ),
					    ),
				    ),
			    ],
		    currentIndex: _currentIndex,
		    onTap: (int index){
			    	setState(() {
			    	  _currentIndex = index;
			    	});
		    },
	    ),
    );
  }

  @override
  void initState() {
    _list
    ..add(homePage())
    ..add(emailPage())
    ..add(PagesPage())
    ..add(airPlayPage());
    super.initState();
  }
}

