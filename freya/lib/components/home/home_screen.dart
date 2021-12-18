import 'package:flutter/material.dart';
import 'package:freya/view/colors_reservoir.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Material(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white,
                  ColorsReservoir().lightPinkCustom,
                  ColorsReservoir().pinkCustom
                ], 
              )
            ),
          )
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}
