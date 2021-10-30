import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freya/view/colors_reservoir.dart';

class ToastService extends Fluttertoast{

  void showToast(String message){
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: ColorsReservoir().lightPinkCustom,
      textColor: Colors.black);
  }
}