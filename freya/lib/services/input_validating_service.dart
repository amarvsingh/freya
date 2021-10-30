import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freya/view/colors_reservoir.dart';

class InputValidatingService {
  //Declaring method required to validate the inputs of the User throughout the Modules

  //Validation for Login using Email and Password
  bool isValidEmailPasswordLoginInputs(String email, String password) {
    if (email.isNotEmpty && password.isNotEmpty) {
      //If both email and password are not empty
      if (RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(email)) {
        //If email pattern is correct
        if (password.length >= 8) {
          //If password length is more than 8
          return true;
        } else {
          Fluttertoast.showToast(
            msg: "The password should be aatleast 8 characters.",
            backgroundColor: ColorsReservoir().lightPinkCustom,
            textColor: Colors.black);
          return false;
        }
      } else {
        Fluttertoast.showToast(
          msg: "Please enter a valid email address.",
          backgroundColor: ColorsReservoir().lightPinkCustom,
          textColor: Colors.black);
        return false;
      }
    } else {
      Fluttertoast.showToast(
        msg: "Please fill all the fields.",
        backgroundColor: ColorsReservoir().lightPinkCustom,
        textColor: Colors.black);
          return false;
    }
  }
}
