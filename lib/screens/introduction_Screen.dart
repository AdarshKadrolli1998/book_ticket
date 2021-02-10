import 'package:book_ticket/components/myButton.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:book_ticket/comman/myColors.dart';

class CarouselDemo extends StatefulWidget {
  CarouselDemo() : super();

  final String title = "Carousel Demo";

  @override
  CarouselDemoState createState() => CarouselDemoState();
}

class CarouselDemoState extends State<CarouselDemo> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://image.shutterstock.com/z/stock-vector-woman-travel-alone-character-cartoon-of-woman-travel-woman-and-suitcase-abstract-nature-border-1424820401.jpg',
    'https://c8.alamy.com/comp/M6P8GW/cartoon-character-design-female-travel-with-luggage-and-passport-on-M6P8GW.jpg',
    'https://st4.depositphotos.com/34034756/38902/v/950/depositphotos_389023924-stock-illustration-woman-man-suitcase-awaits-boarding.jpg'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              carouselSlider = CarouselSlider(
                // options: null,
                height: 400.0,
                enlargeCenterPage: true,
                autoPlay: true,
                reverse: false,
                enableInfiniteScroll: true,
                autoPlayInterval: Duration(seconds: 5),
                scrollDirection: Axis.horizontal,
                onPageChanged:
                    (index) {
                  setState(() {
                    _current = index;
                  });
                },
                items: imgList.map((imgUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: CustomColors.whiteColor,
                        ),
                        child: Image.network(
                          imgUrl,
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: map<Widget>(imgList, (index, url) {
                  return Container(
                    width: 10.0,
                    height: 10.0,
                    margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index ? CustomColors.pinkColor : CustomColors.greyColor,
                    ),
                  );
                }),
              ),
              SizedBox(
                height: 20.0,
              ),
              MyButton(
                onPressed: (){},
                title: "START BOOKING",
              ),
            ],
          ),
        ),
      ),
    );
  }
}