import 'package:book_ticket/common/myColors.dart';
import 'package:book_ticket/common/myStrings.dart';
import 'package:flutter/material.dart';

class EmailField extends StatefulWidget {
  @override
  _EmailFeildState createState() => _EmailFeildState();
}

class _EmailFeildState extends State<EmailField> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
        validator: validateEmail,
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
        onChanged: (value) {
          if (_formKey.currentState.validate()) {
            _formKey.currentState.save();
          };
          _email = value;
        },
      ),
    );
  }
}
