import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:freya/services/routing_service.dart';
import 'package:freya/view/colors_reservoir.dart';
import 'package:loader_overlay/loader_overlay.dart';

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
        home: LoaderOverlay(
            useDefaultLoading: false,
            overlayWidget: Center(
              child: SpinKitCubeGrid(
                color: ColorsReservoir().pinkCustom,
                size: 50.0,
              ),
            ),
            child: Home()));
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  void initState() {
    startAnimation(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        ),
    ));
    // TODO: implement build
  }

  Future<void> startAnimation(BuildContext context) async {
    context.loaderOverlay.show();
    await Future.delayed(const Duration(seconds: 4), () {
      context.loaderOverlay.hide();
      Navigator.pushReplacement(context, RoutingService().homeToLogin);
    });
  }
}
