import 'package:flutter/material.dart';

class wrap_layout extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: '流式布局',
			theme: ThemeData(
					primarySwatch: Colors.amber
			),
			home: Scaffold(
				appBar: AppBar(
					title: Text('流式布局'),
					backgroundColor: Colors.amber[200],
					centerTitle: true,
				),
				body: wrap_layout_widget(),
			),

		);
	}
}


class wrap_layout_widget extends StatefulWidget {

	@override
	_wrap_layout_widgetState createState() => _wrap_layout_widgetState();
}

class _wrap_layout_widgetState extends State<wrap_layout_widget> {

	List<Widget> list_widget;


	@override
	void initState() {
		super.initState();
		list_widget = List()
			..add(buildAddButton());
	}

	@override
	Widget build(BuildContext context) {
		final width = MediaQuery
				.of(context)
				.size
				.width; //获取屏幕的宽度
		final height = MediaQuery
				.of(context)
				.size
				.height; //获取屏幕的高度

		return Container(
			child: Center(
				child: Opacity(
					opacity: 0.8,
					child:Container(
						width: width,
						height: height/2,
						color: Colors.grey,
						child: Wrap(
							children: list_widget,
							spacing: 26.0,
						),
					),
				),
			),
		);
	}


	Widget buildAddButton() {
		return GestureDetector(
			onTap: () {
				if (list_widget.length <= 9) {
					setState(() {
						list_widget.insert(list_widget.length - 1, buildPhoto());
					});//设置实时绑定

				}
			},
			child: Padding(
				padding: const EdgeInsets.all(8.0),
				child: Container(
					width: 80.0,
					height: 80.0,
					color: Colors.black54,
					child: Icon(Icons.add),
				),
			),
		);
	}


	Widget buildPhoto() {
		return Padding(
			padding: const EdgeInsets.all(8.0),
			child: Container(
				width: 80.0,
				height: 80.0,
				color: Colors.amber,
				child: Center(
					child: Text('照骗'),
				),
			),
		);
	}
}


