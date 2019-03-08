import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../bean/search_bean.dart';

class HomePage1 extends StatefulWidget {
  @override
  _HomePage1State createState() => new _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  String _english ="英文";
  String _chinese ="中文（简体）";
  Color _primaryColor = Colors.blue[600];
  List<SearchBean> _listSearch =[
    new SearchBean("drawer", "抽屉", true),
    new SearchBean("span", "跨度", false),
    new SearchBean("scale", "规模", false),
    new SearchBean("factor", "因子", true),
    new SearchBean("direction", "方向", true),
    new SearchBean("match", "比赛", false),
  ];

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Container(
          height: 55.0,
          decoration: new BoxDecoration(
              color: Colors.white,
              border: new Border(
                  bottom: BorderSide(width: 0.5,color: Colors.grey[500])
              )
          ),
          child: new Row(
            children: <Widget>[
              new Expanded(
                  child: new Material(
                    color: Colors.white,
                    child: InkWell(
                        onTap: (){},
                        child: new Container(
                          height: 55.0,
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Text(_english,style: new TextStyle(color: _primaryColor),),
                              new ImageIcon(new AssetImage("images/bottom.png"),color: _primaryColor,),
                            ],
                          ),
                        )
                    ),
                  )
              ),
              new Material(
                color: Colors.white,
                child: new IconButton(
                    icon: new Icon(Icons.compare_arrows,color: _primaryColor,),
                    onPressed: (){}),
              ),
              new Expanded(
                  child: new Material(
                    color: Colors.white,
                    child: InkWell(
                        onTap: (){},
                        child: new Container(
                          height: 55.0,
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Text(_chinese,style: new TextStyle(color: _primaryColor),),
                              new ImageIcon(new AssetImage("images/bottom.png"),color: _primaryColor,),
                            ],
                          ),
                        )
                    ),
                  )
              ),
            ],
          ),
        ),
        new Card(
          margin: EdgeInsets.all(0.0),
          child: new Container(
            height: 150.0,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Expanded(
                    child: new Container(
                      padding: EdgeInsets.only(
                        left: 18.0,
                        right: 18.0,
                        top: 2.0,
                        bottom: 20.0
                      ),
                      child: new TextField(
                        decoration: new InputDecoration(
                          border: InputBorder.none,
                          hintText: "点按即可输入文本",
                        ),
                        style: new TextStyle(
                            color: Colors.black,
                            fontSize: 25.0
                        ),
                        maxLines: 999,
                        cursorColor: Colors.green[500],
                        cursorWidth: 2.0,
                      ),
                    )
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new ActionButton(title: "相机",icon: Icons.camera_alt,),
                    new ActionButton(title: "手写",icon: CupertinoIcons.pen),
                    new ActionButton(title: "对话",icon: Icons.dialpad,),
                    new ActionButton(title: "语音",icon: Icons.keyboard_voice,),
                  ],
                )
              ],
            ),
          ),
        ),
        new Container(
          height: 10.0,
        ),
        new Expanded(child: ListView.builder(
            itemCount: _listSearch.length,
            itemBuilder: (context ,index){
              return new Container(
                padding: EdgeInsets.only(
                    bottom: 2.0,
                    right: 2.0,
                    left: 2.0
                ),
                child: new Card(
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.all(new Radius.circular(0.0))
                  ),
                  margin: EdgeInsets.only(
                    left: 8.0,
                    right: 8.0,
                  ),
                  child: new Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(
                      left: 15.0,
                    ),
                    height: 80.0,
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        _flexble(index),
                        new IconButton(
                            icon: new Icon(
                                _listSearch[index].isCollection ?
                                Icons.star : Icons.star_border,
                                size: 25.0,
                                color: _listSearch[index].isCollection
                                ? Colors.yellow[600] : Colors.grey[700],
                            ),
                            onPressed: (){})
                      ],
                    ),
                  ),
                ),
              );
            }))
      ],
    );
  }

  Widget _flexble(int index){
    return new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            new Text(_listSearch[index].title,style: Theme.of(context).textTheme.title,maxLines: 1,overflow: TextOverflow.ellipsis,),
            new Text(_listSearch[index].subTitle,style: Theme.of(context).textTheme.subhead,maxLines: 1,overflow: TextOverflow.ellipsis),
          ],
        );
  }
}

class ActionButton extends StatefulWidget {
  final String title;
  final IconData icon;
  final AssetImage assetImage;

  ActionButton({Key key,@required this.title, this.icon, this.assetImage}) : super(key : key);

  @override
  _ActionButtonState createState() => new _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    return new FlatButton(
        onPressed: (){},
        padding: EdgeInsets.only(
          top: 2.0,
          bottom: 2.0
        ),
        child: new Column(
          children: <Widget>[
            _displayIcon(),
            new Text(widget.title,style: new TextStyle(color: Colors.black,fontSize: 15.0),),
          ],
        ),
    );
  }
  Widget _displayIcon(){
    if(widget.icon!=null){
      return Icon(widget.icon,color: Color(0xff3f51b5),size: 25.0,);
    }else if(widget.assetImage != null){
      return ImageIcon(
          widget.assetImage,
          color: Color(0xff3f51b5),
          size: 25.0
      );
    }else{
      return Container();
    }
  }
}

