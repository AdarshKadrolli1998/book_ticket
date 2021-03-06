import 'package:book_ticket/common/myColors.dart';
import 'package:book_ticket/components/myButtons/myFlatButton.dart';
import 'package:book_ticket/screens/homeScreen/BottomNavBarWidget.dart';
import 'package:book_ticket/screens/homeScreen/TopMenus.dart';
import 'package:book_ticket/services/loginAuthentication.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
    await googleSignIn.signOut();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding:
                          const EdgeInsets.only(left: 0, top: 15, bottom: 15),
                      child: Row(
                        children: [
                          Text(
                            "Home",
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 110,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          TopMenuTiles(
                              name: "Flight",
                              icon: Icons.airplanemode_active,
                              clr: MyColors.flightColor),
                          TopMenuTiles(
                              name: "Hotel",
                              icon: Icons.hotel,
                              clr: MyColors.hotelColor),
                          TopMenuTiles(
                              name: "Car",
                              icon: Icons.directions_car_outlined,
                              clr: MyColors.carColor),
                          TopMenuTiles(
                              name: "Restaurant",
                              icon: Icons.restaurant,
                              clr: MyColors.restaurantColor),
                          TopMenuTiles(
                              name: "Guide",
                              icon: Icons.directions_run_rounded,
                              clr: MyColors.guideColor),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Text("Best Offers",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Recommended Destinations",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey)),
                            MyFlatButton(
                                onPressed: () { _signOut(); },
                                title: "View All",
                                clrs: Colors.pink,
                              btmPadding: 0.0,
                              fontSize: 14.0,
                            ),
                          ]),
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 155,
                                    width: 265,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: NetworkImage(
                                                "https://images.unsplash.com/photo-1431274172761-fca41d930114?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"))),
                                    child: Container(
                                      padding: EdgeInsets.only(left: 25, top: 115),
                                        child: Text("from \$490 USD",
                                        style: TextStyle(color: Colors.white,fontWeight:
                                        FontWeight.bold,fontSize: 18),)
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 12, 0, 0),
                                    child: Text(
                                      'Thailand',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                    child: Text('Bangkok',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 16)),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 155,
                                  width: 265,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(
                                              "https://images.unsplash.com/photo-1531169628939-e84f860fa5d6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80"))),
                                  child: Container(
                                      padding: EdgeInsets.only(left: 25, top: 115),
                                      child: Text("from \$490 USD",
                                        style: TextStyle(color: Colors.white,fontWeight:
                                        FontWeight.bold,fontSize: 18),)
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 12, 0, 0),
                                  child: Text(
                                    'Paris',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                  child: Text('France',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 16)),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 155,
                                  width: 265,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(
                                              "https://uceap.universityofcalifornia.edu/sites/default/files/marketing-images/program-page-images/made-in-italy-glance.jpg"))),
                                  child: Container(
                                      padding: EdgeInsets.only(left: 25, top: 115),
                                      child: Text("from \$490 USD",
                                        style: TextStyle(color: Colors.white,fontWeight:
                                        FontWeight.bold,fontSize: 18),)
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 12, 0, 0),
                                  child: Text(
                                    'California',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                  child: Text('University',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 16)),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 155,
                                  width: 265,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(
                                              "https://www.travelanddestinations.com/wp-content/uploads/2019/05/Thailand-Beaches-and-Scenery.jpg"))),
                                  child: Container(
                                      padding: EdgeInsets.only(left: 25, top: 115),
                                      child: Text("from \$490 USD",
                                        style: TextStyle(color: Colors.white,fontWeight:
                                        FontWeight.bold,fontSize: 18),)
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 12, 0, 0),
                                  child: Text(
                                    'Srilanka',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                                  child: Text('Colombo',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 16)),
                                ),
                              ],
                            ),
                          ],
                        )),
                    // SizedBox(width: 10,),

                    Container(
                      padding: EdgeInsets.only(top: 10,bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular Place",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          MyFlatButton(
                            onPressed: () { },
                            title: "View All",
                            clrs: Colors.pink,
                            btmPadding: 0.0,
                            fontSize: 14.0,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      height: 175,
                      width: 380,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://media-cdn.tripadvisor.com/media/photo-s/02/27/92/22/lady-liberty-facing-the.jpg"))),
                      // child: Text("from 8999rs"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 155,
                      width: 380,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://www.ytravelblog.com/wp-content/uploads/2018/01/Sightseeing-New-York-City-Sightseeing-pass.jpg"))),
                      // child: Text("from 8999rs"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 155,
                      width: 380,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://www.planetware.com/photos-large/IND/india-top-attractions-harmandir-sahib.jpg"))),
                      // child: Text("from 8999rs"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBarWidget(),
      ),
    );
  }
}
