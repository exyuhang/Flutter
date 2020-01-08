import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../item/gridview_item.dart';
import 'package:fluttertoast/fluttertoast.dart';


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

  Future _openAlertDialog() async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false, //// user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('提示'),
          content: Text('是否购买?'),
          actions: <Widget>[
            FlatButton(
              child: Text('取消'),
              onPressed: () {
                Navigator.pop(context);
                Fluttertoast.showToast(msg: "取消购买");
              },
            ),
            FlatButton(
              child: Text('确认'),
              onPressed: () {
                Navigator.pop(context);
                Fluttertoast.showToast(msg: "购买成功");
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    initData();
    return new GridView.builder(
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (context, index){
        return new GestureDetector(
          onTap: (){
            _openAlertDialog();
          },
          child: new GridViewItem(),
        );
      },
      itemCount: _listData.length,
      );
  }

}