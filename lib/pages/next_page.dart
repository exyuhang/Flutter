import 'package:flutter/material.dart';
import '../drawer/drawer_page.dart';
import 'package:flutter/cupertino.dart';
import '../pages/home_page1.dart';
import '../pages/home_page2.dart';
import '../pages/home_page3.dart';
import '../pages/home_page4.dart';



class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => new _NextPageState();
}

class _NextPageState extends State<NextPage> {
  var tabIndex = 0;


  List<BottomNavigationBarItem> _listBottomNavigationBarItem () {
    List<BottomNavigationBarItem> listBottomNavigationBarItem = new List();
    listBottomNavigationBarItem.add(new BottomNavigationBarItem(icon: new Icon(Icons.translate, color: getTabStyle(0).color,),title: new Text("翻译",style: getTabStyle(0),)));
    listBottomNavigationBarItem.add(new BottomNavigationBarItem(icon: new Icon(Icons.movie,color: getTabStyle(1).color,),title: new Text("电影",style: getTabStyle(1),)));
    listBottomNavigationBarItem.add(new BottomNavigationBarItem(icon: new Icon(Icons.shop, color: getTabStyle(2).color,), title: Text("购物", style: getTabStyle(2),)));
    listBottomNavigationBarItem.add(new BottomNavigationBarItem(icon: new Icon(Icons.local_taxi, color: getTabStyle(3).color,), title: Text("滴滴", style: getTabStyle(3),)));
    return listBottomNavigationBarItem;
  }

  TextStyle getTabStyle(int curIndex){
    if(tabIndex == curIndex){
      return new TextStyle(color: Colors.blue[500]);
    }
    return new TextStyle(color: Colors.grey);
  }

  List<String> listPop = <String>["翻译","电影","购物","滴滴"];

  IndexedStack _indexedStack ;

  void initData(){
    _indexedStack = new IndexedStack(
      children: <Widget>[
        new HomePage1(),
        new HomePage2(),
        new HomePage3(),
        new HomePage4(),
      ],
      index: tabIndex,
    );
  }

  String appbar_title = "翻译";

  @override
  Widget build(BuildContext context) {
    initData();
    return new Container(
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text(appbar_title),
          elevation: 0.0,
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.translate),
                onPressed: (){
                  setState(() {
                  tabIndex = 0;
            });}),
            new IconButton(icon: new Icon(Icons.movie),
                onPressed: (){
                  setState(() {
                    tabIndex = 1;
                  });}),
            new PopupMenuButton(itemBuilder: (BuildContext context){
              return listPop.skip(2).map<PopupMenuItem<String>>((String popTitle){
                return new PopupMenuItem(
                    value: popTitle,
                    child: new Text(popTitle),
                );
              }).toList();
            },
            onSelected: (String popTitile){
              setState(() {
                if(popTitile == "翻译"){
                  setState(() {
                    tabIndex = 0;
                  });
                }
                if(popTitile == "电影"){
                  setState(() {
                    tabIndex = 1;
                  });
                }
                if(popTitile == "购物"){
                  setState(() {
                    tabIndex = 2;
                  });
                }
                if(popTitile == "滴滴"){
                  setState(() {
                    tabIndex = 3;
                  });
                }
              });
            },)
          ],
        ),
        body: _indexedStack,
        drawer: new DrawerPage(),
        bottomNavigationBar: new CupertinoTabBar(
            items: _listBottomNavigationBarItem(),
            onTap: (index){
              setState(() {
                if(index == 0){
                  appbar_title = "翻译";
                }
                if(index == 1){
                  appbar_title = "电影";
                }
                if(index == 2){
                  appbar_title = "购物";
                }
                if(index == 3){
                  appbar_title = "滴滴";
                }
                tabIndex = index;
              });
            },
        ),
      ),
    );
  }
}



