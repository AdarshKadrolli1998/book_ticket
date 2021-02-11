import 'file:///C:/Users/user1/AndroidStudioProjects/book_ticket/lib/components/sizedBox.dart';
import 'package:book_ticket/common/strings.dart';
import 'package:book_ticket/components/myButton.dart';
import 'package:book_ticket/screens/start/carouselSliderDots.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class StartScreen extends StatefulWidget {
  @override
  StartScreenState createState() => StartScreenState();
}

class StartScreenState extends State<StartScreen> {
  CarouselSlider carouselSlider;
  int cnt = 0;

  @override
  // ignore: missing_return
  Widget build(BuildContext context){
    final width = MediaQuery.of(context).size.width;
    try{
      /// if statement to check the width size of the screen
      if(width > 600){
        return Carousel(250);
      }
      else {
        return Carousel(400);
      }
    }
    catch(e){
      print("Choose a proper screen");
    }
  }

  /// carousel widget that is used to show the carousel slider
  // ignore: non_constant_identifier_names
  Widget Carousel(double ht) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
          carouselSlider = CarouselSlider(
            height: ht,
            enlargeCenterPage: true,
            autoPlay: true,
            reverse: false,
            enableInfiniteScroll: true,
            autoPlayInterval: Duration(seconds: 5),
            scrollDirection: Axis.horizontal,
            onPageChanged:
                (index) {
              setState(() {
                cnt = index;
              });
            },
            items: imgList.map((imgUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Image.network(
                      imgUrl,
                    ),
                  );
                },
              );
            }).toList(),
          ),
              SizeBetween(),
              CarouselSliderDots(current: cnt),
              SizeBetween(),
              MyButton(
                onPressed: (){},
                title: Strings.startBookingButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}