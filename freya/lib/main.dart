import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:freya/view/colors_reservoir.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  //Variable to Control UI elements
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MediaQuery(
        data: new MediaQueryData(),
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Material(
                child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Container(child: new StretchedSemiCircle(1, 1)),
                                Container(child: new SemiCircle(1, 1)),
                                Opacity(
                                  opacity: 1,
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    margin: EdgeInsets.fromLTRB(
                                        0,
                                        MediaQuery.of(context).size.width / 2,
                                        0,
                                        0),
                                    child: Card(
                                      color: ColorsReservoir().lightPinkCustom,
                                      elevation: 20,
                                      shadowColor: Colors.black,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Container(
                                        padding: EdgeInsets.all(2),
                                        child: Card(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          color: Colors.white,
                                          child: Container(
                                            padding: EdgeInsets.all(25),
                                            width: double.infinity,
                                            child: Column(
                                              children: <Widget>[
                                                TextFormField(
                                                  cursorColor: Colors.black,
                                                  decoration: InputDecoration(
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: Colors.black,
                                                                width: 2.0)),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: Colors.black,
                                                                width: 2.0)),
                                                    labelStyle: TextStyle(
                                                        color: Colors.black),
                                                    hoverColor: Colors.black,
                                                    focusColor: Colors.black,
                                                    labelText: "Email",
                                                    fillColor: Colors.black,
                                                    border: OutlineInputBorder(),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                ),
                                                TextFormField(
                                                  cursorColor: Colors.black,
                                                  obscureText: !showPassword,
                                                  decoration: InputDecoration(
                                                    suffixIcon: GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          if (showPassword) {
                                                            showPassword = false;
                                                            
                                                          } else {
                                                            showPassword = true;
                                                          }
                                                        });
                                                      },
                                                      child: showPassword == false
                                                          ? Icon(
                                                              Icons
                                                                  .visibility_off_outlined,
                                                              color: Colors.black,
                                                            )
                                                          : Icon(
                                                              Icons
                                                                  .visibility_outlined,
                                                              color: Colors.black,
                                                            ),
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: Colors.black,
                                                                width: 2.0)),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderSide: BorderSide(
                                                                color: Colors.black,
                                                                width: 2.0)),
                                                    labelStyle: TextStyle(
                                                        color: Colors.black),
                                                    hoverColor: Colors.black,
                                                    focusColor: Colors.black,
                                                    labelText: "Password",
                                                    fillColor: Colors.black,
                                                    border: OutlineInputBorder(),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              22.5),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black,
                                                          blurRadius: 1.0,
                                                          spreadRadius: 1.0,
                                                          offset: Offset(
                                                            2.0, // Move to right 10  horizontally
                                                            2.0, // Move to bottom 10 Vertically
                                                          ),
                                                        )
                                                      ]),
                                                  child: AnimatedButton(
                                                    onPress: () {},
                                                    height: 45,
                                                    width: 120,
                                                    text: 'Login',
                                                    isReverse: true,
                                                    textStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18),
                                                    selectedBackgroundColor:
                                                        ColorsReservoir()
                                                            .lightPinkCustom,
                                                    selectedTextColor: Colors.black,
                                                    transitionType: TransitionType
                                                        .LEFT_TOP_ROUNDER,
                                                    backgroundColor: Colors.white,
                                                    borderColor: Colors.white,
                                                    selectedText: "On it!",
                                                    borderRadius: 50,
                                                    borderWidth: 2,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
