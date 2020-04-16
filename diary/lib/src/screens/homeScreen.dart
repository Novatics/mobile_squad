import 'package:flutter/material.dart';
import '../widgets/diaryItem/diaryItem.dart';

class HomeScreen extends StatelessWidget {
  Widget build(context) {

    return 
      Container(
          margin: EdgeInsets.only(top: 20.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Container(margin: EdgeInsets.only(top: 15.0)),
              DiaryItem(),
              DiaryItem(),
            ],
          ),
          decoration: BoxDecoration(
            color: Color.fromRGBO(248, 248, 248, 1),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(200.0), topRight: Radius.circular(200.0) )
        ),
    );
  }
}
