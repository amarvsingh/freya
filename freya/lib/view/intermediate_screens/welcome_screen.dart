import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:freya/services/routing_service.dart';
import 'package:freya/view/colors_reservoir.dart';

class WelcomeScreen extends StatefulWidget{
  @override
  WelcomeScreenState createState() => WelcomeScreenState();

}

class WelcomeScreenState extends State<WelcomeScreen> with TickerProviderStateMixin{

  @override
  void initState() {
    // TODO: implement initState
    //Calling method to auto switch page
    navigateToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: AnimatedBackground(behaviour: RandomParticleBehaviour(
            options: ParticleOptions(
            baseColor: ColorsReservoir().pinkCustom,
            particleCount: 30,
          )
        ),
          vsync: this,
          child:Center(
            child: Text("Hi! Welcome to Freya!",style:TextStyle(fontSize:30,
                color: ColorsReservoir().pinkCustom,
                fontWeight:FontWeight.w500,fontStyle:FontStyle.italic),),
          ),)
      ),
    );
  }

  //Methood to Navigate to Home Page
  Future<void> navigateToHome() async {
    await Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(context, RoutingService().toHomeScreen);
    });
  }

}

