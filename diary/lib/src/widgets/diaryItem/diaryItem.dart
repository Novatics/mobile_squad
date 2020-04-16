import 'package:flutter/material.dart';

class DiaryItem extends StatelessWidget {
  Widget build(context) {

    return Container(
      width: 305.0,
      height: 169.0,
      margin: EdgeInsets.only(top: 15.0),
      padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 25.0, bottom: 25.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          buildItemTitle(),
          spacingBetweenElements(10.0),
          buildItemDescription(),
          spacingBetweenElements(15.0),
          buildItemGrade(),
        ],
      ),
      decoration: buildBoxDecoration(),
    );
  }


  BoxDecoration buildBoxDecoration() {
    return BoxDecoration(
        gradient: LinearGradient(
          stops: [0.02, 0.02],
          colors: [Color.fromRGBO(118, 93, 255, 1),Colors.white]
        ),
        borderRadius: BorderRadius.all(Radius.circular(18.0)),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(7, 66, 66, 0.05),
            blurRadius: 15.0,
            spreadRadius: 5.0,
            offset: Offset(
              10.0,
              10.0
            ),
          ),
        ],
    );
  }

  Widget buildItemTitle() {
    return Text('Segunda, 23 de Março',
      style: TextStyle(
        fontSize: 18.0,
        fontFamily: 'Gilroy',
        fontWeight: FontWeight.w800,
        wordSpacing: 1.6,
        color: Color.fromRGBO(67, 66, 66, 1),
      ),
    );
  }

  Widget buildItemDescription() {
    return Text('Desabafo breve, se não teriam três pontinhos',
      style: TextStyle(
        fontSize: 14.0,
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.w500,
        wordSpacing: 1.6,
        color: Color.fromRGBO(67, 66, 66, 0.7),
      ),
    );
  }

  Widget spacingBetweenElements(value) {
    return Container(margin: EdgeInsets.only(top: value));
  }

  Widget buildItemGrade() {
    return Row(
      children: <Widget>[
          ClipOval(
            child: Container(
              width: 35.0,
              height: 35.0,
              color: Color.fromRGBO(227, 199, 167, 1),
            ),
        ),
      ],
    );
  }
}