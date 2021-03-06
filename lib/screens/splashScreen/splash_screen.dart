import 'dart:async';
import 'package:book_ticket/common/myColors.dart';
import 'package:book_ticket/common/myStrings.dart';
import 'package:book_ticket/screens/start/startScreen.dart';
import 'package:flutter/material.dart';

/// SplashScreen class that defines the splash screen of the app
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
  }

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), ()=>
        Navigator.push(context, MaterialPageRoute(builder: (context)=>StartScreen()))
    );
  }
   @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.splashBGColor,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage(img),height: 100, width: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(MyStrings.splashNameNavana, style: TextStyle(fontSize: 40, color: MyColors.textNavanaColor, fontWeight: FontWeight.bold),),
                  Text(MyStrings.splashNameAir, style: TextStyle(fontSize: 40, color: MyColors.textAirColor, fontWeight: FontWeight.bold),)
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}