import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final Icon prefixIcon;
  final IconButton suffixIcon;
  final String labeltext;
  final bool obscureText;
  final bool showSuffixIcon;
  final bool enableObscureText;
  final TextInputType inputType;

  const TextInput(
      {Key key,
      @required this.myFocusNode,
      this.enableObscureText,
      this.showSuffixIcon,
      this.obscureText,
      this.suffixIcon,
      @required this.inputType,
      @required this.prefixIcon,
      @required this.labeltext})
      : super(key: key);

  final FocusNode myFocusNode;

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.inputType,
      style: TextStyle(fontSize: 18, color: Colors.black),
      obscureText: false,
      decoration: InputDecoration(
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          labelText: widget.labeltext,
          labelStyle: TextStyle(
              color: widget.myFocusNode.hasFocus
                  ? Color(0XFFFF8057)
                  : Colors.black),
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
