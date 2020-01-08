import 'package:flutter/material.dart';
import '../pages/page4/express_train.dart';
import '../pages/page4/special_train.dart';

class HomePage4 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomePage4State();
  }

}

class HomePage4State extends State<HomePage4>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new AppBar(
            flexibleSpace: SafeArea(
              child: new TabBar(tabs:<Widget>[
                new Tab(text: "快车",),
                new Tab(text: "专车",),
                new Tab(text: "顺风车",),
              ],
              indicatorColor: Colors.grey,),
            ),
          ),
          body: new TabBarView(children: <Widget>[
            new ExpressTrain(),
            new SpecialTrain(),
            new Text("顺风车"),
          ]),
        ));
  }
}