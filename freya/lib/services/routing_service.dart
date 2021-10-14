import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freya/components/authentication/login_screen.dart';

class RoutingService extends Route {
  Route homeToLogin =
      MaterialPageRoute(builder: (BuildContext context) => LoginScreen());
}
