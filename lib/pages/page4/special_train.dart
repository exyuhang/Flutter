import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SpecialTrain extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SpecialTrainState();
  }

}

class SpecialTrainState extends State<SpecialTrain>{
  List<String> _listdata =["轮播", "三级栏目", "小图列表", "小图列表", "小图列表", "大图列表", "横向列表"];
  List<String> _threecolumndata =["订阅", "推荐", "阳光号", "视频", "订阅", "推荐", "阳光号", "视频", "订阅", "推荐", "阳光号", "视频"];
  List<String> _swiperDataList =[
    "https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3714291448,4267377488&fm=15&gp=0.jpg",
    "https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=942397193,187679768&fm=26&gp=0.jpg",
    "https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3475253188,655549065&fm=26&gp=0.jpg"];

  Widget getListWidget(int index){
    print(_listdata[index]);
    if(_listdata[index] == "轮播"){
      return new Container(
        height: 218,
        margin: EdgeInsets.only(left: 15, right: 15),
        child: Swiper(
          loop: true,
          outer: false,
          autoplay: true,
          itemBuilder: (c, i) {
            if(_swiperDataList!=null){
              return new Stack(
                children: <Widget>[
                  CachedNetworkImage(
                    height: 218,
                    fit: BoxFit.cover,
                    imageUrl: "${_swiperDataList[i]}",
                    placeholder: (context, url) => new CircularProgressIndicator(),
                    errorWidget: (context, url, error) => new Icon(Icons.error),
                  ),
                  new Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 20,right: 20,bottom: 34),
                    child: new Flex(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        new Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 30,
                          height: 16,
                          decoration: new BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                          ),
                          child: new Center(
                            child: new Text("视频", style: new TextStyle(color: Colors.white, fontSize: 10),),
                          ),
                        ),
                        new Expanded(child: new Text('''拉圾分类后去哪了探访北京鲁家山''', style: new TextStyle(color: Colors.white, fontSize: 18,), overflow: TextOverflow.ellipsis,))
                      ],
                    ),)
                ],
              );
            }
          },
          pagination: new SwiperPagination(margin: new EdgeInsets.all(5.0)),
          itemCount: _swiperDataList == null ? 0 : _swiperDataList.length,
        ),
      );
    }
          if(_listdata[index] == "三级栏目"){
            return new Container(
              height: 23,
              margin: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
              child: ListView.builder(
                  itemCount: _threecolumndata.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return new Container(
                      height: 23,
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.only(right: 14, left: 14),
                      decoration: new BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.all(Radius.circular(11))
                      ),
                      child: new Center(
                        child: new Text(_threecolumndata[index], style: new TextStyle(color: Colors.black87, fontSize: 12),),
                      ),
                    );
                  }),
            );
          }
          if(_listdata[index] == "小图列表"){
            return new Container(
              height: 100,
              margin: EdgeInsets.only(left: 15, right: 15),
              child: new Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  new Center(
                    child: new Flex(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        new SizedBox(
                          width: 110,
                          height: 70,
                          child: new Image.network("https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1843135306,2041174065&fm=26&gp=0.jpg", fit: BoxFit.cover,),
                        ),
                        new Expanded(child: new Container(
                          margin: EdgeInsets.only(left: 18),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("深圳市公安局龙岗分局反诈讲师团苦口婆心反复讲", style: new TextStyle(color: Colors.black87, fontSize: 17),maxLines: 2,),
                              new Text("深圳晚报  06-06 10:45", style: new TextStyle(color: Colors.black12, fontSize: 12),maxLines: 1)
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: 15),
                    child: new Divider(
                      color: Colors.black12,
                      height: 0.5,
                    ),
                  )
                ],
              )
            );
          }
          if(_listdata[index] == "大图列表"){
            return new Container(
              margin: EdgeInsets.only(left: 15, right: 15),
              child:new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(top: 20),
                    child: new Text("深圳新区与香港特别行政区现高铁直通", style: new TextStyle(color: Colors.black87, fontSize: 19),),
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: 15),
                    height: 145,
                    width: double.infinity,
                    child: new Image.network("https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1412368411,1380775423&fm=26&gp=0.jpg", fit: BoxFit.cover,),
                  ),
                  new Container(
                    margin: EdgeInsets.only(top: 15, bottom: 15),
                    child: new Text("i深圳  06-06 10:45", style: new TextStyle(color: Colors.black12, fontSize: 12),maxLines: 1),
                  )
                ],
              ),
            );
          }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView.builder(
        itemCount: _listdata == null ? 0:_listdata.length,
        itemBuilder: (context, index){
          return getListWidget(index);
      },
    );
  }

}