import 'dart:math';

import 'package:book_ticket/common/myColors.dart';
import 'package:book_ticket/common/myStrings.dart';
import 'package:book_ticket/components/myButtons/myFlatButton.dart';
import 'package:book_ticket/components/myButtons/myRaisedButton.dart';
import 'package:book_ticket/components/sizedBox.dart';
import 'package:book_ticket/components/textFields/emailFeild.dart';
import 'package:book_ticket/components/textFields/passwordField.dart';
import 'package:book_ticket/screens/sign_in/signInScreen.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  // String _email = '';
  // String _password = '';
  String _name = '';

  // void _trySubmitForm() {
  //   final isValid = _formKey.currentState.validate();
  //   if (isValid) {
  //     print("name"+_name);
  //     print("Email"+_email);
  //     print("Password"+_password);
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            padding: const EdgeInsets.only(left: 10, right: 10),
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
                          padding: const EdgeInsets.only(bottom: 15,left: 15, right: 10),
                        ),
                      ],
                    ),
                   Form(
                     key: _formKey,
                     child: Column(
                       children: [
                         ListTile(
                           title: TextFormField(
                             decoration: InputDecoration(
                               labelText: "Name",
                             ),
                             // ignore: missing_return
                             validator: (value){
                               try{
                                 if (value.isEmpty) {
                                   return 'Please enter your name';
                                 }
                                 if (value.length < 3) {
                                   return 'Please enter a valid name';
                                 }
                                 return null;
                               }catch(exception){
                                 print(e);
                               }
                             },
                             onChanged: (value) {
                               if (_formKey.currentState.validate()) {
                                 _formKey.currentState.save();
                               };
                               _name = value;
                             },
                           ),
                         ),
                         ListTile(
                           title: EmailField(),
                         ),
                          ListTile(
                           title: PasswordField(),
                         ),
                       ],
                     ),
                   ),
                    SizeBetween(),
                    SizeBetween(),
                    MyRaisedButton(
                      onPressed: (){
                      },
                      title: MyStrings.signUp,
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
                                color: MyColors.dontHaveAccountColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                          ),
                        MyFlatButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignIn(),),
                              );
                            },
                            title: MyStrings.signin,
                            clrs: MyColors.textSignInColor,
                          btmPadding: 0.0,
                          fontSize: 16,
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyFlatButton(
                            onPressed: (){},
                            title: MyStrings.skipNow,
                            clrs: MyColors.skipNowColor,
                          btmPadding: 30.0,
                          fontSize: 16,
                          ),
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
