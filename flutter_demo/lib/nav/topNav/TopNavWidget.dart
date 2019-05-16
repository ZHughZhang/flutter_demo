import 'package:flutter/material.dart';
import 'MyHomePage.dart';

class top_nav_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
	    title: '保活',
	    theme: ThemeData(
		    primarySwatch: Colors.lime
	    ),
	    home: keep_alive_demo(),
    );
  }
}


class keep_alive_demo extends StatefulWidget {
  @override
  _keep_alive_demoState createState() => _keep_alive_demoState();
}

class _keep_alive_demoState extends State<keep_alive_demo> with SingleTickerProviderStateMixin {//混入
  TabController _controller;

	@override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  //销毁
  @override
  void dispose() {
		_controller.dispose();
    super.dispose();
  }


	@override
  Widget build(BuildContext context) {
    return Scaffold(
	    appBar: AppBar(
		    title: Text('Keep Alive'),
		    bottom: TabBar(
			    controller: _controller,
				    tabs: <Widget>[
				    	Tab(icon: Icon(Icons.directions_car),),
				    	Tab(icon: Icon(Icons.directions_bike),),
				    	Tab(icon: Icon(Icons.directions_boat),)
				    ]),
	    ),
	    body: TabBarView(
		    controller: _controller,
			    children: <Widget>[
			    	my_home_page(),
				    my_home_page(),
				    my_home_page(),
			    ]
	    ),
    );
  }
}






