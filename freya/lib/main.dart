import 'package:flutter/material.dart';

import 'view/shapes/semicircle.dart';
import 'view/shapes/stretched_semicircle.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (MediaQuery(
      data: new MediaQueryData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(  
          body:Material(
            child: Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      child: new StretchedSemiCircle(1,1)
                    ),
                    Container(
                      child: new SemiCircle(1,1)
                    ),
                  ],
                )
              ],),
            ),
          ),
        )
      )
    ));
  }
}
