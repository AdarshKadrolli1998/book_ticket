import 'package:book_ticket/common/myStrings.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isHidden = true;
  String _password = '';
  final _formKey = GlobalKey<FormState>();

  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: TextFormField(
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
        validator: validatePassword,
        onChanged: (value) {
          if (_formKey.currentState.validate()) {
            _formKey.currentState.save();
          };
          _password = value;
        },
      ),
    );
  }
}
