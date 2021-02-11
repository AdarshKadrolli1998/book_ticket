import 'package:book_ticket/common/myColors.dart';
import 'package:book_ticket/common/myStrings.dart';
import 'package:book_ticket/components/myButtons/myRaisedButton.dart';
import 'package:book_ticket/components/sizedBox.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            padding: const EdgeInsets.only(left: 25, right: 25),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizeBetween(),
                    SizeBetween(),
                    SizeBetween(),
                    Row(
                      children: [
                        Container(
                          child: Text(MyStrings.createAccount, style: TextStyle(
                              color: MyColors.createAccountColor,
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                          padding: const EdgeInsets.only(bottom: 15),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child:  TextField(
                            decoration: InputDecoration(
                              labelText: "Name",
                            ),
                          ),
                          width: 360,
                          padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child:  TextField(
                            decoration: InputDecoration(
                              labelText: "Email",
                              suffixIcon: InkWell(
                                child: Icon(
                                    Icons.mail,
                                  color: MyColors.mailIconColor,
                                ),
                              ),
                            ),
                          ),
                          width: 360,
                          padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              suffixIcon: InkWell(
                                child: Icon(
                                  Icons.visibility_off
                                ),
                              ),
                            ),
                          ),
                          width: 360,
                          padding: const EdgeInsets.only(top: 5.0, bottom: 5),
                        ),
                      ],
                    ),
                    SizeBetween(),
                    SizeBetween(),
                    MyRaisedButton(
                      onPressed: (){},
                      title: MyStrings.signUP,
                    ),
                    SizeBetween(),
                    SizeBetween(),
                    SizeBetween(),
                    SizeBetween(),
                    SizeBetween(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                         Text(MyStrings.haveAnAccount,
                            style: TextStyle(
                                color: MyColors.haveAccountColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                          ),
                        FlatButton(
                          onPressed: () {  },
                            child: Container(
                              padding: const EdgeInsets.only(left: 0, right: 10),
                              child: Text(MyStrings.signIn,
                                style: TextStyle(
                                    color: MyColors.textSignInColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16
                                ),
                              ),
                            )
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlatButton(
                            onPressed: () {  },
                          child: Container(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Text(MyStrings.skipNow,
                            style: TextStyle(
                              color: MyColors.skipNowColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                          ),
                        ))
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
