import 'package:flutter/material.dart';
import 'dart:ui';

class frosted_glass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	    appBar: AppBar(
		    title: Text('毛玻璃效果'),
	    ),
	    body: Stack(
		    children: <Widget>[
		    	ConstrainedBox(
					    constraints:const BoxConstraints.expand(),
				    child: Image.network('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1545738629147&di=22e12a65bbc6c4123ae5596e24dbc5d3&imgtype=0&src=http%3A%2F%2Fpic30.photophoto.cn%2F20140309%2F0034034413812339_b.jpg'),
			    ),//约束性组件
				Center(
					child: ClipRect(
						child: BackdropFilter(
								filter: ImageFilter.blur(
									sigmaX: 5.0,
									sigmaY: 5.0,
								),//图片过滤器
							child: Opacity(
									opacity: 0.5,
								child: Container(
									width: 500.0,
									height: 700.0,
									decoration: BoxDecoration(
										color: Colors.grey,
									),
									child: Center(
										child: Text('这是一个毛玻璃效果',style: Theme.of(context).textTheme.display3,),
									),
								),
							),
						),//背景过滤器
					),//可裁切的矩形
				),
		    ],
	    ),

    );
  }

}