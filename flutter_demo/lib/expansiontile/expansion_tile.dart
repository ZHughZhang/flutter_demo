import 'package:flutter/material.dart';

class expandion_tile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'expansion tile',
      theme: ThemeData(primarySwatch: Colors.orange),
      home: Scaffold(
        appBar: AppBar(
          title: Text('expansion tile'),
          centerTitle: true,
        ),
        body: Center(
          child: ExpansionTile(
            title: Text(
              '这是提示?',
              style: TextStyle(backgroundColor: Colors.orange),
            ),
            leading: Icon(Icons.ac_unit),
            //设置 左边的图标
            backgroundColor: Colors.deepOrangeAccent,
            //设置打开后的背景色
            initiallyExpanded: true,
            //设置是否打开
            children: <Widget>[
              ListTile(
                title: Text('你看不见我'),
                subtitle: Text('你真看不见我'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
