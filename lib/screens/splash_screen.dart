import 'dart:async';

import 'package:book_ticket/comman/myColors.dart';
import 'package:flutter/material.dart';

import 'introduction_Screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
  }

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), ()=>
        Navigator.push(context, MaterialPageRoute(builder: (context)=>CarouselDemo ()))
    );
  }
   @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColors.indigoColor,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/images/splashlogo.png'),height: 100, width: 100,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("navana", style: TextStyle(fontSize: 40, color: CustomColors.whiteColor, fontWeight: FontWeight.bold),),
                  Text(" air", style: TextStyle(fontSize: 40, color: CustomColors.pinkColor, fontWeight: FontWeight.bold),)
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}