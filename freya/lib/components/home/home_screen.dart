import 'package:flutter/material.dart';
import 'package:freya/view/Widgets/popup_menu_home.dart';
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
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
        preferredSize: Size.fromHeight(120.0),
        child: AppBar(
          title: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50.0, bottom: 30),
              ),],
            ),
          ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: PopUpMenuHome(),
          ),],
        ),
      ),
        body:
        Container(
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
            child: Container(
              child: Center(
                child: Column(
                  children: <Widget>[
                  ],
                ),
              ),
            ),
        )
      ),
    );
  }
  @override
  void initState() {
    super.initState();
  }
}
