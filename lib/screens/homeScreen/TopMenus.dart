import 'package:book_ticket/common/myColors.dart';
import 'package:flutter/material.dart';

class TopMenuTiles extends StatelessWidget {
  String name;
  var iconUrl;
  var clr;

  TopMenuTiles(
      {Key key,
      @required this.name,
      @required this.iconUrl,
      @required this.clr});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 0, right: 5, top: 5, bottom: 5),
            decoration: new BoxDecoration(boxShadow: [
              new BoxShadow(
                color: Colors.white,
                blurRadius: 25.0,
                offset: Offset(0.0, 0.75),
              ),
            ]),
            child: Card(
                color: clr,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                ),
                child: Container(
                  width: 65,
                  height: 65,
                  child: Center(child: Icon(iconUrl,color: MyColors.iconsColor,)),
                )
            ),
          ),
          Text(name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
