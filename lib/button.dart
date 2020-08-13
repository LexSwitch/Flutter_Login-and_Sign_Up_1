import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Function press;
  final Color color;
  final Color textColor;

  const Button({
    @required this.text,
    @required this.textColor,
    @required this.press,
    @required this.color,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 250,
      child: GestureDetector(
        onTap: press,
        child: Material(
          borderRadius: BorderRadius.circular(100),
          elevation: 1,
          color: color,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 18, color: textColor, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
