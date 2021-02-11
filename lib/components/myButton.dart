import 'package:book_ticket/common/myColors.dart';
import 'package:flutter/material.dart';

/// MyButton class defines the raised button which is reused
class MyButton extends StatelessWidget {
  MyButton({@required this.onPressed, @required this.title});

  final GestureTapCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: CustomColors.pinkColor,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.55,
        padding: EdgeInsets.all(18.0),
        child: Text(
          title,
          style: TextStyle(
            color: CustomColors.whiteColor,
            fontSize: 18
          ),
          textAlign: TextAlign.center,
        ),
      ),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}
