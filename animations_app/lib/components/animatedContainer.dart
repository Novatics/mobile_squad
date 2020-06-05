import 'package:flutter/material.dart';

class AnimationContainerExample extends StatefulWidget {
  AnimationContainerExample({ Key key }) : super(key : key);

  @override
  AnimatedWidget createState() => AnimatedWidget();
}

class AnimatedWidget extends State<AnimationContainerExample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? 150.0 : 50.0,
          height: selected ? 150.0 : 50.0,
          color: Colors.green,
          duration: Duration(seconds: 3),
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );
  }
}
