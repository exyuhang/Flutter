import 'package:flutter/material.dart';
import '../drawer/drawer_page.dart';
import 'package:flutter/cupertino.dart';
import '../pages/home_page1.dart';
import '../pages/home_page2.dart';



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
    return listBottomNavigationBarItem;
  }

  TextStyle getTabStyle(int curIndex){
    if(tabIndex == curIndex){
      return new TextStyle(color: Colors.blue[500]);
    }
    return new TextStyle(color: Colors.grey);
  }

  IndexedStack _indexedStack ;

  void initData(){
    _indexedStack = new IndexedStack(
      children: <Widget>[
        new HomePage1(),
        new HomePage2(),
      ],
      index: tabIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    initData();
    return new Container(
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Google翻译（宇航制作）"),
          elevation: 0.0,
        ),
        body: _indexedStack,
        drawer: new DrawerPage(),
        bottomNavigationBar: new CupertinoTabBar(
            items: _listBottomNavigationBarItem(),
            onTap: (index){
              setState(() {
                tabIndex = index;
              });
            },
        ),
      ),
    );
  }
}



