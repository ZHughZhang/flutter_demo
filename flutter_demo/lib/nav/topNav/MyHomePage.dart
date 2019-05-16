import 'package:flutter/material.dart';


class my_home_page extends StatefulWidget {
	@override
	_my_home_pageState createState() => _my_home_pageState();
}

class _my_home_pageState extends State<my_home_page> with AutomaticKeepAliveClientMixin {

	int _counter=0;

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						Text('点击一下试试看'),
						Text('$_counter',style: Theme.of(context).textTheme.display3,)
					],
				),
			),
			floatingActionButton: FloatingActionButton(
				onPressed: _incrementCounter,
				tooltip: '点击',
				child: Icon(Icons.add),

			),
		);
	}

	@override
	bool get wantKeepAlive => true;


	void _incrementCounter(){
		setState(()  => _counter++);
	}

}