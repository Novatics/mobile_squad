import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Teams Status'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[Header(), MyStatus(), Dashborad(), Timeline()],
      ),
    ));
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 27, left: 32, right: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Team’s Status',
            style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 28,
                letterSpacing: 1.4,
                fontWeight: FontWeight.w900),
          ),
          Tab(
            icon: Container(
              child: Image(
                image: AssetImage('assets/group-2.png'),
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MyStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 27, left: 32, right: 32),
      child: Column(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 36)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Workspace',
                  style: GoogleFonts.lato(color: Colors.black, fontSize: 16)),
              Container(
                  color: Color.fromRGBO(242, 242, 242, 1),
                  width: 218,
                  height: 43,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 19),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('Novatics',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 14,
                                letterSpacing: 0.7,
                                fontWeight: FontWeight.bold)),
                        Image(
                          image: AssetImage('assets/icon-path.png'),
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ))
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 36)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Workspace',
                  style: GoogleFonts.lato(color: Colors.black, fontSize: 16)),
              Container(
                  color: Color.fromRGBO(242, 242, 242, 1),
                  width: 218,
                  height: 43,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 19),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('🏡 Trabalho remoto',
                            style: GoogleFonts.lato(
                                color: Colors.black,
                                fontSize: 14,
                                letterSpacing: 0.7,
                                fontWeight: FontWeight.bold)),
                        Image(
                          image: AssetImage('assets/icon-path.png'),
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12),
      child: Container(
        width: 200,
        height: 10,
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromRGBO(46, 182, 125, 1),
          ),
      ),
    );
  }
}

class Dashborad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 36),
      child: Container(
        height: 194,
        color: Color.fromRGBO(242, 242, 242, 1),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[Card(), Card(), Card(), Card()],
        ),
      ),
    );
  }
}

class Timeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
