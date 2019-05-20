import 'package:flutter/material.dart';


class draggable_demo extends StatefulWidget {
  @override
  _draggable_demoState createState() => _draggable_demoState();
}

class _draggable_demoState extends State<draggable_demo> {
  Color _draggable_color = Colors.amberAccent;
  
  @override
  Widget build(BuildContext context) {
	return Scaffold(
	  body: Stack(
		children: <Widget>[
		  draggable_widget(
			offset: Offset(80.0,80.0),
			widget_Color: Colors.tealAccent,
		  ),
		  draggable_widget(
			widget_Color: Colors.pinkAccent,
			offset: Offset(180.0,80.0),
		  ),
		  Center(
			child: DragTarget(
				onAccept: (Color color){
				  _draggable_color = color;
				},
				builder: (context,candidateData,rejectedData){
				  return Container(
					width: 200.0,
					height: 200.0,
					color: _draggable_color,
				  );
				}
			),
		  )
		],
	  ),
	);
  }
}



class draggable_widget extends StatefulWidget {
  
  final Offset offset;
  final Color widget_Color;
  const draggable_widget({Key key,this.offset,this.widget_Color}): super(key:key);
  @override
  _draggable_widgetState createState() => _draggable_widgetState();
}

class _draggable_widgetState extends State<draggable_widget> {
  
  Offset offset = Offset(0.0,0.0);
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    offset = widget.offset;
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Positioned(
		  left: offset.dx,
		  top: offset.dy,
		  child: Draggable(
			data: widget.widget_Color,
			  child: Container(
				width: 100,
				height: 100,
				color: widget.widget_Color,
			  ),
			  feedback:
		  		Container(
				  width: 100,
				  height: 100,
				  color: widget.widget_Color.withOpacity(0.8),
				),
			onDraggableCanceled: (Velocity v,Offset of){
			    setState(() {
			      this.offset = of;
			    });
			},
		  ),
		
	  );
  }
}





