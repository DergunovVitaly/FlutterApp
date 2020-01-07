import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build ( BuildContext context ) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GestureDetector Example",
      home: new HomePage() ,
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {

  var backgroundColor = Colors.blue;

  void tapUp(TapUpDetails details) {
    setState(() {
      backgroundColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget redSection = new GestureDetector(
      onTapUp: tapUp,
        child: new Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: backgroundColor,
           child: new Center(
             child: new Text(' "Hey there" '),
           ),
     ),
    );


    return new Scaffold(
      body: new Padding(
        padding: new EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
        child: redSection,
      ),
    );
  }
}