import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:freya/services/authentication_service.dart';
import 'package:freya/services/input_validating_service.dart';
import 'package:freya/services/routing_service.dart';
import 'package:freya/services/toast_service.dart';
import 'package:freya/view/colors_reservoir.dart';
import 'package:loader_overlay/loader_overlay.dart';

import '../../view/shapes/semicircle.dart';
import '../../view/shapes/stretched_semicircle.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoaderOverlay(
            useDefaultLoading: false,
            overlayWidget: Center(
              child: SpinKitCubeGrid(
                color: ColorsReservoir().pinkCustom,
                size: 50.0,
              ),
            ),
            child: LoginScreenHome()));
  }
}

class LoginScreenHome extends StatefulWidget {
  @override
  LoginScreenHomeState createState() => LoginScreenHomeState();
}

class LoginScreenHomeState extends State<LoginScreenHome> {
  //Variable to Control UI elements
  bool showPassword = false;

  //Variabless to save User Inputs
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MediaQuery(
        data: new MediaQueryData(),
        child: MaterialApp(
            color: Colors.white,
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: Material(
                child: SingleChildScrollView(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Container(
                                      child: new StretchedSemiCircle(1, 1)),
                                  Container(child: new SemiCircle(1, 1)),
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.only(top: 35),
                                      child: Image.asset(
                                        "assets/images/Freya.png",
                                      ),
                                    ),
                                  ),
                                  Opacity(
                                    opacity: 1,
                                    child: Container(
                                      padding: EdgeInsets.all(20),
                                      margin: EdgeInsets.fromLTRB(
                                          0,
                                          MediaQuery.of(context).size.width / 2,
                                          0,
                                          0),
                                      child: Container(
                                        padding: EdgeInsets.all(1),
                                        child: Card(
                                          elevation: 20,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          color: Colors.white,
                                          child: Container(
                                            padding: EdgeInsets.all(25),
                                            width: double.infinity,
                                            child: Column(
                                              children: <Widget>[
                                                TextFormField(
                                                  controller: emailController,
                                                  cursorColor: Colors.black,
                                                  decoration: InputDecoration(
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .black,
                                                                    width:
                                                                        2.0)),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .black,
                                                                    width:
                                                                        2.0)),
                                                    labelStyle: TextStyle(
                                                        color: Colors.black),
                                                    hoverColor: Colors.black,
                                                    focusColor: Colors.black,
                                                    labelText: "Email",
                                                    fillColor: Colors.black,
                                                    border:
                                                        OutlineInputBorder(),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 30,
                                                ),
                                                TextFormField(
                                                  controller:
                                                      passwordController,
                                                  cursorColor: Colors.black,
                                                  obscureText: !showPassword,
                                                  decoration: InputDecoration(
                                                    suffixIcon: GestureDetector(
                                                      onTap: () {
                                                        setState(() {
                                                          if (showPassword) {
                                                            showPassword =
                                                                false;
                                                          } else {
                                                            showPassword = true;
                                                          }
                                                        });
                                                      },
                                                      child: showPassword ==
                                                              false
                                                          ? Icon(
                                                              Icons
                                                                  .visibility_off_outlined,
                                                              color:
                                                                  Colors.black,
                                                            )
                                                          : Icon(
                                                              Icons
                                                                  .visibility_outlined,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                    ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .black,
                                                                    width:
                                                                        2.0)),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                                    color: Colors
                                                                        .black,
                                                                    width:
                                                                        2.0)),
                                                    labelStyle: TextStyle(
                                                        color: Colors.black),
                                                    hoverColor: Colors.black,
                                                    focusColor: Colors.black,
                                                    labelText: "Password",
                                                    fillColor: Colors.black,
                                                    border:
                                                        OutlineInputBorder(),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                ),
                                                GestureDetector(
                                                  onTap: () {},
                                                  child: Text(
                                                    "Forgot Password?",
                                                    style: TextStyle(
                                                      color: ColorsReservoir()
                                                          .pinkCustom,
                                                      fontSize: 15,
                                                    ),
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
                                                  ),
                                                  child: AnimatedButton(
                                                    onPress: () {
                                                      if (InputValidatingService()
                                                          .isValidEmailPasswordLoginInputs(
                                                              emailController
                                                                  .text,
                                                              passwordController
                                                                  .text)) {
                                                        context.loaderOverlay
                                                            .show();
                                                      }
                                                    },
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
                                                    selectedTextColor:
                                                        Colors.black,
                                                    transitionType:
                                                        TransitionType
                                                            .LEFT_TOP_ROUNDER,
                                                    backgroundColor:
                                                        Colors.white,
                                                    borderColor: Colors.black,
                                                    selectedText: "On it!",
                                                    borderRadius: 50,
                                                    borderWidth: 2,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      Text(
                                                        "Don't have an account?",
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 15,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 5,
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {},
                                                        child: Text(
                                                          "Create one!",
                                                          style: TextStyle(
                                                            color:
                                                                ColorsReservoir()
                                                                    .pinkCustom,
                                                            fontSize: 15,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              22.5),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Icon(
                                                          FontAwesomeIcons
                                                              .google,
                                                          color:
                                                              ColorsReservoir()
                                                                  .pinkCustom,
                                                          size: 30,
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        AnimatedButton(
                                                          onPress: () async {
                                                            //Logic to implement Google SignIn
                                                            await AuthenticationService()
                                                                .googleSignin();
                                                            ToastService()
                                                                .showToast(
                                                                    "Google SignIn Complete!");
                                                            Navigator.pushReplacement(
                                                                context,
                                                                RoutingService()
                                                                    .toWelcomeScreen);
                                                          },
                                                          height: 45,
                                                          width: 120,
                                                          text: 'Sign In',
                                                          isReverse: true,
                                                          textStyle: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 18),
                                                          selectedBackgroundColor:
                                                              ColorsReservoir()
                                                                  .lightPinkCustom,
                                                          selectedTextColor:
                                                              Colors.black,
                                                          transitionType:
                                                              TransitionType
                                                                  .LEFT_TOP_ROUNDER,
                                                          backgroundColor:
                                                              Colors.white,
                                                          borderColor:
                                                              Colors.black,
                                                          selectedText:
                                                              "On it!",
                                                          borderRadius: 50,
                                                          borderWidth: 2,
                                                        ),
                                                      ],
                                                    )),
                                              ],
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
              ),
            )));
  }
}
