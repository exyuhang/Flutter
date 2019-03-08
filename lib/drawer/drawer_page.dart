import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => new _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
              accountName: new Text("宇航制造"),
              accountEmail: new Text("www.1197119551@qq.com"),
              decoration: new BoxDecoration(
                color: Colors.blue
              ),
            currentAccountPicture: new Container(
              width: 50,
              height: 50,
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                image: new DecorationImage(image: new NetworkImage("https://ss0.baidu.com/73t1bjeh1BF3odCf/it/u=728747822,829456072&fm=85&s=DFC02CC4AE6920074D27242103007012"),fit: BoxFit.cover)
              ),
            )
          ),
          new ListTile(
            leading: new Icon(CupertinoIcons.home ,color: Colors.blue[600],),
            title: new Text("首页",style: new TextStyle(color: Colors.blue[600]),),
            onTap: (){},
          ),
          new Divider(),
          new ListTile(
            leading: new Icon(CupertinoIcons.collections),
            title: new Text("翻译收藏夹",style: new TextStyle(color: Colors.black),),
            onTap: (){},
          ),
          new Divider(),
          new ListTile(
            leading: new Icon(CupertinoIcons.mic_off),
            title: new Text("离线翻译",style: new TextStyle(color: Colors.black),),
            onTap: (){},
          ),
          new Divider(),
          new ListTile(
            leading: new Icon(CupertinoIcons.settings),
            title: new Text("设置",style: new TextStyle(color: Colors.black),),
            onTap: (){},
          ),
          new Divider(),
        ],
      ),
    );
  }
}
