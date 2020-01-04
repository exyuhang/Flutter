import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../item/gridview_item.dart';


class HomePage3 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HomePage3State();
}

class HomePage3State extends State<HomePage3>{
  List<String> _listData = [];

  void initData(){
    for(int i =0; i< 50; i++){
      _listData.add("电脑");
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    initData();
    return new GridView.builder(
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (context, index){
        return new GridViewItem();
      },
      itemCount: _listData.length,
      );
  }

}