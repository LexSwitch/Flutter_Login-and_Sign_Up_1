import 'package:flutter/material.dart';

class PasswordTextBox extends StatefulWidget {
  PasswordTextBox({
    Key key,
    @required this.passwordVisible,
  }) : super(key: key);

  bool passwordVisible;

  @override
  _PasswordTextBoxState createState() => _PasswordTextBoxState();
}

class _PasswordTextBoxState extends State<PasswordTextBox> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //focusNode: myFocusNode,
      style: TextStyle(),
      obscureText: widget.passwordVisible,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.black,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              widget.passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: Colors.black,
            ),
            onPressed: () {
              setState(() {
                widget.passwordVisible = !widget.passwordVisible;
              });
            },
          ),
          labelText: "Password",
          labelStyle: TextStyle(color: Colors.black),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Color(0XFFFF8057),
            ),
          )),
    );
  }
}
