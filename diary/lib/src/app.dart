import 'package:flutter/material.dart';
import 'widgets/navBar/navBar.dart';
import 'screens/homeScreen.dart';

class App extends StatelessWidget {
  Widget build(context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            elevation: 0.0,
            flexibleSpace: NavBar(),
            centerTitle: false,
            backgroundColor: Colors.white,
          ),
        ),
        backgroundColor: Colors.white,
        body: HomeScreen(),
      ),
    );
  }
}