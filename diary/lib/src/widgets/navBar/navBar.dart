import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  Widget build(context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      alignment: Alignment.center,
      child: Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: <Widget>[
          buildTitle(),
          buildAppBarIcon(),
        ],
      ),
      margin: EdgeInsets.only(left: 35.0, right: 35.0, top: 75.0),
    );
  }

  Widget buildTitle() {
    return Text(
        'Diário',
        style: TextStyle(
        color: Color.fromRGBO(118, 93, 255, 1),
        fontSize: 35,
        fontFamily: 'Gilroy',
        fontWeight: FontWeight.w800,
        wordSpacing: 1.6,
      ),
    );
  }

  Widget buildAppBarIcon() {
    //TODO: Improve borders and hover
    return FlatButton(
      onPressed: () { print('pressed'); },
      child: Tab(
        icon: new Image.asset('assets/images/addIcon2.png', height: 45.0, width: 45.0,),
      ),
    );
  }
}