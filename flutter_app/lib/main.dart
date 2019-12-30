import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: new AppBar(
          title: new Text("Navigation title"),
        ),
        body: new Text("Earth"),
      )
  )
  );
}