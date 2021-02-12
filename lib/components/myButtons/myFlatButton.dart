import 'package:book_ticket/common/myColors.dart';
import 'package:flutter/material.dart';

/// MyFlatButton class defines the raised button which can be reused
class MyFlatButton extends StatelessWidget {
  MyFlatButton({@required this.onPressed, @required this.title, @required this.clrs, this.btmPadding});

  final GestureTapCallback onPressed;
  final String title;
  var clrs;
  var btmPadding;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        child: Container(
          padding: EdgeInsets.only(bottom: btmPadding),
            child: Text(title,
              style: TextStyle(
                color: clrs,
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
        ),
        ),
      onPressed: onPressed,
    );
  }
}