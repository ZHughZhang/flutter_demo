import 'package:flutter/material.dart';

class bezier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
	  title: 'bezier_curve',
	  theme: ThemeData(
		primaryColor: Colors.pinkAccent
	  ),
	  home: Scaffold(
		appBar: AppBar(
		  title: Text('bezier_curve'),
		  centerTitle: true,
		),
		body: Column(
		  children: <Widget>[
		    ClipPath(
			  clipper:BottomClipper() ,//要裁切的路径
			  child:Container(
				color: Colors.deepPurpleAccent,
				height: 200.0,
			  ) ,
			),
			Container(
			  height: 200.0,
			  color: Colors.pinkAccent,
			)
		  ],
		),
	  ),
	);
  }
}


class  BottomClipper extends CustomClipper<Path> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  Path getClip(Size size) {//子元素的
    // TODO: implement getClip
	
	print('size:${size}>>>>>>>>');
	var path = Path();
	path.lineTo(0,0);//第一个坐标点
	path.lineTo(0, size.height-40);//第二个点
	var firstControlPaint = Offset(size.width/4,size.height);//bazier 第一段曲线起点
	var firstPointEndPoint = Offset(size.width/2.25,size.height-30);//bazier 第一段曲线结束点
	path.quadraticBezierTo(firstControlPaint.dx,firstControlPaint.dy, firstPointEndPoint.dx,  firstPointEndPoint.dy);
	var secondConttrolPoint = Offset(size.width/4*3,size.height-90);
	var secondEndPoint = Offset(size.width,size.height-60);
	path.quadraticBezierTo(secondConttrolPoint.dx, secondConttrolPoint.dy, secondEndPoint.dx,secondEndPoint.dy );
	path.lineTo(size.width, size.height-30);
    path.lineTo(size.width,0 );
	
	return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return null;
  }
}



