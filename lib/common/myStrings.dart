import 'dart:math';

import 'package:flutter/material.dart';

/// Strings class to define the required strings
class MyStrings {
  static const String splashNameNavana = "navana";
  static const String splashNameAir = " air";
  static const String startBookingButton = "START BOOKING";
  static const String createAccount = "Create \nan account";
  static const String signUp = "SIGN UP";
  static const String haveAnAccount = "Already have an account?";
  static const String signin = "Sign In";
  static const String skipNow = "Skip for Now";
  static const String dontHaveAccount = "Don't have an account?";
  static const String signup = "Sign Up";
  static const String forgotPasswrd = "Forgot Password?";
  static const String signIn = "SIGN IN";
  static const String signInWith = "Sign In with";
  static const String fbImage = 'https://facebookbrand.com/wp-content/uploads/2019/04/f_logo_RGB-Hex-Blue_512.png?w=512&h=512';
  static const String googleImage = "https://www.freepnglogos.com/uploads/google-logo-png/google-logo-png-webinar-optimizing-for-success-google-business-webinar-13.png";

  static const String emailPattern = r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  static const String passwordPattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{7,}$';
}

String validateEmail(String value){
  Pattern pattern = MyStrings.emailPattern;
  RegExp regex = new RegExp(pattern);
  try{
    if (value.isEmpty) {
      return 'Please enter your email address';
    }
    if (!regex.hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }catch(exception){
    print(e);
  }
}

String validatePassword(String value){
  Pattern pattern = MyStrings.passwordPattern;
  RegExp regex = new RegExp(pattern);
  try{
    if (value.isEmpty) {
      return 'Please enter your password';
    }
    if (!regex.hasMatch(value)) {
      return 'Please enter a valid password';
    }
    return null;
  }
  catch(exception){
    print(e);
  }
}

/// List defines the images used in startscreen to make carousel slider
List imgList = [
  'https://image.shutterstock.com/z/stock-vector-woman-travel-alone-character-cartoon-of-woman-travel-woman-and-suitcase-abstract-nature-border-1424820401.jpg',
  'https://c8.alamy.com/comp/M6P8GW/cartoon-character-design-female-travel-with-luggage-and-passport-on-M6P8GW.jpg',
  'https://st4.depositphotos.com/34034756/38902/v/950/depositphotos_389023924-stock-illustration-woman-man-suitcase-awaits-boarding.jpg'
];

/// img defines the splash screen logo of the app
var img='assets/images/splashlogo.png';