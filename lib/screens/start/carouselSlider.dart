// import 'package:book_ticket/common/strings.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
//
// class CrouselSlider extends StatefulWidget {
//   @override
//   CrouselSliderState createState() => CrouselSliderState(height: null, current: null);
// }
//
// class CrouselSliderState extends State<CrouselSlider> {
//   CrouselSliderState({@required this.current, @required this.height});
//   int current;
//   double height;
//
//
//   @override
//   Widget build(BuildContext context) {
//     return carouselSlider = CarouselSlider(
//       height: height,
//       enlargeCenterPage: true,
//       autoPlay: true,
//       reverse: false,
//       enableInfiniteScroll: true,
//       autoPlayInterval: Duration(seconds: 5),
//       scrollDirection: Axis.horizontal,
//       onPageChanged:
//           (index) {
//         setState(() {
//           current = index;
//         });
//       },
//       items: imgList.map((imgUrl) {
//         return Builder(
//           builder: (BuildContext context) {
//             return Container(
//               width: MediaQuery.of(context).size.width,
//               margin: EdgeInsets.symmetric(horizontal: 5.0),
//               child: Image.network(
//                 imgUrl,
//               ),
//             );
//           },
//         );
//       }).toList(),
//     );
//   }
// }
