import 'package:flutter/material.dart';
import 'route_page1.dart';
import '../../route_animation/custom_router.dart';

class route_page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Route_page2',
          style: TextStyle(fontSize: 36.0),
        ),
        elevation: 0.0,
        automaticallyImplyLeading: false,
      ),
      body: Center(
          child: MaterialButton(
        child: Icon(
          Icons.navigate_before,
          color: Colors.white,
          size: 60.0,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      )),
    );
  }
}
