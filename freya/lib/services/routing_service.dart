import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freya/components/authentication/login_screen.dart';
import 'package:freya/components/home/home_screen.dart';
import 'package:freya/main.dart';

class RoutingService extends Route {
  Route homeToLogin = MaterialPageRoute(builder: (BuildContext context) => LoginScreen());
  Route toHomeScreen = MaterialPageRoute(builder: (BuildContext context) => HomeScreen());

}
