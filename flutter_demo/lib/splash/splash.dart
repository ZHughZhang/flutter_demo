import 'package:flutter/material.dart';

class splash_animation extends StatefulWidget {
  @override
  _splash_animationState createState() => _splash_animationState();
}

class _splash_animationState extends State<splash_animation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 3000));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);

    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (contex) => MyHomePage()),
            (router) => router == null);
      }
    });

    _controller.forward(); //开始执行动画
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.network(
        'https://b-ssl.duitang.com/uploads/item/201902/28/20190228134843_zqmue.thumb.700_0.png',
        scale: 2.0,
        fit: BoxFit.cover,
      ),
    ); //过度动画组件
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: Container(
          child: Text('这是一个主页面'),
        ));
  }
}
