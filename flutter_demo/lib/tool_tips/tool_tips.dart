import 'package:flutter/material.dart';


class tools_tips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
	  title: 'tools_tips',
	  theme: ThemeData(primaryColor: Colors.pinkAccent),
	  home: Scaffold(
		appBar: AppBar(
		  title: Text('tools_tips'),
		),
		body: Center(
		  child: Tooltip(
			  message: '小心宰了你哟',
		  	child: Image.network('https://b-ssl.duitang.com/uploads/item/201902/28/20190228134843_zqmue.thumb.700_0.png',
			),
		  ),
		),
	  ),
	);
  }
}
