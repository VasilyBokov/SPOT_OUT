import 'package:flutter/material.dart';
import '../constants.dart';

class ClickableText extends StatelessWidget {
  final Function press;
  final String text;
  final Color textColor;
  final TextStyle textStyle;
  const ClickableText({
    Key key,
    this.press,
    this.text,
    this.textColor,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: press,
          child: Text(text, style: textStyle),
        ),
      ],
    );
  }
}
