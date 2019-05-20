import 'package:flutter/material.dart';

class wave_bezier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
	  title: 'wave_bezier',
	  theme: ThemeData(
		primaryColor: Colors.pinkAccent
	  ),
	  home: Scaffold(
		appBar: AppBar(
		  title: Text('wave_bezier'),
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
	var path = Path();
	path.lineTo(0,0);//第一个坐标点
	path.lineTo(0, size.height-30);//第二个点
	var firstControlPaint = Offset(size.width/2,size.height);//bazier 的 圆形切点
	var firstPoint = Offset(size.width,size.height-30);//右边第一个点
	path.quadraticBezierTo(firstControlPaint.dx,firstControlPaint.dy, firstPoint.dx,  firstPoint.dy);
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



