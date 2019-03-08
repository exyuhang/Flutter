import 'package:flutter/material.dart';
import '../pages/next_page.dart';

class OpemAmimation extends StatefulWidget {
  @override
  _OpemAmimationState createState() => new _OpemAmimationState();
}

class _OpemAmimationState extends State<OpemAmimation> with SingleTickerProviderStateMixin{
  Animation _animation;
  AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new AnimationController(
      duration: new Duration(
          seconds: 3
      ),
      vsync: this,
    );

    _animation = new Tween(
      begin: 0.0,
      end: 1.0
    ).animate(_controller);
    _animation.addStatusListener((status){
      if(status == AnimationStatus.completed){
        Navigator.pushAndRemoveUntil(context, new MaterialPageRoute(
            builder: (context){
              return new NextPage();
            }), (route) => route == null);
      }
    });
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new FadeTransition(
        opacity: _animation,
        child: new Image.network(
            "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2032522054,2558535012&fm=27&gp=0.jpg",
            fit: BoxFit.cover,
        ),
    );
  }
}
