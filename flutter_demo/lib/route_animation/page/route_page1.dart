import 'package:flutter/material.dart';
import 'route_page2.dart';
import '../../route_animation/custom_router.dart';

class route_page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
	    backgroundColor: Colors.greenAccent,
	    appBar: AppBar(
		    title: Text('Route_page1',style: TextStyle(fontSize: 36.0),),
	      elevation: 0.0,
	    ),
	    body: Center(
		    child: MaterialButton(
			    child:
			    Icon(Icons.navigate_next,color:Colors.white,size: 60.0,),
			    onPressed: (){
			    	Navigator.of(context).push(CustomeRouter( route_page2()));
			    },
		    )


	    ),
	    
	    
    );
  }
}
