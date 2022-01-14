import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freya/components/authentication/login_screen.dart';
import 'package:freya/components/home/home_screen.dart';
import 'package:freya/view/intermediate_screens/welcome_screen.dart';

class RoutingService extends Route {
  //All Routes to be declared here
  Route toLogin = MaterialPageRoute(builder: (BuildContext context) => LoginScreen());
  Route toHomeScreen = MaterialPageRoute(builder: (BuildContext context) => HomeScreen());
  Route toWelcomeScreen = MaterialPageRoute(builder: (BuildContext context) => WelcomeScreen());
}
