import 'package:flutter/material.dart';
import '../widgets/diaryItem/diaryItem.dart';

class HomeScreen extends StatelessWidget {
  Widget build(context) {

    return ClipPath(
      child: 
      Container(
          color: Color.fromRGBO(248, 248, 248, 1),
          margin: EdgeInsets.only(top: 20.0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              DiaryItem(),
              DiaryItem(),
            ],
          ),
        ),
    );
  }
}

class backGroundClipper extends CustomClipper<Path>{

  @override
  Path getClip(Size size) {
    Path p = Path();

    p.moveTo(size.width / 2, size.height / 2);
    p.quadraticBezierTo(size.width / 2, 0, size.width / 2, 0);


    return p;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}