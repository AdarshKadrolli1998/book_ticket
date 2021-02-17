import 'package:book_ticket/common/myColors.dart';
import 'package:flutter/material.dart';

/// MyFlatButton class defines the raised button which can be reused
class MyFlatButton extends StatelessWidget {
  MyFlatButton({@required this.onPressed, @required this.title, @required this.clrs, this.btmPadding, this.fontSize});

  final GestureTapCallback onPressed;
  final String title;
  var clrs;
  var btmPadding;
  var fontSize;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        child: Container(
          padding: EdgeInsets.only(bottom: btmPadding, top: 0, left: 0,right: 0),
            child: Text(title,
              style: TextStyle(
                color: clrs,
                fontWeight: FontWeight.bold,
                fontSize: fontSize
              ),
        ),
        ),
      onPressed: onPressed,
    );
  }
}