import 'package:flutter/material.dart';


class GridViewItem extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => new GridViewItemState();
}

class GridViewItemState extends State<GridViewItem>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Card(
      elevation: 10.0,
      shape: new RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      child: new Container(
        decoration: new BoxDecoration(
          image: new DecorationImage(image: new NetworkImage("https://dss0.baidu.com/73x1bjeh1BF3odCf/it/u=564841234,764664890&fm=85&s=B0B05F9502230D0914156C040300E052"), fit: BoxFit.cover)
        ),
        child: null
      ),
    );
  }

}