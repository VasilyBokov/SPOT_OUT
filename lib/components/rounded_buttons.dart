import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButtonPink extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final num buttonwidth, buttonheight;
  const RoundedButtonPink({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryPinkColor1,
    this.textColor = Colors.white,
    this.buttonwidth,
    this.buttonheight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      width: size.width * buttonwidth,
      height: size.height * buttonheight,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          color: color,
          textColor: Colors.white,
          onPressed: press,
          child: Text(
            text,
            style: kHeadlingTextStyleWhite5,
          ),
        ),
      ),
    );
  }
}

class RoundedButtonBlack extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  final num buttonwidth, buttonheight;
  const RoundedButtonBlack({
    Key key,
    this.text,
    this.press,
    this.color = kPrimaryBlackColor1,
    this.textColor = Colors.white,
    this.buttonwidth,
    this.buttonheight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      width: size.width * buttonwidth,
      height: size.height * buttonheight,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
              side: BorderSide(color: kPrimaryPinkColor1, width: 1)),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          color: color,
          textColor: Colors.white,
          onPressed: press,
          child: Text(
            text,
            style: kHeadlingTextStyleWhite5,
          ),
        ),
      ),
    );
  }
}
