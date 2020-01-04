import 'package:flutter/material.dart';
import 'animation/open_animation.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Google翻译",
      theme: new ThemeData(
        primaryColor: Colors.blue[600],
        primarySwatch: Colors.blue,
      ),
      home: new OpemAmimation(),
    );
  }
}