import 'package:book_ticket/common/myColors.dart';
import 'package:book_ticket/common/myStrings.dart';
import 'package:book_ticket/components/myButtons/myFlatButton.dart';
import 'package:book_ticket/components/myButtons/myRaisedButton.dart';
import 'package:book_ticket/components/sizedBox.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  String _name = '';

  bool _isHidden = true;
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  void _trySubmitForm() {
    final isValid = _formKey.currentState.validate();
    if (isValid) {
      print(_email);
      print(_password);
      print(_name);
    }
  }
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
                             validator: (value){
                               if (value.isEmpty) {
                                 return 'Please enter your name';
                               }
                               if (value.length < 3) {
                                 return 'Please enter a valid name';
                               }
                               return null;
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
                           title: TextFormField(
                             keyboardType: TextInputType.emailAddress,
                             decoration: InputDecoration(
                               labelText: "Email",
                               suffixIcon: InkWell(
                                 child: Icon(
                                   Icons.done,
                                   color: MyColors.mailIconColor,
                                 ),
                               ),
                             ),
                             validator: (value){
                               if (value.isEmpty) {
                                 return 'Please enter your email address';
                               }
                               if (!RegExp( r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                               r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                               r"{0,253}[a-zA-Z0-9])?)*$").hasMatch(value)) {
                                 return 'Please enter a valid email address';
                               }
                               return null;
                             },
                             onChanged: (value) {
                               if (_formKey.currentState.validate()) {
                                 _formKey.currentState.save();
                               };
                               _email = value;
                             },
                           ),
                         ),
                          ListTile(
                           title: TextFormField(
                             obscureText: _isHidden,
                             decoration: InputDecoration(
                               labelText: 'Password',
                               suffixIcon: InkWell(
                                 onTap: _togglePasswordView,
                                 child: Icon(
                                   _isHidden
                                       ? Icons.visibility
                                       : Icons.visibility_off,
                                 ),
                               ),
                             ),
                             validator: (value){
                               if (value.isEmpty) {
                                 return 'Please enter your password';
                               }
                               if (!RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{7,}$').hasMatch(value)) {
                                 return 'Please enter a valid password';
                               }
                               return null;
                             },
                             onChanged: (value) {
                               if (_formKey.currentState.validate()) {
                                 _formKey.currentState.save();
                               };
                               _password = value;
                             },
                           ),
                         ),
                       ],
                     ),
                   ),
                    SizeBetween(),
                    SizeBetween(),
                    MyRaisedButton(
                      onPressed: (){
                        _trySubmitForm();
                      },
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
                        MyFlatButton(
                            onPressed: (){},
                            title: MyStrings.signIn,
                            clrs: MyColors.textSignInColor,
                          btmPadding: 0.0,
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
