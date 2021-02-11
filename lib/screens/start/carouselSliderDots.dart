import 'package:book_ticket/common/myColors.dart';
import 'package:book_ticket/common/strings.dart';
import 'package:flutter/material.dart';

/// CarouselDots class defines the dots in startScreen
class CarouselSliderDots extends StatelessWidget {
  final int current;
  CarouselSliderDots({@required this.current});
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    try{
      for (var i = 0; i < list.length; i++) {
        result.add(handler(i, list[i]));
      }
      return result;
    }catch(e){
      print("length of the list is undefined");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: map<Widget>(imgList, (index, url) {
        return Container(
          width: 10.0,
          height: 10.0,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: current == index ? CustomColors.pinkColor : CustomColors.greyColor,
          ),
        );
      }),
    );
  }
}
