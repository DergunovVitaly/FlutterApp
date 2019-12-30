import 'package:flutter/material.dart';

//class MyBody extends StatelessWidget {
//  WidgetBuilder(BuildContext context) {
//    return new Center(child: new Column(
//      children: [
//        new Text('Hello world'),
//        new FlatButton(onPressed: (){},
//            child: Text('open'),
//          color: Colors.red,
//          textColor: Colors.white,
//        )
//      ],
//    ));
//  }
//
//}

void main() {
  runApp(
    Center( // виджет, который выравнивает содержимое по центру
      child: Text(
        'Hello, World!',
        textDirection: TextDirection.ltr,
      ),
    ),
  );
}