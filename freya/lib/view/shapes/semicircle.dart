// ignore_for_file: unnecessary_statements

import 'package:flutter/material.dart';
import 'dart:math' show pi;

import 'package:freya/view/colors_reservoir.dart';

// ignore: must_be_immutable
class SemiCircle extends StatelessWidget {
  double diameter1;
  double diameter2;
  SemiCircle(double diameter1, double diameter2) {
    this.diameter1;
    this.diameter2;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (CustomPaint(
      painter: InvertSemiCircle(),
      size: Size(MediaQuery.of(context).size.height,
          MediaQuery.of(context).size.width),
    ));
  }
}

class InvertSemiCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = ColorsReservoir().lightPinkCustom;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.width / 2, 0),
        height: size.height/2,
        width: size.width,
      ),
      -pi,
      -pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
