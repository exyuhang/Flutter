import 'package:flutter/material.dart';

class ExpressTrain extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[
        new Positioned(
          width: 200,
          height: 200,
          child: new Image.network("https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3714291448,4267377488&fm=15&gp=0.jpg", fit: BoxFit.cover,),
        ),
        new Positioned(
          top: 100,
          left: 100,
          width: 200,
          height: 200,
          child: new Image.network("https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=942397193,187679768&fm=26&gp=0.jpg", fit: BoxFit.cover,),
        ),
        new Positioned(
          top: 250,
          left: 250,
          width: 200,
          height: 200,
          child: new Image.network("https://dss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3475253188,655549065&fm=26&gp=0.jpg", fit: BoxFit.cover,),
        ),
        new Positioned(
          top: 250,
          right: 200,
          width: 200,
          height: 200,
          child: new Image.network("https://dss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=336036592,2229299972&fm=26&gp=0.jpg", fit: BoxFit.cover,),
        ),
        new Positioned(
          left: 250,
          width: 200,
          height: 200,
          child: new Image.network("https://dss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=1412368411,1380775423&fm=26&gp=0.jpg", fit: BoxFit.cover,),
        ),

      ],
    );
  }

}