import 'package:book_ticket/common/myColors.dart';
import 'package:book_ticket/common/myStrings.dart';
import 'package:book_ticket/components/myButtons/myFlatButton.dart';
import 'package:book_ticket/components/myButtons/myRaisedButton.dart';
import 'package:book_ticket/components/sizedBox.dart';
import 'package:book_ticket/components/textFields/emailFeild.dart';
import 'package:book_ticket/components/textFields/passwordField.dart';
import 'package:book_ticket/screens/homeScreen/home.dart';
import 'package:book_ticket/screens/sign_up/signUpScreen.dart';
import 'package:book_ticket/services/loginAuthentication.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignIn> {
  // final _formKey = GlobalKey<FormState>();
  // String _email = '';
  // String _password = '';
  // String _name = '';

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
                    SizeBetween(),
                    SizeBetween(),
                    Row(
                      children: [
                        Container(
                          child: Text(MyStrings.signin, style: TextStyle(
                              color: MyColors.signInColor,
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                          ),
                          ),
                          padding: const EdgeInsets.only(bottom: 15,left: 15, right: 10),
                        ),
                      ],
                    ),
                    ListTile(
                      title: EmailField(),
                    ),
                    ListTile(
                      title: PasswordField(),
                    ),
                    Row(
                      children: [
                        MyFlatButton(
                            onPressed: (){},
                            title: MyStrings.forgotPasswrd,
                            clrs: MyColors.forgotPasswordColor,
                          btmPadding: 0.0,
                        )
                      ],
                    ),
                    SizeBetween(),

                    MyRaisedButton(
                      onPressed: (){
                      },
                      title: MyStrings.signIn,
                    ),
                    SizeBetween(),
                    SizeBetween(),
                    SizeBetween(),
                    Container(
                      // padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(MyStrings.signInWith,
                          style: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.bold
                          ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 25),
                            child: FloatingActionButton(
                                heroTag: "fb button",
                                onPressed: (){},
                              child: Image.network(MyStrings.fbImage)
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 25),
                            child: FloatingActionButton(
                              heroTag: "google button",
                                onPressed: (){
                                  signInWithGoogle().whenComplete(() {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                        return HomeScreen();
                                      }
                                      ),);
                                  });

                                },
                                child: Image.network(MyStrings.googleImage),
                              backgroundColor: MyColors.floatingButtonColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizeBetween(),
                    SizeBetween(),
                    SizeBetween(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(MyStrings.dontHaveAccount,
                          style: TextStyle(
                              color: MyColors.haveAccountColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),
                        ),
                        MyFlatButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUp(),),
                            );
                          },
                          title: MyStrings.signup,
                          clrs: MyColors.textSignUpColor,
                          btmPadding: 0.0,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
