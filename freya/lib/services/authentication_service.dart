import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:freya/services/toast_service.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationService {
  //Declaring the method required by the Authentication module

  //Method to login the user successfully through email and password
  bool successfulLogin(String email, String password) {
    //
    return true;
  }

  //Method to login user using google signin
  Future<void> googleSignin() async {
    final googleSignIn = new GoogleSignIn();
    GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);
      await FirebaseAuth.instance.signInWithCredential(authCredential);
    } else {
      ToastService().showToast("Please Select an Account!");
    }
  }

  //Method to logout the user
  void logOut(BuildContext context) async {
    final FirebaseAuth authLogOut = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = new GoogleSignIn();
    await googleSignIn.signOut();
    await authLogOut.signOut();
  }
}
